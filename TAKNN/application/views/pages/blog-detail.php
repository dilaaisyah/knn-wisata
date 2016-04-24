<div class="container">
    <div class="row margin-vert-30">
        <!-- Main Column -->
        <div class="col-md-9">
            <div class="blog-post">
                <div class="blog-item-header">
                    <h2><?php echo $blog['title'];?></h2>
                </div>
                <div class="blog-post-details">
                    <!-- Author Name -->
                    <div class="blog-post-details-item blog-post-details-item-left user-icon">
                        <i class="fa fa-user color-gray-light"></i>
                        <a href="#">Admin</a>
                    </div>
                    <!-- End Author Name -->
                    <!-- Date -->
                    <div class="blog-post-details-item blog-post-details-item-left">
                        <i class="fa fa-calendar color-gray-light"></i>
                        <?php $date=date_create($blog['publish_date']);
                        $format_date = date_format($date,"jS M, Y");
                        echo $format_date;?>
                    </div>
                    <!-- End Date -->
                </div>
                <div class="blog-item">
                    <div class="clearfix"></div>
                    <div class="blog-post-body row margin-top-15">
                        <div class="col-md-12">
                        	<?php if($blog['image']){?>
                        		<img class="pull-left featured-img" src="<?php echo base_url().'uploads/blogs/'.$blog['image']?>" alt="<?php echo $blog['title'];?>">
                        	<?php }?>
                        	<?php echo $blog['content'];?>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Blog Post -->
        </div>
        <!-- End Main Column -->
        <?php require_once('includes/sidebar-blog.php');?>
    </div>
</div>