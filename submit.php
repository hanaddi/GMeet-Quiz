<?php
require "mdb.php";
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: X-Requested-With");
//header("Access-Control-Allow-Headers: *");

if(!isset($_POST['ref']))return;
if(!isset($_POST['label']))return;
if(!isset($_POST['time']))return;
if(!isset($_POST['name']))return;
if(!isset($_POST['content']))return;

$query = sprintf("INSERT INTO `chat_log` (`label`,`ref`, `time`, `name`, `content`) VALUES ('%s', '%s', '%s', '%s', '%s')", _norm($_POST['label']), _norm($_POST['ref']), _norm($_POST['time']), _norm($_POST['name']), _norm($_POST['content']) );


$hasil = $_db -> query($query);
if(!$hasil){
	// failed
	exit($_db->error);
	exit("can't save");
}

// success
$content = $_POST['content'];
$name = $_POST['name'];
$match = preg_match('/^[^a-z0-9]*([a-z])[^a-z0-9]*$/i', $content, $result);

if(!isset($result[1])){
	exit("not answering");
}
$answer = strtoupper($result[1]);

$query = sprintf("
	SELECT
		S.*,
		K.description, K.score_correct, K.score_wrong, K.score_abstain
	from `session` as S
	inner join `quiz` as K
		on K.id = S.id_quiz
	inner join `question` as Q
		on Q.id = S.id_question
	where S.is_open=1
	limit 1
	"
);
$hasil = $_db -> query($query);
if(!$hasil)exit('-');
$session=mysqli_fetch_array($hasil,1);
if(!$session)exit('no session');
$options = json_decode($session['choices'], 1);
if(!isset($options[$answer])){
	exit("option not exist");
}
$ans_obj = $options[$answer];
$ans_label = 'X';
$ans_point = $session['score_wrong'];
if($ans_obj['is_correct']){
	$ans_label='O';
	$ans_point = $session['score_correct'];
}
var_dump([$ans_obj, $ans_label]);

$query = sprintf("
	INSERT INTO `answer` (`id`, `id_session`, `id_quiz`, `id_question`, `person`, `label`, `point`, `answered_at`, `id_choice`)
	VALUES (NULL, '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')
	ON DUPLICATE KEY UPDATE
		`id_session` = '%s',
		`id_quiz` = '%s',
		`id_question` = '%s',
		`person` = '%s',
		`label` = '%s',
		`point` = '%s',
		`answered_at` = '%s',
		`id_choice` = '%s'
	",
	$session['id'], $session['id_quiz'], $session['id_question'], _norm($name), $ans_label, $ans_point, time(), _norm($ans_obj['id_choice']),
	$session['id'], $session['id_quiz'], $session['id_question'], _norm($name), $ans_label, $ans_point, time(), _norm($ans_obj['id_choice']),
);
$hasil = $_db -> query($query);






// echo json_encode([$query]);