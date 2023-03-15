<?php
require "mdb.php";
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: X-Requested-With");
//header("Access-Control-Allow-Headers: *");
header('Content-type: application/json');

$data=[];
function no_result($data=null){
	exit(json_encode([
		'data' => $data,
	]));
}

if(!isset($_REQUEST['id_session']))no_result();
if(!isset($_REQUEST['id_quiz']))no_result();
if(!isset($_REQUEST['id_question']))no_result();

$id_session = $_REQUEST['id_session'];
$id_quiz = $_REQUEST['id_quiz'];
$id_question = $_REQUEST['id_question'];

$query = sprintf("
	SELECT A.*
	from `answer` as A
	where A.`id_choice` is not null
	and A.`id_session` = '%s'
	and A.`id_quiz` = '%s'
	and A.`id_question` = '%s'
	order by A.`answered_at` asc, A.`id` asc
	", _norm($id_session), _norm($id_quiz), _norm($id_question),
);
$hasil = $_db -> query($query);
if(!$hasil)no_result();

// $i=0;
while($row=mysqli_fetch_array($hasil,1)){
	$data[] = $row;
	// $i++;
}
exit(json_encode($data));