<?php
require "mdb.php";
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: X-Requested-With");
//header("Access-Control-Allow-Headers: *");

if(!isset($_REQUEST['id_session']))return;
if(!isset($_REQUEST['id_quiz']))return;
if(!isset($_REQUEST['id_question']))return;

$id_session = $_REQUEST['id_session'];
$id_quiz = $_REQUEST['id_quiz'];
$id_question = $_REQUEST['id_question'];

$query = sprintf("
	SELECT
		S.*, 
		C.id as id_choice, C.label, C.is_correct,
		K.description
	from `session` as S
	inner join `quiz` as K
		on K.id = S.id_quiz
	inner join `question` as Q
		on Q.id_quiz = K.id
	inner join `choice` as C
		on C.id_question = Q.id
	where S.id = '%s'
		and S.id_quiz = '%s'
		and Q.id = '%s'
	", _norm($id_session) , _norm($id_quiz), _norm($id_question),
);
var_dump($query);
$hasil = $_db -> query($query);
if(!$hasil)exit('-');

$str_options = str_shuffle(substr('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 0, $hasil->num_rows));
$options = [];
$i=0;
while($row=mysqli_fetch_array($hasil,1)){
	$label = $str_options[$i];
	$options[$label] = [
		'label'     =>$label,
		'desc'     =>$row['label'],
		'id_choice' =>$row['id_choice'],
		'is_correct' =>$row['is_correct'],
	];
	$i++;
}

echo "options: ".PHP_EOL;
var_dump($options);
$query = sprintf("
	UPDATE `session` set `is_open` = 0;
	UPDATE `session`
	set `choices`='%s', `is_open` = 1, `id_question`='%s'
	where `id` = '%s'
	", _norm(json_encode($options)), _norm($id_question), _norm($id_session)
);
$hasil = $_db ->multi_query($query);
