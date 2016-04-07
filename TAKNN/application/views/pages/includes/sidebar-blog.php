<!-- Side Column -->
<div class="col-md-3">
    <!-- Recent Posts -->
    <div class="recent-posts margin-top-30">
        <h3>Recent Posts</h3>
        <?php $blog_count = count($sidebar);
        if($blog_count>0){ ?>
        <ul class="posts-list margin-top-10">
            <?php foreach ($sidebar as $blog) {?>
            <li>
                <div class="recent-post">
                    <a href="<?php echo base_url().'index.php/pages/blog/'.$blog['id'].'/';?>">
                        <?php if($blog['image']){?>
                            <img class="pull-left" src="<?php echo base_url().'uploads/blogs/'.$blog['image'];?>" alt="<?php echo $blog['title'];?>">
                        <?php }else{?>
                            <img class="pull-left" src="<?php echo base_url();?><?php echo base_url();?>assets/img/portfolio/image1.jpg" alt="image1">
                        <?php }?>
                    </a>
                    <a href="<?php echo base_url().'index.php/pages/blog/'.$blog['id'].'/';?>" class="posts-list-title">
                        <?php echo $blog['title'];?>
                    </a>
                    <br>
                    <span class="recent-post-date">
                        July 30, 2013
                    </span>
                </div>
                <div class="clearfix"></div>
            </li>
            <?php }?>
        </ul>
        <?php }?>
    </div>
    <!-- End Recent Posts -->
    <!-- End Side Column -->
</div>