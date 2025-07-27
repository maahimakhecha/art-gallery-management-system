<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>

<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Art Gallery Management System | Single Product</title>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- CSS files -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
    <link rel="stylesheet" href="css/shop.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
    <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
    <!-- Google Fonts -->
    <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
</head>

<body>
    <!-- Header -->
    <?php include_once('includes/header.php');?>

    <!-- Banner -->
    <div class="inner_page-banner one-img"></div>

    <!-- Short -->
    <div class="using-border py-3">
        <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
                <li>
                    <a href="index.php">Home</a>
                    <span>/ /</span>
                </li>
                <li>Single Product</li>
            </ul>
        </div>
    </div>

    <!-- Product Details -->
    <section class="banner-bottom py-lg-5 py-3">
        <div class="container">
            <div class="inner-sec-shop pt-lg-4 pt-3">
                <?php
                $pid = $_GET['pid'];
                $ret=mysqli_query($con,"select tblarttype.ID as atid,tblarttype.ArtType as typename,tblartmedium.ID as amid,tblartmedium.ArtMedium as amname,tblartproduct.ID as apid,tblartist.Name,tblartproduct.Title,tblartproduct.Dimension,tblartproduct.Orientation,tblartproduct.Size,tblartproduct.Artist,tblartproduct.ArtType,tblartproduct.ArtMedium,tblartproduct.SellingPricing,tblartproduct.Description,tblartproduct.Image,tblartproduct.Image1,tblartproduct.Image2,tblartproduct.Image3,tblartproduct.Image4,tblartproduct.RefNum,tblartproduct.ArtType from tblartproduct join tblarttype on tblarttype.ID=tblartproduct.ArtType join tblartmedium on tblartmedium.ID=tblartproduct.ArtMedium join tblartist on tblartist.ID=tblartproduct.Artist where tblartproduct.ID='$pid'");
                $cnt=1;
                while ($row = mysqli_fetch_array($ret)) {
                   ?>
                    <div class="row">
                        <div class="col-lg-4 single-right-left ">
                            <div class="grid images_3_of_2">
                                <div class="flexslider1">
                                    <ul class="slides">
                                        <li data-thumb="admin/images/<?php echo $row['Image'];?>">
                                            <div class="thumb-image">
                                                <img src="admin/images/<?php echo $row['Image'];?>" data-imagezoom="true" class="img-fluid" alt=" "> 
                                            </div>
                                        </li>
                                        <?php if ($row['Image1']) :?>
                                            <li data-thumb="admin/images/<?php echo $row['Image1'];?>">
                                                <div class="thumb-image"> <img src="admin/images/<?php echo $row['Image1'];?>" data-imagezoom="true" class="img-fluid" alt=" "> 
                                                </div>
                                            </li>
                                        <?php endif;?>
                                        <?php if ($row['Image2']) :?>
                                            <li data-thumb="admin/images/<?php echo $row['Image2'];?>">
                                                <div class="thumb-image"> <img src="admin/images/<?php echo $row['Image2'];?>" data-imagezoom="true" class="img-fluid" alt=" "> 
                                                </div>
                                            </li>
                                        <?php endif;?>
                                        <?php if ($row['Image3']) :?>
                                            <li data-thumb="admin/images/<?php echo $row['Image3'];?>">
                                                <div class="thumb-image"> <img src="admin/images/<?php echo $row['Image3'];?>" data-imagezoom="true" class="img-fluid" alt=" "> 
                                                </div>
                                            </li>
                                        <?php endif;?>
                                        <?php if ($row['Image4']) :?>
                                            <li data-thumb="admin/images/<?php echo $row['Image4'];?>">
                                                <div class="thumb-image"> <img src="admin/images/<?php echo $row['Image4'];?>" data-imagezoom="true" class="img-fluid" alt=" "> 
                                                </div>
                                            </li>
                                        <?php endif;?>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8 single-right-left simpleCart_shelfItem">
                            <h3><?php echo $row['Title'];?>(by <?php echo $row['Name'];?>)</h3>
                            </p>
                            
                           
                     <div class="color-quality">
                        <div class="color-quality-right">
                           <h5>Size : <?php echo $row['Size'];?></h5>
                           <h5>Dimension : <?php echo $row['Dimension'];?></h5>
                           <h5>Orientation : <?php echo $row['Orientation'];?></h5>
                          
                        </div>
                     </div>
                     <div class="occasional">
                        <h5>Art Types : <?php echo $row['typename'];?></h5>
                       
                       <h5>Art Medium : <?php echo $row['amname'];?></h5>
                       <h5>Art Reference Number : <?php echo $row['RefNum'];?></h5>
                   
                        <div class="clearfix"> </div>
                     </div>

                            <div class="occasion-cart">
                                <div>
                                    <h4>
                                        <button class="btn btn-success"><a href="art-enquiry.php?eid=<?php echo $row['apid'];?>" >Enquiry</a></button></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="responsive_tabs">
                        <div id="horizontalTab">
                            <ul class="resp-tabs-list">
                                <li>Description</li>
                            </ul>
                            <div class="resp-tabs-container">
                                <!--/tab_one-->
                                <div class="tab1">
                                    <div class="single_page">
                                        <h6><?php echo $row['Title'];?></h6>
                                        <p><?php echo $row['Description'];?>
                                        </p>
                                    </div>
                                </div>
                                <!--//tab_one-->
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <?php include_once('includes/footer.php');?>

    <!-- jQuery -->
    <script src="js/jquery-2.2.3.min.js"></script>
    <!-- Newsletter Modal -->
    
    <!-- //Newsletter Modal -->

    <!-- Bootstrap JS -->
    <script src="js/bootstrap.min.js"></script>

    <!-- //Bootstrap JS -->
    <!-- //jquery -->
    <script src="js/jquery.js"></script>
    <!-- //jquery -->
    <!-- countdown.js -->
    <script src="js/jquery.knob.js"></script>
    <!-- //countdown.js -->
    <!-- Smooth.js -->
    <script src="js/Smooth.min.js"></script>
    <!-- //Smooth.js -->
    <!-- script for password match -->
    <script src="js/imagezoom.js"></script>
    <script>
        window.onload = function () {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("Passwords do not match.");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
    <!-- //script for password match -->
    <!-- start-smooth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();

                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
    <!-- smooth-scrolling-of-move-up -->
    <script>
        $(document).ready(function () {

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!-- //smooth-scrolling-of-move-up -->
    <!--// MiningJS -->
    <script src="js/main.js"></script>
    <!--// MiningJS -->
</body>

</html>