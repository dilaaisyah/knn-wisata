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
                    <a href="<?php echo base_url().'pages/blog/'.$blog['id'].'/';?>">
                        <?php if($blog['image']){?>
                            <img class="pull-left" src="<?php echo base_url().'uploads/blogs/'.$blog['image'];?>" alt="<?php echo $blog['title'];?>">
                        <?php }else{?>
                            <img class="pull-left" src="<?php echo base_url();?>assets/img/no_image.jpg" alt="no-image" width="90" class="no-image">
                        <?php }?>
                    </a>
                    <a href="<?php echo base_url().'pages/blog/'.$blog['id'].'/';?>" class="posts-list-title">
                        <?php echo $blog['title'];?>
                    </a>
                    <br>
                    <span class="recent-post-date">
                        <?php $date=date_create($blog['publish_date']);
                        $format_date = date_format($date,"jS M, Y");
                        echo $format_date;?>
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