<?php
require_once 'core/init.php';
$db=Db::getInstance();
if($_POST['patient_id']) 
{

 $res = $db->getPDO();
// $sql=mysqli_query($con,"select doctorName,id from doctors where specilization='".$_POST['specilizationid']."'");
 $sql=$res->prepare("select * from Patient where id = ?");
 $sql->execute([$_POST['patient_id']]);

  $row=$sql->fetch(PDO::FETCH_ASSOC);
  echo '<option value="'.$row["fullname"].'">'.$row["fullname"].'</option>';
  //return $output;

}

?>
