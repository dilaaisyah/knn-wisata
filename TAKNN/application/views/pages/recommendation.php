<div id="content">
    <div class="container">
        <div class="row margin-vert-30">
            <!-- Main Column -->
            <div class="col-md-12">
                <h2>Hasil Recomendasi</h2>
                <p>Submit pertanyaan sukses, Hasilnya adalah sebagain berikut :</p>
                <?php if(count($result)):
                    echo '<h5>Tanggal Survei: '.$result->date.'</h5>';
                    
                    $i = $result->I; $e = $result->E; 
                    $s = $result->S; $n = $result->N; 
                    $t = $result->T; $f = $result->F; 
                    $j = $result->J; $p = $result->P; 
                    $sifat = '';
                    if($i >= $e) $sifat .='I'; else $sifat .= 'E';
                    if($s >= $n) $sifat .='S'; else $sifat .= 'N';
                    if($t >= $f) $sifat .='T'; else $sifat .= 'F';
                    if($j >= $p) $sifat .='J'; else $sifat .= 'P';
                    echo '<p> SIFAT : <strong>'.$sifat.'</strong></p>';

                    $recomen_result='';
                    if(count($recomen)){
                        foreach ($recomen as $value) {
                            $recomen_result .= $value['recommendation'].', ';
                        }
                    }
                    echo '<p> Recomendasi : <strong>'.substr($recomen_result, 0, -2).'</strong></p>';
                endif;?>
            </div>
            <!-- End Main Column -->
        </div>
    </div>
</div>