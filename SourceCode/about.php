<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>

<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Art Gallery Management System | About Us Page</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
    <link rel="stylesheet" href="css/shop.css" type="text/css" />
    <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
    <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
</head>
<body>
    <?php include_once('includes/header.php');?>

    <div class="inner_page-banner one-img">
    </div>

    <div class="using-border py-3">
        <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
                <li>
                    <a href="index.html">Home</a>
                    <span>/ /</span>
                </li>
                <li>About</li>
            </ul>
        </div>
    </div>

    <section class="about py-lg-4 py-md-3 py-sm-3 py-3">
        <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <?php
            $ret=mysqli_query($con,"select * from tblpage where PageType='aboutus' ");
            $cnt=1;
            while ($row=mysqli_fetch_array($ret)) {
           ?>
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3"><?php  echo $row['PageTitle'];?></h3>
            <div class="about-innergrid-agile text-center">
                <h4>Welcome To Our Gallery</h4>
                <p class="mb-3"> <?php  echo $row['PageDescription'];?>
                </p><br>
            </div>
            <?php }?>
            <div class=" img-toy-w3l-top">
            </div>
            <div class="about-sub-inner text-center mt-lg-4 mt-3">
                <h4>Art Gallery
                </h4>
                <div class="row">
                    <div class="col-lg-4 col-md-4 abut-gride">
                        <span class="fas fa-truck"></span>
                        <h5>Shipping</h5>
                        <p class="mt-3"> We provide Free Shipping for all our products, in india.
                        </p>
                    </div>
                    <div class="col-lg-4 col-md-4 abut-gride">
                        <span class="fas fa-phone-volume"></span>  
                        <h5>Support</h5>
                        <p class="mt-3"> Need help? Contact us and speak to one of our agents by calling our toll free number +91 1234567890.
                        </p>
                    </div>
                    <div class="col-lg-4 col-md-4 abut-gride">
                        <span class="fas fa-undo"></span>
                        <h5> Return</h5>
                        <p class="mt-3"> We provide 7 days return for ensuring all our customers are satisfied. 
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <?php include_once('includes/footer.php');?>

    <script src='js/jquery-2.2.3.min.js'></script>
    <script src="js/minicart.js"></script>
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>