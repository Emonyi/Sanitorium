<?php
require_once 'core/init.php';

$db = Db::getInstance();

if(isset($_POST['submit']))
{

	// $drugs_prescribed=null;
// $specilization=$_POST['doctor'];
	// $count=0;
 // foreach ($_POST['drug'] as $icon) {
  
 //     if ($count == 0)
 //         $drugs_prescribed.=$icon;
 //     else
 //        $drugs_prescribed.=",".$icon;

 //    $count++;
//}
 	# code...
 	$doctorname=$_POST['doctor'];
	$patientname=$_POST['patient'];
	// $fees=$_POST['fees'];
	$patientage=$_POST['age'];
	$disease=$_POST['disease'];
	$comment = $_POST['comment'];
	$time=$_POST['time'];
	$date=$_POST['date'];

 // echo $drugs_prescribed;
$query=$db->insert('prescription',array(
								 'docname'=>$doctorname,
								'patientname'=>$patientname,
								'age'=>$patientage,
								// 'consultancyfee'=>$fees,
								'disease'=>$disease,
								'date'=>$date,
								'time'=>$time,
								'comment'=>$comment));
// $query=mysqli_query($con,"insert into appointment(doctorSpecialization,doctorId,userId,consultancyFees,appointmentDate,appointmentTime,userStatus,doctorStatus) values('$specilization','$doctorid','$userid','$fees','$appdate','$time','$userstatus','$docstatus')");
	if($query)
	{
		echo "<script>alert('Prescription Successful');</script>";
		// echo "<script>window.open('registerAdmin.php','_self')</script>";
	}


}

function getName($db){
		//$output = "";
		$res = $db->getPDO();
		$sql=$res->prepare("select * from lab");
		$sql->execute();
		//$cnt=1;
		while($row=$sql->fetch(PDO::FETCH_ASSOC)){

			$output .= '<option value="">'.$row["patientname"].'</option>';
		}
		return $output;
}

?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Doctor  | Drug Prescription</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
		<link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
		<script>
function getdoctor(val) {
	$.ajax({
	type: "POST",
	url: "getDoctor.php",
	data:'specialization='+val,
	success: function(data){
		$("#doctor").html(data);
	}
	});
}
</script>	


<script>
	function getage(val) {

		var patient = $("#patient").val();

		$.ajax({
			method: "GET",
			url: "getage.php?patient="+patient,
			success: function(data){
				var d = JSON.parse(data)
				$("#age").val(d.age);
				$('#disease').val(d.disease);
				//alert(data);
			
		}
	});
}
</script>	




	</head>
	<body>
		<div id="app">		

			<div class="app-content">
			
						<!-- <?php //include('include/header.php');?> -->
					
				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
					<div class="wrap-content container" id="container">
						<!-- start: PAGE TITLE -->
						<section id="page-title">
							<div class="row">
								<div class="col-sm-8">
									<h1 class="mainTitle">Drug Prescription Page</h1>
																	</div>
								<ol class="breadcrumb">
									<li>
										<span></span>
									</li>
									<li class="active">
										<span></span>
									</li>
								</ol>
						</section>
						<!-- end: PAGE TITLE -->
						<!-- start: BASIC EXAMPLE -->
						<div class="container-fluid container-fullw bg-white">
							<div class="row">
								<div class="col-md-12">
									
									<div class="row margin-top-30">
										<div class="col-lg-8 col-md-12">
											<div class="panel panel-white">
												<div class="panel-heading">
													<h5 class="panel-title">Drug Prescription</h5>
												</div>
												<div class="panel-body">
								<p style="color:red;"><!-- <?php //echo htmlentities($_SESSION['msg1']);?>
								<?php //echo htmlentities($_SESSION['msg1']="");?> --></p>	
													<form role="form" name="book" method="post" >
														


											<div class="form-group">
															<label for="DoctorSpecialization">
																Doctor Specialization
															</label>
															<select name="Doctorspecialization" id="specialization" class="form-control" onChange="getdoctor(this.value);" required="required">
																<option value="">Select Specialization</option>
																	<?php 
																	//$ret=mysqli_query($con,"select * from doctorspecilization");
																	$ret = $db->query('select DISTINCT specialization from doctor');
																	if(!$ret->count()){
																		echo 'No user';
																	}else{
																		foreach ($ret->results() as $user) {
																			# code...
																			//echo $user-> specialization.'<br>';
																		//}
																	//}
																	// while($row=mysqli_fetch_array($ret))
																	// {
																	?>
																<option value="<?php echo htmlentities($user-> specialization);?>">
																	<?php echo htmlentities($user-> specialization);?>
																</option>
																<?php  }}?>
																
															</select>
														</div>




														<div class="form-group">
															<label for="doctor">
																Doctors
															</label>
						<select name="doctor" class="form-control" id="doctor" required="required">
						<option value="">Select Doctor</option>
						</select>
														</div>





														<div class="form-group">
															<label for="userid">
																patient name
															</label>
														<select name="patient" class="form-control" id="patient" onChange="getage(this.value);" required="required">
															<option>Patient Name</option>
															<?php 
																	//$ret=mysqli_query($con,"select * from doctorspecilization");
																	$ret = $db->query('select * from lab');
																	if(!$ret->count()){
																		echo 'No user';
																	}else{
																		foreach ($ret->results() as $user) {
																			# code...
																			//echo $user-> specialization.'<br>';
																		//}
																	//}
																	// while($row=mysqli_fetch_array($ret))
																	// {
																	?>
																<option value="<?php echo htmlentities($user-> patientname);?>">
																	<?php echo htmlentities($user-> patientname);?>
																</option>
																<?php  }}?>
														</select>
														</div>
														<div class="form-group">
															<label for="age">
																Patient Age
															</label>
											<input class="form-control" name="age" id="age" required="required" readonly>
														</div>
														<div class="form-group">
															<label for="disease">
																Disease Name
															</label>
						<input class="form-control" name="disease" id="disease" required="required" readonly>
														</div>
														<div class="form-group">
															<label for="comment">
																Comments
															</label>
															 <textarea rows="4" cols="83" placeholder="Comments" name="comment"></textarea> 
						
														</div>
														
<div class="form-group">
															<label for="Date">
																Date
															</label>
<input class="form-control datepicker" name="date"  required="required" data-date-format="yyyy-mm-dd">
	
														</div>
														
<div class="form-group">
															<label for="time">
														
														Time
													
															</label>
			<input class="form-control" name="time" id="timepicker1" required="required">eg : 10:00 PM
														</div>														
														
														<button type="submit" name="submit" class="btn btn-o btn-primary">
															Submit
														</button>
														<a href="doctorDashboard.php"><button type="submit" name="submit" class="btn btn-o btn-primary">
															Sign Out
														</button></a>
													</form>
												</div>
											</div>
										</div>
											
											</div>
										</div>
									
									</div>
								</div>
							
						<!-- end: BASIC EXAMPLE -->
			
					
					
						
						
					
						<!-- end: SELECT BOXES -->
						
					</div>
				</div>
			</div>
			<!-- start: FOOTER -->
	
		
			<!-- start: SETTINGS -->
	
			
			<!-- end: SETTINGS -->
		</div>
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/modernizr/modernizr.js"></script>
		<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="vendor/switchery/switchery.min.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
		<script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
		<script src="vendor/autosize/autosize.min.js"></script>
		<script src="vendor/selectFx/classie.js"></script>
		<script src="vendor/selectFx/selectFx.js"></script>
		<script src="vendor/select2/select2.min.js"></script>
		<script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		<script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: CLIP-TWO JAVASCRIPTS -->
		<script src="assets/js/main.js"></script>
		<!-- start: JavaScript Event Handlers for this page -->
		<script src="assets/js/form-elements.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});

			$('.datepicker').datepicker({
    format: 'yyyy-mm-dd',
    startDate: '-3d'
});
		</script>
		  <script type="text/javascript">
            $('#timepicker1').timepicker();
        </script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>

	</body>
</html>
