<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Dashboard</title>

    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url();?>assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<?php echo base_url();?>assets/css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="<?php echo base_url();?>assets/css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<?php echo base_url();?>assets/css/font-awesome.css" rel="stylesheet" type="text/css">

    <!-- CRUD CSS -->
    <?php 
    foreach($css_files as $file): ?>
        <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
    <?php endforeach; ?>

    <!-- jQuery -->
    <?php if($index){ ?>
        <script src="<?php echo base_url();?>assets/js/jquery.js"></script>
    <?php }?>

    <!-- CRUD JS -->
    <?php foreach($js_files as $file): ?>
        <script src="<?php echo $file; ?>"></script>
    <?php endforeach; ?>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo base_url();?>admin/">TA Admin</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">                
                <li>
                    <a href="<?php echo base_url();?>"><i class="fa fa-fw fa-home"></i> Homepage</a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <?php echo $username;?> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="<?php echo base_url();?>admin/dashboard/profile"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="<?php echo base_url();?>pages/logout"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="<?php echo base_url();?>admin/"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-list-alt"></i> Blogs <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="<?php echo base_url();?>admin/dashboard/blog/">Blogs</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url();?>admin/dashboard/category/">Blog Category</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="<?php echo base_url();?>admin/dashboard/question/"><i class="fa fa-fw fa-question"></i> Questions</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url();?>admin/dashboard/slide/"><i class="fa fa-fw fa-picture-o"></i> Slides / Gallery</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url();?>admin/dashboard/map/"><i class="fa fa-fw fa-map-marker"></i> Maps</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url();?>admin/dashboard/wisata/"><i class="fa fa-fw fa-plane"></i> Wisata</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url();?>admin/dashboard/survei/"><i class="fa fa-fw fa-file-text"></i> Survei</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url();?>admin/dashboard/user/"><i class="fa fa-fw fa-users"></i> Users</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url();?>admin/dashboard/options/"><i class="fa fa-fw fa-cog"></i> Options</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">