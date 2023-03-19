<!DOCTYPE html>
<?php
require "../mdb.php";

$id_session 	= isset($_REQUEST['id_session'])	? $_REQUEST['id_session']	:0;
$id_quiz 		= isset($_REQUEST['id_quiz'])		? $_REQUEST['id_quiz']		:0;
$id_question 	= isset($_REQUEST['id_question'])	? $_REQUEST['id_question']	:0;

// get question
$query = sprintf("
	SELECT
		Q.*,
		C.`id` as id_choice, C.`is_correct`, C.`label`,
		S.`choices`, S.`is_open`
	from `question` as Q
	inner join `choice` as C
		on C.`id_question` = Q.`id`
	left join `session` as S
		on S.`id_question` = Q.`id`
		and S.`id_quiz` = Q.`id_quiz`
	where Q.`id` = '%s'
	and Q.`id_quiz` = '%s'
	", _norm($id_question), _norm($id_quiz),
);
$hasil    = $_db -> query($query);
$question = null;
$answer_exp = '-';
$question_number = 0;
$options  = null;
$is_session_open  = false;
$choices  = [];
$answer_exp = null;

// $i=0;
while($row=mysqli_fetch_array($hasil,1)){
	if(is_null($question)){
		$question = $row['question'];
		$answer_exp = $row['answer_exp'];
		$question_number = $row['sort'];
		$is_session_open = intval($row['is_open']);
	}
	if(is_null($options) && !is_null($row['choices'])){
		$options = json_decode($row['choices'], 1);
	}
	$choices[$row['id_choice']] = [
		'id' 	=> $row['id_choice'],
		'label' => $row['label'],
		'is_correct' => intval($row['is_correct']),
	];
	// var_dump($row);
	// $i++;
}
// var_dump($choices);
// var_dump($options);

?>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Quiz <?php echo $question_number; ?></title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="script.js"></script>
	<script>
		// window.resizeTo(840,480);
		// window.resizeTo(840,560);
		var options 	= <?php echo json_encode($options); ?>;
		var choices 	= <?php echo json_encode(array_values($choices)); ?>;
		var id_quiz 	= <?php echo $id_quiz; ?>;
		var id_question = <?php echo $id_question; ?>;
		var id_session  = <?php echo $id_session; ?>;
		var is_session_open  = <?php echo $is_session_open; ?>;

		function refreshData(){
			fetch(
				`../j.getanswer.php?id_session=${id_session}&id_quiz=${id_quiz}&id_question=${id_question}`,
				{ signal: AbortSignal.timeout(5000) }
			)
			.then(response 	=> response.json())
			.then(data 		=> {
				let el_peoples = document.querySelectorAll('.people[data-choice]');
				for(let el_people of el_peoples){
					let choice = el_people.dataset['choice'];
					el_people.innerHTML = '';
					let data1 = data.filter(el=>el.id_choice - choice == 0);
					let extraPeople = 0;
					if(data1.length>5){
						let toDisplay = 3;
						extraPeople = data1.length - toDisplay;
						data1 = data1.slice(0, toDisplay);
					}
					data1.map(el=>{
						let div = document.createElement('div');
						div.innerText = el.person;
						el_people.appendChild(div);
					});
					if(extraPeople>0){
						let div = document.createElement('div');
						div.innerText = `and ${extraPeople} others`;
						div.style.fontSize = '100%';
						div.style.backgroundColor = 'transparent';
						el_people.appendChild(div);
					}
				}
				if(options != null && is_session_open){
					// window.setTimeout(refreshData, 1000)
				}
			})
			.catch(error	=> {
				if(options != null && is_session_open){
					// window.setTimeout(refreshData, 1000)
				}
			});
		}

		window.onload = ev =>{
			if(options){
				let el_options = document.querySelectorAll('.option[data-label]');
				for(let el_option of el_options){
					el_option.style.order = el_option.dataset['label'].charCodeAt();
				}
				// if(!is_session_open){
				// 	for(let el of el_options){
				// 		el.querySelector('.l').outerHTML = '';
				// 	}
				// }
			}
			choices.filter(el=>el.is_correct).map(el=>{
				let c = document.querySelector('.option[data-id="'+el.id+'"] .text')
				if(c){
					// c.style.transitionDelay = '1s'
					c.style.transitionDuration = '0.5s'
					c.style.backgroundColor = '#00FF00'
				}
			})
			fetch('../j.closesession.php?id_session='+id_session)
			.then(e=>{
				try{document.querySelector('.modal').style.display="none"}catch(e){}
				refreshData();
			})

			f_storage.push(function(ev){
				console.log(ev);
			});
		};
	</script>
</head>
<body>
	<div class="container">
		<div class="question">
			<div class="title"><b>Question number <?php echo $question_number; ?></b></div>
			<?php echo $question; ?>
		</div>

		<!-- CHOICES -->
		<div class="options">
			<?php
				if(!is_null($options)){
					foreach ($options as $option) {
						echo "<div class=\"option\" data-id=\"{$option['id_choice']}\" data-label=\"{$option['label']}\"><div class=\"text\"><div class=\"l\">{$option['label']}</div>{$option['desc']}</div><div data-choice=\"{$option['id_choice']}\" class=\"people\"></div></div>";
					}
				}else{
					foreach ($choices as $choice) {
						echo "<div class=\"option\" data-id=\"{$choice['id']}\"><div class=\"text\">{$choice['label']}</div><div data-choice=\"{$choice['id']}\" class=\"people\"></div></div>";
					}
				}
			?>
		</div>

		<!-- Explanation -->
		<div class="question">
			<?php echo $answer_exp; ?>
		</div>

	</div>

	<div class="footer">
		<button onclick="window.location='table.php'+window.location.search">&#x1f3c6; Standings</button>
		<button id="b_next" style="display:none;">&#x21E8; Next Question</button>
	</div>

	<script>
		btnNext(id_question);
	</script>

	<div class="modal"></div>
</body>
</html>