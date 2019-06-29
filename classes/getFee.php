<?php  

$db=Db::getInstance();

if(!empty($_POST["doctorname"])) 
{

 $row = $db->query("select docfee from doctor where id '".$_POST['doctorname']."'");

 if($row->error()){
 	echo 'No such user';
 }

	
}
?>