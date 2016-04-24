<!--Page Heading -->
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header"><?php echo $title;?></h1>
        <ol class="breadcrumb">
            <li>
                <i class="fa fa-dashboard"></i>  <a href="<?php echo base_url();?>admin/">Dashboard</a>
            </li>
            <li class="active">
                <?php echo $subtitle;?>
            </li>
        </ol>
    </div>
</div>
<!-- /.row -->

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><?php echo $subtitle;?></h3>
            </div>
            <div class="panel-body">
                <?php echo $output;?>
            </div>
        </div>
    </div>
</div>
<!-- /.row