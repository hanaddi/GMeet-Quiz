<!DOCTYPE html>
<?php
require "../mdb.php";

$id_session 	= isset($_REQUEST['id_session'])	? $_REQUEST['id_session']	:0;
$id_quiz 		= isset($_REQUEST['id_quiz'])		? $_REQUEST['id_quiz']		:0;
$id_question 	= isset($_REQUEST['id_question'])	? $_REQUEST['id_question']	:0;

// get question
$query = sprintf("
	SELECT
		A.*, Q.sort,
		K.score_abstain
	FROM `answer` as A
	INNER JOIN `question` as Q
		on Q.id = A.id_question
	INNER JOIN `quiz` as K
		on K.id = A.id_quiz
	where  A.`id_session` = '%s'
	and A.`id_quiz` = '%s'
	order by Q.sort
	", _norm($id_session), _norm($id_quiz),
);
$hasil    = $_db -> query($query);


$participants = [];
$numbers = [];
$score_abstain = 0;
while($row=mysqli_fetch_array($hasil,1)){
	$score_abstain = intval($row['score_abstain']);
	// var_dump($row);

	$idx = $row['person'];
	$no = $row['sort'];
	if(!isset($participants[$idx])){
		$participants[$idx] = [
			'name' => $idx,
			'points' => 0,
			'numbers' => [],
		];
	}
	$participants[$idx]['points'] += intval($row['point']);
	$participants[$idx]['numbers'][$no] = $row['label'];
	if(array_search($no, $numbers) === false){
		$numbers[] = $no;
	}
}

foreach ($participants as &$participant) {
	foreach ($numbers as $no) {
		if(!isset($participant['numbers'][$no])){
			$participant['points'] += $score_abstain;
			$participant['numbers'][$no] = '-';
		}
	}
}

array_multisort(array_column($participants,"points"),SORT_DESC, $participants);
// var_dump($participants);

?>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Quiz <?php echo $question_number; ?></title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="script.js"></script>
	<script>
		var id_question = <?php echo $id_question; ?>;
	</script>
</head>
<body>
	<div class="container">
		<table border="1" class="standings">
			<?php
			$i = 0;
			$prevp = -1;
			echo "<tr>";
			echo "<th>#</th>";
			echo "<th>Name</th>";
			echo "<th>Points</th>";
			foreach ($numbers as $n) {
				echo "<th>{$n}</th>";
			}
			echo "</tr>";


			foreach ($participants as $p) {
				if($p['points'] != $prevp){
					$prevp = $p['points'];
					$i++;
				}
				echo "<tr>";
				echo "<td>{$i}</td>";
				echo "<td>{$p['name']}</td>";
				echo "<td>{$p['points']}</td>";
				foreach ($numbers as $n) {
					echo "<td><div class=\"ans ans{$p['numbers'][$n]}l\">{$p['numbers'][$n]}</div></td>";
				}
				echo "</tr>";
			}

			?>
		</table>
	</div>

	<div class="footerprep"></div>
	<div class="footer">
		<!-- <button>ddd</button> -->
		<!-- <button>ddd</button> -->
		<!-- <button>ddd</button> -->
		<button onclick="window.location='answer.php'+window.location.search">&#x1f50d; Answer</button>
		<button id="b_next" style="display:none;">&#x21E8; Next Question</button>
	</div>

	<script>
		btnNext(id_question);
	</script>
</body>
</html>