<?php
require_once 'core/init.php';

$db = Db::getInstance();
if(!empty($_GET["patient"])) 
{

 $res = $db->getPDO();
// $sql=mysqli_query($con,"select doctorName,id from doctors where specilization='".$_POST['specilizationid']."'");
 $sql=$res->prepare("select * from lab where patientname = ?");
 $sql->execute([$_GET['patient']]);
 
 // $result='Age:';
 $row=$sql->fetch(PDO::FETCH_ASSOC);
 
 echo '{"age" : "'.$row["age"].'","disease":"'.$row["diseasename"].'"}'; 

}

?>
