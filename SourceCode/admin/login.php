<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if(isset($_POST['login']))
  {
    $adminuser=$_POST['username'];
    $password=md5($_POST['password']);
    $query=mysqli_query($con,"select ID from tbladmin where  UserName='$adminuser' && Password='$password' ");
    $ret=mysqli_fetch_array($query);
    if($ret>0){
      $_SESSION['agmsaid']=$ret['ID'];
      header("Location: dashboard.php");
      exit();
    }
    else{
    echo "<script>alert('Invalid Details');</script>";
    }
  }
  ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Login| Art Gallery Management System</title>
</head>

<body class="login-img3-body">

  <div class="container">

    <form class="login-form" action="" method="post">
      
      <div class="login-wrap">
        <p class="login-img"><i class="icon_lock_alt"></i></p>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_profile"></i></span>
          <input type="text" class="form-control" name="username" placeholder="Username" autofocus required="true">
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
          <input type="password" class="form-control" name="password" placeholder="Password" required="true">
        </div>
        
                
                <lable><span class="pull-right"> <a href="forgot-password.php"> Forgot Password?</a></span>
            </label>
        <button class="btn btn-primary btn-lg btn-block" type="submit" name="login">Login</button>
            <p style="margin-top:3%; font-weight:bold"><a href="../index.php" >Back to Home page</a></p>
      </div>
    </form>

   
  </div>


</body>

</html>
