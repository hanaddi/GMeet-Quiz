<?php
require "mdb.php";
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: X-Requested-With");
//header("Access-Control-Allow-Headers: *");
// header('Content-type: application/json');

$key	= isset($_REQUEST['key'])	? $_REQUEST['key']	 :0;
$value 	= isset($_REQUEST['value'])	? $_REQUEST['value'] :0;

?>

<script>
	var key 	= "<?php echo $key; ?>";
	var value	= "<?php echo $value; ?>";

	if(key){
		window.localStorage.setItem(key, value);
	}

</script>