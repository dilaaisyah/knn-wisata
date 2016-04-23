<?php $slides_count = count($slides);
if($slides_count>0){ $i=1; ?>
<div class="container no-padding">
    <div class="row">
        <!-- Carousel Slideshow -->
        <div id="gallery" class="carousel slide" data-ride="carousel">
            <!-- Carousel Images -->
            <div class="carousel-inner">
                <?php foreach ($slides as $slide) {
                $active = ($i==1)?' active':''; ?>             
                <div class="item<?php echo $active;?>">
                    <img src="<?php echo base_url().'uploads/slides/'.$slide['image_url'];?>" alt="<?php echo $slide['title'];?>">
                </div>
                 <?php $i++;}?>
            </div>
            <!-- End Carousel Images -->
            <!-- Carousel Controls -->
           <a class="left carousel-control" href="#gallery" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#gallery" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
            <!-- End Carousel Controls -->
        </div>
        <!-- End Carousel Slideshow -->
    </div>
</div>
<?php }?>
<?php $blog_count = count($blogs);
if($blog_count>0){?>
<div class="container">
    <div class="row margin-vert-30">
        <div class="col-md-12">
            <h2>Featured Blog</h2>                        
        </div>
    </div>
    <div class="row">
        <div id="recomended" class="col-md-12 portfolio-group no-padding">
            <?php foreach ($blogs as $blog) { ?>
            <!-- Portfolio Item -->
            <div class="col-md-4 portfolio-item margin-bottom-40 design">
                <div>
                    <a href="<?php echo base_url().'pages/blog/'.$blog['id'].'/';?>">
                        <figure>
                            <?php if($blog['image']){?>
                            <img src="<?php echo base_url().'uploads/blogs/'.$blog['image'];?>" alt="<?php echo $blog['title'];?>">
                            <?php }else{?>
                                <img src="<?php echo base_url();?>assets/img/no_image.jpg" alt="no-image" height="197" class="no-image">
                            <?php }?>
                            <figcaption class="eqHeight">
                                <p class="category"><span><?php echo $blog['category'];?></span></p>
                                <p class="title"><?php echo $blog['title'];?></p> 
                            </figcaption>
                        </figure>
                    </a>
                </div>
            </div>
            <!-- End Portfolio Item -->
            <?php }?>                    
        </div>
    </div>
</div>
<?php }?>