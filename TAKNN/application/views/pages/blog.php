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
	                        <a href="<?php echo base_url().'pages/blog/'.$blog['id'].'/';?>">
	                           <?php echo $blog['title']?></a>
	                    </h2>
	                    <div class="clearfix"></div>
	                    <!-- End Title -->
	                </div>
	                <!-- End Blog Item Header -->
	                <!-- Blog Item Details -->
	                <div class="blog-post-details">
	                    <!-- Date -->
	                    <div class="blog-post-details-item blog-post-details-item-left">
	                        <i class="fa fa-calendar color-gray-light"></i>
	                        <?php $date=date_create($blog['publish_date']);
							$format_date = date_format($date,"jS M, Y");
							echo $format_date;?>
	                    </div>
	                    <!-- End Date -->
	                    <!-- Category -->
	                    <div class="blog-post-details-item blog-post-details-item-left">
	                        <?php echo $blog['category'];?>
	                    </div>
	                    <!-- End Category -->
	                </div>
	                <!-- End Blog Item Details -->
	                <!-- Blog Item Body -->
	                <div class="blog">
	                    <div class="clearfix"></div>
	                    <div class="blog-post-body row">
	                        <div class="col-md-5"<?php if(!$blog['image']){echo ' style="text-align: center;"';}?>>
	                            <?php if($blog['image']){?>
	                            <img src="<?php echo base_url().'uploads/blogs/'.$blog['image'];?>" alt="<?php echo $blog['title'];?>">
	                            <?php }else{?>
	                                <img src="<?php echo base_url();?>assets/img/no_image.jpg" alt="no-image" height="185" class="no-image">
	                            <?php }?>
	                        </div>
	                        <div class="col-md-7">
	                            <?php echo ($blog['excerpt'])?$blog['excerpt']:$blog['content'];?>
	                            <!-- Read More -->
	                            <a href="<?php echo base_url().'pages/blog/'.$blog['id'].'/';?>" class="btn btn-primary">
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
            <?php $count = $pagination['count'];
            	$limit = $pagination['limit'];
            	$page = $pagination['page'];
            	$count_page = ceil($count/$limit);
            ?>
            <?php if( $count > 0 ): ?>
            <ul class="pagination">
            	<?php if( $count_page > 1 && $page > 1):?>
                <li>
                    <a href="<?php echo base_url().'pages/blogs/'.($page-1);?>">&laquo;</a>
                </li>
            	<?php endif;?>
            	<?php for ($i=1; $i <= $count_page; $i++):?>
            		<li class="<?php echo ($i==$page)?'active':'';?>">
            			<?php if($i==$page):?>
	                		<span><?php echo $i;?></span>
	                	<?php else:?>
	                		<a href="<?php echo base_url().'pages/blogs/'.$i;?>"><?php echo $i;?></a>
	            		<?php endif;?>
	                </li>
            	<?php endfor;?>
                <?php if( $count_page > $page && $page > 0):?>
                <li>
                    <a href="<?php echo base_url().'pages/blogs/'.($page+1);?>">&raquo;</a>
                </li>
                <?php endif;?>
            </ul>
        	<?php endif;?>
            <!-- End Pagination -->
        </div>
        <!-- End Main Column -->
        <?php require_once('includes/sidebar-blog.php');?>
    </div>
</div>