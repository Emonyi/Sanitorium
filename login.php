<?php 
	require_once 'core/init.php';
	if(Input::exists()){
		//echo 'success';
		if(Token::check(Input::get('token'))){
			$validate = new Validate();
			$validation = $validate->check($_POST,array(
				'name' => array('required' => true),
				'password' => array('required' => true)
			));
			//check if the validation passes
			if($validation->passed()){
				//log user in
				if(Input::get('submit')){
					$selected_val = $_POST['person'];  // Storing Selected Value In Variable
				//echo "You have selected :" .$selected_val;  // Displaying Selected Value
				switch ($selected_val) {
		    		case 'admin':
		        		$admin = new Admin();
						//$remember = (Input::get('remember')==='on') ? true:false;
						$login = $admin->login(Input::get('name'),Input::get('password'),$remember);

						//check if the login is successful
						if($login){
							//echo 'success';
							echo "<script>window.open('adminPanel.php','_self')</script>";
						}
						else{
							echo '<p>Sorry,Logging in failed</p>';
						}
		        	break;

		        	case 'doctor':
		        		echo "<script>window.open('doctorDashboard.php','_self')</script>";
		        	break;

		        	case 'reception':
		        		echo "<script>window.open('registerAdmin.php','_self')</script>";
		        	break;

		        	case 'patient':
		        		
		        		$patient = new Patient();
						$remember = (Input::get('remember')==='on') ? true:false;
						$login = $patient->login(Input::get('name'),Input::get('password'));
						//var_dump($login);

						//check if the login is successful
						if($login){
							//echo 'success';
							echo "<script>window.open('dashbord.php','_self')</script>";
						}
						else{
							echo '<p>Sorry,Logging in failed</p>';
						}
		        	break;
				
			}
		}
		}else{
				foreach ($validation->errors() as $errror) {
					# code...
					echo $errror,'<br>';
				}
			}
		}
	}
 ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Login section</title>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
	<form action="" method="post">
	<div class="login-box">
	<h1>HOSPITAL MANAGEMENT SYSTEM</h1>
	<div class="textbox">
		<i class="fa fa-user" aria-hidden="true"></i>
		<input type="text" placeholder="Enter Username" name="name" value="">
	</div>	

	<div class="textbox">
		<i class="fa fa-lock" aria-hidden="true"></i>
		<input type="password" placeholder="Enter Password" name="password" value="">
	</div>	
		<div class="field">
			<label for="remember">
				<input type="checkbox" name="remember" id="remember">Remember User
			</label>
		</div>
		<input type="hidden" name="token" value="<?php echo Token::generate();?>">
		<select name="person">
			<option value="select">..Select..</option>
			<option value="admin">Admin</option>
			<option value="doctor">Doctor</option>
			<option value="reception">Receptionist</option>
			<option value="patient">Patient</option>
		</select>
		<input type="submit" name="submit" value="Sign in" />
		<?php echo '<p>For new Users you need to<a href="registerAdmin.php"> Register</a></p>';  ?>
	</div>
	</form>
	<!-- <?php
		
	?> -->

</body>
</html>
