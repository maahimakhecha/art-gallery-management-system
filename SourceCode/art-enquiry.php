<?php
error_reporting(0);
include('includes/dbconnection.php');

if(isset($_POST['send'])) {
    $fullname=$_POST['fullname'];
    $email=$_POST['email'];
    $mobilenumber=$_POST['mobnum'];
    $message=$_POST['message'];
    $enquirynumber = mt_rand(100000000, 999999999);
    $eid=$_GET['eid'];
    $query1=mysqli_query($con,"insert into  tblenquiry(Artpdid,FullName,Email,MobileNumber,Message,EnquiryNumber) value('$eid','$fullname','$email','$mobilenumber','$message','$enquirynumber')");
    if ($query1) {
        echo '<script>alert("Your enquiry successfully send. Your Enquiry number is '.$enquirynumber.'"); window.location.href="index.php"</script>';
    } else {
        echo "<script>alert('Something went wrong.');</script>";  
    }
}

?>

<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Art Gallery Management System | Art Enquiry</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
</head>
<body>
    <?php include_once('includes/header.php');?>
    <div class="inner_page-banner one-img"></div>
    <div class="using-border py-3">
        <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
                <li><a href="index.php">Home</a><span>/ /</span></li>
                <li>Enquiry</li>
            </ul>
        </div>
    </div>
    <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
        <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Enquiry</h3>
            <form action="#" method="post">
                <div class="agile-wls-contact-mid">
                    <div class="form-group contact-forms">
                        <input class="form-control" type="text" name="fullname" required="true" placeholder="Name"/>
                    </div>
                    <div class="form-group contact-forms">
                        <input class="form-control" type="email" name="email" required="true" placeholder="Email"/>
                    </div>
                    <div class="form-group contact-forms">
                        <input class="form-control" type="text" name="mobnum" maxlength="10" pattern="[0-9]+" placeholder="Mobile Number" required="true"/>
                    </div>
                    <div class="form-group contact-forms">
                        <textarea class="form-control" name="message" placeholder="Message" required="true" rows="4"></textarea>
                    </div>
                    <button type="submit" class="btn btn-block sent-butnn" name="send">Send</button>
                </div>
            </form>
        </div>
    </section>
    <?php include_once('includes/footer.php');?>
    <script src='js/jquery-2.2.3.min.js'></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>