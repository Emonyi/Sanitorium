<?php
require_once 'core/init.php';

$db = Db::getInstance();
	$output = "";
	echo $_POST['id'];
		$res = $db->getPDO();
		//$cnt=1;

		if(isset($_POST['id'])){

			if($_POST['id'] != ''){
				
				$sql=$res->prepare("select * from Patient where id = '".$_POST['id']."'");
				
			}else{
				$sql=$res->prepare("select * from Patient");
			}
			$sql->execute();
			while($row=$sql->fetch(PDO::FETCH_ASSOC)){

			$output .= '<option value="">'.$row["fullname"].'</option>';
			}
			echo $output;
		}
		echo 'Noo';

		
?>
