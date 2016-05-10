                    <div class="container background-gray-lighter padding-vert-30">
                        <div class="row">
                            <!-- Contact Details -->
                            <?php if($options->contact_detail) :?>
                            <div class="col-md-6 margin-bottom-20">
                                <h3 class="margin-bottom-10">Contact Details</h3>
                                <?php echo $options->contact_detail;?>
                            </div>
                            <?php endif;?>
                            <!-- End Contact Details -->
                            <!-- Thumbs Gallery -->
                            <!-- <div class="col-md-4 margin-bottom-20">
                                <h3 class="margin-bottom-10">Popular Destination</h3>
                                <div class="thumbs-gallery">
                                    <a class="thumbBox fancybox" rel="lightbox-thumbs" href="<?php echo base_url();?>assets/img/thumbsgallery/image01.jpg">
                                        <img src="<?php echo base_url();?>assets/img/thumbsgallery/thumbs/image01.jpg" alt="image1.jpg" title="image 1">
                                        <i></i>
                                    </a>
                                    <a class="thumbBox fancybox" rel="lightbox-thumbs" href="<?php echo base_url();?>assets/img/thumbsgallery/image02.jpg">
                                        <img src="<?php echo base_url();?>assets/img/thumbsgallery/thumbs/image02.jpg" alt="image2.jpg">
                                        <i></i>
                                    </a>
                                    <a class="thumbBox fancybox" rel="lightbox-thumbs" href="<?php echo base_url();?>assets/img/thumbsgallery/image03.jpg">
                                        <img src="<?php echo base_url();?>assets/img/thumbsgallery/thumbs/image03.jpg" alt="image3.jpg">
                                        <i></i>
                                    </a>
                                    <a class="thumbBox fancybox" rel="lightbox-thumbs" href="<?php echo base_url();?>assets/img/thumbsgallery/image04.jpg">
                                        <img src="<?php echo base_url();?>assets/img/thumbsgallery/thumbs/image04.jpg" alt="image4.jpg">
                                        <i></i>
                                    </a>
                                    <a class="thumbBox fancybox" rel="lightbox-thumbs" href="<?php echo base_url();?>assets/img/thumbsgallery/image04.jpg">
                                        <img src="<?php echo base_url();?>assets/img/thumbsgallery/thumbs/image05.jpg" alt="image5.jpg">
                                        <i></i>
                                    </a>
                                    <a class="thumbBox fancybox" rel="lightbox-thumbs" href="<?php echo base_url();?>assets/img/thumbsgallery/image06.jpg">
                                        <img src="<?php echo base_url();?>assets/img/thumbsgallery/thumbs/image06.jpg" alt="image6.jpg">
                                        <i></i>
                                    </a>
                                    <a class="thumbBox fancybox" rel="lightbox-thumbs" href="<?php echo base_url();?>assets/img/thumbsgallery/image07.jpg">
                                        <img src="<?php echo base_url();?>assets/img/thumbsgallery/thumbs/image07.jpg" alt="image7.jpg">
                                        <i></i>
                                    </a>
                                    <a class="thumbBox fancybox" rel="lightbox-thumbs" href="<?php echo base_url();?>assets/img/thumbsgallery/image08.jpg">
                                        <img src="<?php echo base_url();?>assets/img/thumbsgallery/thumbs/image08.jpg" alt="image8.jpg">
                                        <i></i>
                                    </a>
                                </div>
                                <div class="clearfix"></div>
                            </div> -->
                            <!-- End Thumbs Gallery -->
                            <!-- About -->
                            <?php if($options->about) :?>
                            <div class="col-md-6 margin-bottom-20">
                                <h3 class="margin-bottom-10">About Us</h3>
                                <?php echo $options->about;?>
                                <div class="clearfix"></div>
                            </div>
                            <?php endif;?>
                            <!-- End About -->
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <!-- === END CONTENT ===>
            <!-- === BEGIN FOOTER === -->
            <!-- Footer Menu -->
            <div id="footer">
                <div class="container">
                    <div class="row">
                        <div id="copyright" class="col-md-4">
                            <p>(c) 2016 Copyright</p>
                        </div>
                        <div id="footermenu" class="col-md-8">
                            <ul class="list-unstyled list-inline pull-right">
                                <li>
                                    <a href="<?php echo base_url();?>">Home</a>
                                </li>
                                <li>
                                    <a href="<?php echo base_url();?>pages/gallery">Gallery</a>
                                </li>
                                <li>
                                    <a href="<?php echo base_url();?>pages/blogs">Blog</a>
                                </li>
                                <li>
                                    <a href="<?php echo base_url();?>pages/map">Maps</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Footer Menu -->
            <!-- JS -->
            <script type="text/javascript" src="<?php echo base_url();?>assets/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="<?php echo base_url();?>assets/js/scripts.js"></script>
            <!-- Isotope - Portfolio Sorting -->
            <script type="text/javascript" src="<?php echo base_url();?>assets/js/jquery.isotope.js"></script>
            <!-- Mobile Menu - Slicknav -->
            <script type="text/javascript" src="<?php echo base_url();?>assets/js/jquery.slicknav.js"></script>
            <!-- Animate on Scroll-->
            <script type="text/javascript" src="<?php echo base_url();?>assets/js/jquery.visible.js" charset="utf-8"></script>
            <!-- Sticky Div -->
            <script type="text/javascript" src="<?php echo base_url();?>assets/js/jquery.sticky.js" charset="utf-8"></script>
            <!-- Slimbox2-->
            <script type="text/javascript" src="<?php echo base_url();?>assets/js/slimbox2.js" charset="utf-8"></script>
            <!-- Modernizr -->
            <script src="<?php echo base_url();?>assets/js/modernizr.custom.js" type="text/javascript"></script>
            <!-- Custom Js -->
            <script src="<?php echo base_url();?>assets/js/custom.js" type="text/javascript"></script>
            <!-- End JS -->
    </body>
</html>
<!-- === END FOOTER === -->