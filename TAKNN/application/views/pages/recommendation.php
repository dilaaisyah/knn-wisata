<div id="content">
    <div class="container">
        <div class="row margin-vert-30">
            <!-- Main Column -->
            <div class="col-md-12">
                <h2>Hasil Recomendasi</h2>
                <p>Submit pertanyaan sukses, Hasilnya adalah sebagain berikut :</p>
                <?php if(count($result)):
                    echo '<h5>Tanggal Survei: '.$result[0]['date'].'</h5>';
                    foreach ($result as $value):
                        echo '<p>'.$value['dimension'].' = '.$value['result'].'</p>';
                    endforeach;
                endif;?>
            </div>
            <!-- End Main Column -->
        </div>
    </div>
</div>