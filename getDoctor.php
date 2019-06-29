<?php
require_once 'core/init.php';
$db=Db::getInstance();
if($_POST['specialization']) 
{

 $res = $db->getPDO();
// $sql=mysqli_query($con,"select doctorName,id from doctors where specilization='".$_POST['specilizationid']."'");
 $sql=$res->prepare("select * from doctor where specialization = ?");
 $sql->execute([$_POST['specialization']]);
 ?>
 <option selected="selected">Select Doctor </option>
  <?php
  while($row=$sql->fetch(PDO::FETCH_ASSOC)){
  echo '<option value="'.$row["doctorname"].'">'.$row["doctorname"].'</option>';
  //return $output;


}
}


if($_POST["doctor"]) 
{

 $res = $db->getPDO();
// $sql=mysqli_query($con,"select doctorName,id from doctors where specilization='".$_POST['specilizationid']."'");
 $sql=$res->prepare("select * from doctor where doctorname = ?");
 $sql->execute([$_POST['doctor']]);

  while($row=$sql->fetch(PDO::FETCH_ASSOC)){
  echo '<option value="'.$row["docfee"].'">'.$row["docfee"].'</option>';
  //return $output;

}
}

?>
