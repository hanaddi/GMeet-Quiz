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

if(!isset($_REQUEST['id_quiz']))no_result();

$id_quiz = $_REQUEST['id_quiz'];

$query = sprintf("
	INSERT INTO `session` (`id`, `id_quiz`, `id_question`, `is_open`, `choices`)
	VALUES (NULL, '%s', NULL, '0', '')
	", _norm($id_quiz),
);
$hasil = $_db -> query($query);
no_result($hasil);
