<?php
require_once 'core/init.php';

$db = Db::getInstance();
if(!empty($_GET["patientid"])) 
{

 $res = $db->getPDO();
// $sql=mysqli_query($con,"select doctorName,id from doctors where specilization='".$_POST['specilizationid']."'");
 $sql=$res->prepare("select * from Patient where id = ?");
 $sql->execute([$_GET['patientid']]);
 
 // $result='Age:';
 $row=$sql->fetch(PDO::FETCH_ASSOC);
 
 echo '{"name" : "'.$row["fullname"].'","age":"'.$row["age"].'"}'; 


}

?>
