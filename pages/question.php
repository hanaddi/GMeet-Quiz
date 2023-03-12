<!DOCTYPE html>
<?php
require "../mdb.php";

$id_session 	= isset($_REQUEST['id_session'])	? $_REQUEST['id_session']	:null;
$id_quiz 		= isset($_REQUEST['id_quiz'])		? $_REQUEST['id_quiz']		:null;
$id_question 	= isset($_REQUEST['id_question'])	? $_REQUEST['id_question']	:null;

// get question
$query = sprintf("
	SELECT
		Q.*,
		C.`id` as id_choice, C.`is_correct`, C.`label`,
		S.`choices`
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
$options  = null;
$choices  = [];

// $i=0;
while($row=mysqli_fetch_array($hasil,1)){
	if(is_null($question)){
		$question = $row['question'];
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
var_dump($options);

?>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<style>
.container{
}
.container .question{
	width: 80%;
	margin: auto;
	background-color: red;
	padding: 10px;
}

.container .options{
	display: flex;
	flex-wrap:wrap;
	justify-content: center;
}

.container .options .option{
	flex-basis: 40%;
	margin: 10px;
}
.container .options .option .text{
	flex-basis: 40%;
	background-color: red;
	margin: 5px;
	padding: 5px;
}
	</style>
	<script>
		var options = <?php echo json_encode($options); ?>;
		window.onload = ev =>{
			if(options){
				let el_options = document.querySelectorAll('.option[data-label]');
				for(let el_option of el_options){
					console.log(el_option.dataset['label']);
				}
			}
		};
	</script>
</head>
<body>
	<div class="container">
		<div class="question"><?php echo $question; ?></div>

		<!-- CHOICES -->
		<div class="options">
			<?php
				if(!is_null($options)){
					foreach ($options as $option) {
						echo "<div class=\"option\" data-label=\"{$option['label']}\"><div class=\"text\">{$option['desc']}</div><div class=\"people\">ds</div></div>";
					}
				}else{
					foreach ($choices as $choice) {
						echo "<div class=\"option\" data-id=\"{$choice['id']}\"><div class=\"text\">{$choice['label']}</div><div class=\"people\">ds</div></div>";
					}
				}
			?>
		</div>
	</div>
</body>
</html>