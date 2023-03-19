<!DOCTYPE html>
<?php
require "../mdb.php";

// $id_session 	= isset($_REQUEST['id_session'])	? $_REQUEST['id_session']	:0;
$id_quiz 		= isset($_REQUEST['id_quiz'])		? $_REQUEST['id_quiz']		:0;
// $id_question 	= isset($_REQUEST['id_question'])	? $_REQUEST['id_question']	:0;

$query = sprintf("
	SELECT
		K.*
	from `quiz` as K
	where `id` = '%s'
	", _norm($id_quiz)
);
$hasil    = $_db -> query($query);

$quiz = mysqli_fetch_array($hasil,1);

?>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Quiz <?php echo $quiz['title']; ?></title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="script.js"></script>
</head>
<body>
	<div class="container" style="text-align:center;padding-top: 50px;">
		<div class="title"><h1><?php echo $quiz['title']; ?></h1></div>
		<?php echo $quiz['description']; ?>

		<div style="margin-top: 50px;">
			<div class="title"><b>Scoring</b></div>
			<div style="display: flex;justify-content: center;">
				<div style="margin:5px;padding:5px;border-radius: 4px;background-color: #7f7;">Correct:   <?php echo $quiz['score_correct']; ?></div>
				<div style="margin:5px;padding:5px;border-radius: 4px;background-color: #f99;">Incorrect: <?php echo $quiz['score_wrong']; ?></div>
				<div style="margin:5px;padding:5px;border-radius: 4px;background-color: #ddd;">Abstain:   <?php echo $quiz['score_abstain']; ?></div>
			</div>
		</div>

	</div>

	<div class="footer">
		<button id="b_start" style="display:none;">&#x1f3ae; START &#x1f3ae;</button>
	</div>

	<script>
		btnStart();
	</script>
</body>
</html>