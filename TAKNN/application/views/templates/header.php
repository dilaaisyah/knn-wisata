<!=== BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <!-- Title -->
        <title><?php echo $title;?></title>
        <!-- Meta -->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <!-- Favicon -->
        <link href="favicon.ico" rel="shortcut icon">
        <!-- Jquery -->
        <script type="text/javascript" src="<?php echo base_url();?>assets/js/jquery.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url();?>assets/js/jquery.fancybox.js"></script>
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="<?php echo base_url();?>assets/css/bootstrap.css">
        <!-- Template CSS -->
        <link rel="stylesheet" href="<?php echo base_url();?>assets/css/animate.css">
        <link rel="stylesheet" href="<?php echo base_url();?>assets/css/font-awesome.css">
        <link rel="stylesheet" href="<?php echo base_url();?>assets/css/nexus.css">
        <link rel="stylesheet" href="<?php echo base_url();?>assets/css/responsive.css">
        <link rel="stylesheet" href="<?php echo base_url();?>assets/css/jquery.fancybox.css" media="screen" />
        <!-- Custom CSS -->
        <link rel="stylesheet" href="<?php echo base_url();?>assets/css/custom.css" rel="stylesheet">
        <!-- Google Fonts-->
        <link href="http://fonts.googleapis.com/css?family=Roboto:400,300" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" rel="stylesheet" type="text/css">
        <!-- optional css & js -->
        <?php echo $add_js;?>
        
    </head>
    <body>
        <div id="body_bg">
            <div id="pre_header" class="container">
                <div class="row margin-top-10 visible-lg"></div>
            </div>
            <div class="primary-container-group">
                <!-- Background -->
                <div class="primary-container-background">
                    <div class="primary-container"></div>
                    <div class="clearfix"></div>
                </div>
                <!--End Background -->
                <div class="primary-container">
                    <div id="header" class="container margin-top-10">
                        <div class="row">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="<?php echo base_url();?>" title="logo">
                                    <img src="<?php echo base_url();?>assets/img/logo.png" alt="Logo" />
                                </a>
                            </div>
                            <!-- End Logo -->
                        </div>
                    </div>
                    <!-- Top Menu -->
                    <div id="hornav" class="container no-padding">
                        <div class="row">
                            <div class="col-md-12 no-padding">
                                <div class="pull-left visible-lg">
                                    <ul id="hornavmenu" class="nav navbar-nav">
                                        <li>
                                            <a href="<?php echo base_url();?>" class="fa-home">Home</a>
                                        </li><li>
                                            <a href="<?php echo base_url();?>pages/gallery">Gallery</a>
                                        </li>
                                        <li>
                                            <a href="<?php echo base_url();?>pages/blogs">Blog</a>
                                        </li>
                                        <li>
                                            <a href="<?php echo base_url();?>pages/map">Maps</a>
                                        </li>
                                        <?php if($this->session->userdata('loggedin')):
                                            if($survei != ''){
                                                $survei_date = $survei->date;
                                                $today = date('Y-m-d'); 
                                                $date_diff = date_diff(date_create($today), date_create($survei_date), true); 
                                                $date_diff = $date_diff->m;
                                            }else{
                                                $date_diff = 0;
                                            }
                                            if($survei == '' || $date_diff >= 3):?>
                                                <li>
                                                    <a href="<?php echo base_url();?>pages/question">Questions</a>
                                                </li>
                                            <?php endif;?>
                                            <?php if($survei != ''):?>
                                                <li>
                                                    <a href="<?php echo base_url();?>pages/recommendation">Recommendation</a>
                                                </li>
                                            <?php endif;?>
                                        <?php endif;?>
                                        <?php if($this->session->userdata('loggedin')):?>
                                            <?php $session_data = $this->session->userdata('loggedin');
                                            if($session_data['role']=='administrator') :?>
                                                <li>                                            
                                                    <a href="<?php echo base_url();?>admin">Admin Panel</a>
                                                </li>
                                            <?php endif;?>
                                            <li>                                            
                                                <a href="<?php echo base_url();?>pages/logout">Logout</a>
                                            </li>
                                        <?php else:?>
                                            <li>
                                                <a href="<?php echo base_url();?>pages/login">Login</a>
                                            </li>
                                            <li>
                                                <a href="<?php echo base_url();?>pages/register">Register</a>
                                            </li>
                                        <?php endif;?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Top Menu -->
                    <!-- === END HEADER ===>
                    <!=== BEGIN CONTENT === -->
                    <div id="content">  