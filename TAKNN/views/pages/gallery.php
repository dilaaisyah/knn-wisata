<div id="content">
    <div class="container">
        <div class="row margin-vert-30">
            <div class="col-md-12">
                <h2>Gallery</h2>
            </div>
        </div>
        <?php $gallery_count = count($gallery);
        if($gallery_count>0){?>
        <div class="row">
            <div class="col-md-12 portfolio-group no-padding">
                <?php foreach ($gallery as $gallery) { ?>
                <!-- Portfolio Item -->
                <?php if($gallery['image_url']){?>
                <div class="col-md-4 portfolio-item margin-bottom-40 design">
                    <div>
                        <a class="fancybox" href="<?php echo base_url().'uploads/slides/'.$gallery['image_url'];?>" title="<?php echo $gallery['title'];?>" rel="gallery">
                            <h3 class="margin-top-20"><?php echo $gallery['title'];?></h3>
                            <figure>
                                <img src="<?php echo base_url().'uploads/slides/'.$gallery['image_url'];?>" alt="<?php echo $gallery['title'];?>">
                                <?php if($gallery['description']){ ?>
                                <figcaption>
                                    <?php echo $gallery['description'];?>
                                </figcaption>
                                <?php }?>
                            </figure>
                        </a>
                    </div>
                </div>
                <?php }?>
                <!-- End Portfolio Item -->
                <?php }?> 
            </div>
        </div>
        <?php }?>
    </div>
</div>