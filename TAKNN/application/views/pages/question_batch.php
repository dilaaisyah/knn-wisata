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
        <h2 class="animate fadeIn text-center margin-top-50">MASUKKAN VALUE MBTI</h2>
        <div class="col-md-10 margin-horiz-60 margin-vert-30 ">
            <?php echo form_open('pages/submit'); ?>
                <textarea name="all_selection" rows="4" cols="50" style="width: 100%;"></textarea>
                <p class="text-center submit-button1 margin-top-30">
                    <button type="submit" class="btn btn-lg btn-primary" name="submit">Submit</button>
                </p>
            </form>             
        </div>  
    </div>
</div>