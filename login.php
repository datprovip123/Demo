<!DOCTYPE html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/login.css" />
    </head>
<form method = "post">
    <div class="loginbox">
    <img src="images/2.jpg" class="avatar">
        <h1>Login Here</h1>
        <form >
            <p>Username</p>
            <input type="text" name="UserName" required placeholder="UserName" />
            <p>Password</p>
            <input type="Password" name="Password" required placeholder="Password" />
            <input type="submit" name="login" value="login" />
            <a href="dangky.php">Don't have an account?</a>
        </form>
    </div>
</form>

    <?php 
session_start();
  include ('connect.php');

  if(isset($_POST['login'])){

    $UserName = $_POST['UserName'];
    $Password = $_POST['Password'];
    $sql="select * from users where UserName='$UserName' AND Password='$Password'";
    $result = mysqli_query($connect,$sql);
    $check_login = mysqli_num_rows($result);
    $row_login = mysqli_fetch_array($result);   
    if($check_login == 0){
     echo "<script>alert('Password or Username is incorrect, please try again!')</script>";
     exit();
   }  
   if($check_login > 0){ 

   $_SESSION['UserName'] = $row_login['UserName']; 
    echo "<script>alert('You have logged in successfully !')</script>";  
    echo"<script>window.open('index.php','_self')</script>";
  }
}
?>