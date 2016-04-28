<div id="content">
    <div class="container">
        <div class="row margin-vert-30">
            <!-- Main Column -->
            <div class="col-md-12">
                <h2>Hasil Recomendasi</h2>
                <p>Submit pertanyaan sukses, Hasilnya adalah sebagain berikut :</p>
                <?php if(count($result)):
                    foreach ($result as $value):
                        echo '<h5>Tanggal Survei: '.$result[0]['date'].'</h5>';
                        echo '<p>';
                            echo ' I = '.$value['I'];
                            echo ' S = '.$value['S'];
                            echo ' T = '.$value['T'];
                            echo ' J = '.$value['J'];
                            echo ' E = '.$value['E'];
                            echo ' N = '.$value['N'];
                            echo ' F = '.$value['F'];
                            echo ' P = '.$value['P'];
                        echo '</p>';
                    endforeach;
                endif;?>
            </div>
            <!-- End Main Column -->
        </div>
    </div>
</div>