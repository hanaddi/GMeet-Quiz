<?php
require "../mdb.php";
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: X-Requested-With");
//header("Access-Control-Allow-Headers: *");

if(!isset($_REQUEST['id_session']))return;
$id_session = $_REQUEST['id_session'];


$query = sprintf("
	SELECT
		S.*, 
		K.description, K.title, K.score_correct, K.score_wrong, K.score_abstain, K.id as qid
	from `quiz` as K
	left join `session` as S
		on K.id = S.id_quiz
	where S.`id` = '%s'
	", _norm($id_session)
);
$hasil = $_db -> query($query);
if(!$hasil)exit('-');

echo "<h2>Manage Session</h2>";
echo "<a href=\"sessions.php\">sessions</a>";
echo "<h2>Session</h2>";
echo "<table border=\"1\" style=\"border-collapse:collapse\">";
echo "<tr>";
echo "<th>Session</th>";
echo "<th>Quiz</th>";
echo "<th>Question</th>";
echo "<th>Is open</th>";
echo "<th>title</th>";
echo "<th>action</th>";
echo "</tr>";

while($row=mysqli_fetch_array($hasil,1)){

	echo "<tr>";
	echo "<td>{$row['id']}</td>";
	echo "<td>{$row['id_quiz']}</td>";
	echo "<td>{$row['id_question']}</td>";
	echo "<td>{$row['is_open']}</td>";
	echo "<td>{$row['title']}</td>";

	echo "<td>";
	echo "<button onclick=\"closeSession({$row['id']})\">close</button>";
	echo "</td>";

	echo "</tr>";
	$session = $row;
}
echo "</table>";

$query = sprintf("
	SELECT
		Q.*, C.*, C.id as id_choice
	from `question` as Q
	left join `choice` as C
		on Q.id = C.id_question
	where Q.`id_quiz` = '%s'
	order by Q.`sort`
	", _norm($session['id_quiz'])
);
$hasil = $_db -> query($query);
$questions = [];
while($row=mysqli_fetch_array($hasil,1)){
	if(!isset($questions[$row['id_question']])){
		$questions[$row['id_question']] = [
			'id_question' => $row['id_question'],
			'sort' => $row['sort'],
			'question' => $row['question'],
			'choices' => [],
		];
	}
	$questions[$row['id_question']]
			  ['choices']
			  [$row['id_choice']]
	= [
		'id_choice' => $row['id_choice'],
		'label' => $row['label'],
		'is_correct' => $row['is_correct'],
	];
}

// var_dump($questions);

echo "<h2>Questions</h2>";
echo "<table border=\"1\" style=\"border-collapse:collapse\">";
echo "<tr>";
echo "<th>sort</th>";
echo "<th>id</th>";
echo "<th>question</th>";
echo "<th>options</th>";
echo "<th>action</th>";
echo "</tr>";

$q_order = [];
$q_previd = -1;
foreach($questions as $question){
	$q_order[$question['id_question']] = [
		'no' => $question['sort'],
	];
	if(isset($q_order[$q_previd])){
		$q_order[$q_previd]					['next'] = $question['id_question'];
		$q_order[$question['id_question']]	['prev'] = $q_previd;
	}
	$q_previd = $question['id_question'];


	if($session['is_open'] && $question['id_question'] == $session['id_question']){
		echo "<tr style=\"background-color:lime\">";
	}else{
		echo "<tr>";
	}
	echo "<td>{$question['sort']}</td>";
	echo "<td>{$question['id_question']}</td>";
	echo "<td>{$question['question']}</td>";

	echo "<td><ul>";
	foreach ($question['choices'] as $choice) {
		echo "<li>{$choice['id_choice']} . {$choice['is_correct']} . {$choice['label']}</li>";
	}
	echo "</ul></td>";

	echo "<td>";
	echo "<button onclick=\"openQuestion({$session['id']}, {$session['id_quiz']}, {$question['id_question']})\">open</button> ";
	echo "<button onclick=\"focusQuestion({$session['id']}, {$session['id_quiz']}, {$question['id_question']})\">[] focus</button> ";
	echo "<button onclick=\"focusQuestion({$session['id']}, {$session['id_quiz']}, {$question['id_question']}, Math.random())\">[] force focus</button> ";
	echo "</td>";

	echo "</tr>";
}
echo "</table>";

?>
<script>

const pageBaseURL='http://localhost:8880/gmeetchat/pages/';
const ls_slide = "gmeet_chat_slide";
const ls_questions = "gmeet_chat_questions";

function openQuestion(sid, kid, qid){
	fetch('../opensession.php?id_session='+sid+'&id_quiz='+kid+'&id_question='+qid)
	.then(e=>window.location=window.location)
}

function closeSession(sid){
	fetch('../j.closesession.php?id_session='+sid)
	.then(e=>window.location=window.location)
}

function focusQuestion(sid,kid,qid,seed=0){
	setSlide('question.php?id_session='+sid+'&id_quiz='+kid+'&id_question='+qid+'&random='+seed);
}

function setSlide(file='question.php'){
	let url = pageBaseURL + file;
	window.localStorage.setItem(ls_slide, url);
	window.location=window.location;
}

window.localStorage.setItem(ls_questions, JSON.stringify(<?php echo json_encode($q_order);?>));
</script>