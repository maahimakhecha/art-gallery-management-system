<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if (strlen($_SESSION['agmsaid'] == 0)) {
    header('Location: logout.php');
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Art Gallery Management System - Admin Dashboard</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Internal styles for basic styling -->
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 20px;
        }

        #container {
            max-width: 800px; /* Adjust the max-width as needed */
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        h3.page-header {
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
        }

        ol.breadcrumb {
            list-style: none;
            padding: 0;
            margin: 10px 0 20px;
            display: flex;
            justify-content: center;
            gap: 10px;
        }

        ol.breadcrumb li {
            font-size: 16px;
            color: #007bff;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        /* Sidebar styling */
        #sidebar {
            text-align: left;
            margin-bottom: 20px;
        }

        .sidebar-menu ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .sidebar-menu li {
            margin-bottom: 10px;
        }

        .sidebar-menu a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
        }

        /* Add other styles as needed */
    </style>
</head>

<body>
    <!-- Container section start -->
    <section id="container">

        <!-- Include the header file -->
        <?php include_once('includes/header.php'); ?>

        <!-- Include the sidebar file -->
        <aside>
            <div id="sidebar" class="nav-collapse">
                <!-- Sidebar menu start -->
                <ul class="sidebar-menu">
                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                            <span>Functions :</span>
                            <span class="menu-arrow"></span>
                        </a>
                        <ul class="sub">
                            <li><a href="add-art-product.php">Add Product</a></li>
                            <li><a href="manage-art-product.php">Manage Product</a></li>
                        </ul>
                    </li>
                    <!-- Other menu items can be added here as needed -->
                </ul>
                <!-- Sidebar menu end -->
            </div>
        </aside>

        <!-- Main content start -->
        <section id="main-content">
            <section class="wrapper">
                <!-- Overview start -->
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Dashboard</h3>
                        <ol class="breadcrumb">
                            <li><a href="dashboard.php">Home</li>
                            <li>Dashboard</li>
                        </ol>
                    </div>
                </div>
                <!-- Content goes here -->

            </section>
        </section>
        <!-- Main content end -->
    </section>
    <!-- Container section end -->

    <!-- Include JavaScript files -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
</body>

</html>
