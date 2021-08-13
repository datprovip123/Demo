
<!DOCTYPE html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/dangky.css" />
    </head>
	<form method="post">
	<div class="loginbox">
        <h1>Register Here</h1>
            <p>Username</p>
            <input type="text" name="UserName" placeholder="Enter Username">
            <p>Password</p>
            <input type="password" name="Password" placeholder="Enter Password">
			<p>Confirm password</p>
            <input type="text" name="confirm" placeholder="Enter password again">
			<p>Phone Number</p>
            <input type="text" name="PhoneNumber" placeholder="Enter Phone Number">
			<p>Full Name</p>
            <input type="text" name="FullName" placeholder="Enter Full Name">
			<p>Email</p>
            <input type="text" name="Email" placeholder="Enter Email">
            <input type="submit" name="register" value="Register">
            <a href="login.php">Already have account?</a>   
    </div>
	</form>



    <?php

	include("connect.php");
	if (isset($_POST['register'])) {
	
		$UserName=$_POST['UserName'];
		$Password=$_POST['Password'];
		$PhoneNumber=$_POST['PhoneNumber'];
		$FullName=$_POST['FullName'];
		$Email=$_POST['Email'];
      
		$sql="insert into users values (NULL,'$UserName','$Password','$PhoneNumber','$FullName','$Email')";
		$result = mysqli_query($connect,$sql);
		if ($result){
			echo "<script>alert('Dang ky tai khoan thanh cong!')</script>";
			echo "<script>window.open('login.php','_self')</script>";
		}
	else{
		echo"<script>alert('Error')</script>";
	}
	}
	?>
</html>

