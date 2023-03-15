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

$id_session = $_REQUEST['id_session'];

$query = sprintf("
	UPDATE `session` set `is_open`=0 where `id`='%s'
	", _norm($id_session)
);
$hasil = $_db -> query($query);
no_result($hasil);
