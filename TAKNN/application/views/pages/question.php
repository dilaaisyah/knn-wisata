<div class="container background-gray-lighter">
    <div class="row">
        <h2 class="animate fadeIn text-center margin-top-50">Welcome</h2>
        <hr class="margin-top-15">
        <p class="animate fadeIn text-center">
            Di bawah ini ada 60 nomor.<br> Masing-masing nomor memiliki dua pernyataan yang bertolak belakang. <br>
            Pilihlah salah satu pertanyaan yang paling sesuai dengan diri Anda.<br> 
            Anda harus memilih salah satu yang dominan serta mengisi semua nomor.
        </p>
        <p class="text-center animate fadeInUp margin-bottom-50">
            <button type="button" class="btn btn-lg btn-primary view-detail">View Details</button>
        </p>
    </div>
</div>
<div class="container no-padding questions">
    <div class="row">
        <?php echo form_open('pages/submit'); ?>
        <!-- Carousel Slideshow -->
        <div id="carousel-question" class="carousel slide" data-ride="carousel" data-wrap="false" data-interval="0">
            <!-- Carousel Text -->
            <div class="carousel-inner">
            <?php $count = count($questions);
            if($count){ $i=1;
                $slide = ceil($count/3); $x=1;
                foreach ($questions as $question) {
                $active = ($x==1)?'active':''; 
            ?>
                <?php if($i%10==1){?>
                    <div class="item <?php echo $active;?>">
                <?php }?>
                        <div class="item-detail">
                            <h3><?php echo $question['title'];?></h3>
                            <div class="radio">
                              <label>
                                <input type="radio" name="selectradio[<?php echo $i;?>]" value="choice1" class="radioselect">
                                <?php echo $question['choice1'];?>
                              </label>
                            </div>
                            <div class="radio">
                              <label>
                                <input type="radio" name="selectradio[<?php echo $i;?>]" value="choice2" class="radioselect">
                                <?php echo $question['choice2'];?>
                              </label>
                            </div>
                            <?php if($count==$i){?>
                            <p class="text-center submit-button">
                                <button type="submit" class="btn btn-lg btn-primary" name="submit">Submit</button>
                            </p>
                            <?php }else if($i%10==0){?>
                            <p class="text-center submit-button next-button">
                                <a class="btn btn-lg btn-primary">Next</a>
                            </p>
                            <?php }?>
                        </div>
                <?php if($i%10==0 || $i==$count){ $x++;?>
                    </div>
                <?php }?>
            <?php $i++; } 
            }?>
            </div>
            <!-- End Carousel Text -->
        </div>
        <!-- End Carousel Slideshow -->
        </form>
    </div>
</div>