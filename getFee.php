<?php  
require_once 'core/init.php';
$db=Db::getInstance();

// if(!empty(Input::get("doctorname"))) 
// {

 $row = $db->get('doctor',array('docfee','=',Input::get("docfee")));
 if($row->count()){
 	echo 'No such user';
 }
 else{
 	//echo 'ok';
 	foreach ($row->results() as $user) {
 		# code...
 		echo  $user->docfee;
 		echo 'ok';
 	}
 	//echo 'ok';
 }

	
// }else{
// 	echo 'Noo';
// }
?>