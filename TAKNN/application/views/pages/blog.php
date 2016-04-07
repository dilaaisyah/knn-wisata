<div class="container">
    <div class="row margin-vert-30 blog-list">
        <!-- Main Column -->
        <div class="col-md-9">
        	<?php $blog_count = count($blogs);
			if($blog_count>0){
			foreach ($blogs as $blog) { ?>
	            <!-- Blog Post -->
	            <div class="blog-post padding-bottom-20">
	                <!-- Blog Item Header -->
	                <div class="blog-item-header">
	                    <!-- Title -->
	                    <h2>
	                        <a href="<?php echo base_url().'index.php/pages/blog/'.$blog['id'].'/';?>">
	                           <?php echo $blog['title']?></a>
	                    </h2>
	                    <div class="clearfix"></div>
	                    <!-- End Title -->
	                </div>
	                <!-- End Blog Item Header -->
	                <!-- Blog Item Details -->
	                <div class="blog-post-details">
	                    <!-- Author Name -->
	                    <div class="blog-post-details-item blog-post-details-item-left">
	                        <i class="fa fa-user color-gray-light"></i>
	                        <a href="#">Admin</a>
	                    </div>
	                    <!-- End Author Name -->
	                    <!-- Date -->
	                    <div class="blog-post-details-item blog-post-details-item-left">
	                        <i class="fa fa-calendar color-gray-light"></i>
	                        <a href="#">22nd Apr, 2014</a>
	                    </div>
	                    <!-- End Date -->
	                </div>
	                <!-- End Blog Item Details -->
	                <!-- Blog Item Body -->
	                <div class="blog">
	                    <div class="clearfix"></div>
	                    <div class="blog-post-body row margin-top-15">
	                        <div class="col-md-5">
	                            <?php if($blog['image']){?>
	                            <img src="<?php echo base_url().'uploads/blogs/'.$blog['image'];?>" alt="<?php echo $blog['title'];?>">
	                            <?php }else{?>
	                                <img src="<?php echo base_url();?><?php echo base_url();?>assets/img/portfolio/image1.jpg" alt="image1">
	                            <?php }?>
	                        </div>
	                        <div class="col-md-7">
	                            <?php echo ($blog['excerpt'])?$blog['excerpt']:$blog['content'];?>
	                            <!-- Read More -->
	                            <a href="<?php echo base_url().'index.php/pages/blog/'.$blog['id'].'/';?>" class="btn btn-primary">
	                                Read More
	                                <i class="icon-chevron-right readmore-icon"></i>
	                            </a>
	                            <!-- End Read More -->
	                        </div>
	                    </div>
	                </div>
	                <!-- End Blog Item Body -->
	            </div>
	            <!-- End Blog Item -->
	        <?php } }?>
            <!-- Pagination -->
            <!-- <ul class="pagination">
                <li>
                    <a href="#">&laquo;</a>
                </li>
                <li class="active">
                    <a href="#">1</a>
                </li>
                <li>
                    <a href="#">2</a>
                </li>
                <li>
                    <a href="#">3</a>
                </li>
                <li class="disabled">
                    <a href="#">4</a>
                </li>
                <li>
                    <a href="#">5</a>
                </li>
                <li>
                    <a href="#">&raquo;</a>
                </li>
            </ul> -->
            <!-- End Pagination -->
        </div>
        <!-- End Main Column -->
        <?php require_once('includes/sidebar-blog.php');?>
    </div>
</div>