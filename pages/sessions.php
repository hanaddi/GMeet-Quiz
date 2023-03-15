<?php
require "../mdb.php";
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: X-Requested-With");
//header("Access-Control-Allow-Headers: *");

$query = sprintf("
	SELECT
		S.*, 
		K.description, K.title, K.score_correct, K.score_wrong, K.score_abstain, K.id as qid
	from `quiz` as K
	left join `session` as S
		on K.id = S.id_quiz
	"
);
$hasil = $_db -> query($query);
if(!$hasil)exit('-');

echo "<h2>Manage Sessions</h2>";
echo "<h2>Sessions</h2>";
echo "<table border=\"1\" style=\"border-collapse:collapse\">";
echo "<tr>";
echo "<th>No.</th>";
echo "<th>Session</th>";
echo "<th>Quiz</th>";
echo "<th>Is open</th>";
echo "<th>title</th>";
echo "<th>action</th>";
echo "</tr>";

$i=0;
$quizs = [];
while($row=mysqli_fetch_array($hasil,1)){
	$quizs[$row['id_quiz']] = $row;
	echo "<!-- ";
	var_dump($row);
	echo " -->";
	if(is_null($row['id_quiz']))continue;
	$i++;
	echo "<tr>";
	echo "<td>{$i}</td>";
	echo "<td>{$row['id']}</td>";
	echo "<td>{$row['id_quiz']}</td>";
	echo "<td>{$row['is_open']}</td>";
	echo "<td>{$row['title']}</td>";

	echo "<td>";
	echo "<a href=\"session.php?id_session={$row['id']}\">details</a>";
	echo "</td>";

	echo "</tr>";

}
echo "</table>";



// var_dump($quizs);

// echo "<hr/>";
// echo "<hr/>";

echo "<h2>Quizs</h2>";
echo "<table border=\"1\" style=\"border-collapse:collapse\">";
echo "<tr>";
echo "<th>Quiz</th>";
echo "<th>title</th>";
echo "<th>score_correct</th>";
echo "<th>score_wrong</th>";
echo "<th>score_abstain</th>";
echo "<th>action</th>";
echo "</tr>";
foreach ($quizs as $quiz) {
	echo "<tr>";
	echo "<td>{$quiz['qid']}</td>";
	echo "<td>{$quiz['title']}</td>";
	echo "<td>{$quiz['score_correct']}</td>";
	echo "<td>{$quiz['score_wrong']}</td>";
	echo "<td>{$quiz['score_abstain']}</td>";
	echo "<td>";
	echo "<button onclick=\"createSession({$quiz['qid']})\">create session</button>";
	echo "</td>";
	echo "</tr>";
}
echo "</table>";




// $query = sprintf("
// 	UPDATE `session` set `is_open` = 0;
// 	UPDATE `session`
// 	set `choices`='%s', `is_open` = 1, `id_question`='%s'
// 	where `id` = '%s'
// 	", _norm(json_encode($options)), _norm($id_question), _norm($id_session)
// );
// $hasil = $_db ->multi_query($query);


?>
<script>
function createSession(qid){
	fetch('../j.createsession.php?id_quiz=' + qid)
	.then(e=>window.location=window.location)
}
</script>