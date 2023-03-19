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
		and S.`id` = '%s'
		and S.`id_quiz` = Q.`id_quiz`
	where Q.`id` = '%s'
	and Q.`id_quiz` = '%s'
	", _norm($id_session), _norm($id_question), _norm($id_quiz),
);
$hasil    = $_db -> query($query);
$question = null;
$question_number = 0;
$options  = null;
$is_session_open  = false;
$choices  = [];

// $i=0;
// while($row=mysqli_fetch_array($hasil,1)){
// 	// var_dump($row);
// 	if(is_null($question)){
// 		$question = $row['question'];
// 		$question_number = $row['sort'];
// 		$is_session_open = intval($row['is_open']);
// 	}
// 	if(is_null($options) && !is_null($row['choices'])){
// 		$options = json_decode($row['choices'], 1);
// 	}
// 	$choices[$row['id_choice']] = [
// 		'id' 	=> $row['id_choice'],
// 		'label' => $row['label'],
// 		'is_correct' => intval($row['is_correct']),
// 	];
// 	// var_dump($row);
// 	// $i++;
// }
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
		// var options 	= <?php echo json_encode($options); ?>;
		// var id_quiz 	= <?php echo $id_quiz; ?>;
		// var id_question = <?php echo $id_question; ?>;
		// var id_session  = <?php echo $id_session; ?>;
		// var is_session_open  = <?php echo $is_session_open; ?>;

	</script>
</head>
<body>
	<div class="container">
		<div class="question">
			<div class="title"><b>Question number <?php echo $question_number; ?></b></div>
			<?php echo $question; ?>
		</div>
	</div>

	<div class="footer">
		<!-- <button>ddd</button> -->
		<!-- <button>ddd</button> -->
		<!-- <button>ddd</button> -->
		<button onclick="window.location='answer.php'+window.location.search">&#x21E8; Next</button>
	</div>
</body>
</html>