<div id="content">
    <div class="container">
        <div class="row margin-vert-30">
            <!-- Main Column -->
            <div class="col-md-12">
                <h2 class="text-center margin-bottom-20">My Plan</h2>
                <!-- Search Box -->
                <div class="col-md-6 col-md-offset-3">
                    <?php echo form_open('pages/plan/submit', 'class="signup-page"'); 
                        $jenis_wisata = array('Select Jenis Wisata','Wisata Alam', 'Wisata Bahari', 'Wisata Sejarah', 'Wisata Reliji', 'Wisata Budaya', 'Wisata Pendidikan', 'Wisata Belanja', 'Wisata Kuliner', 'Wisata Keluarga', 'Wisata Malam', 'Agrowisata');
                    ?>
                        <label>Jenis Wisata</label>
                        <select name="type" class="form-control margin-bottom-20">
                            <?php $i=0; 
                            foreach ($jenis_wisata as $jenis): ?>
                                <option value="<?php echo $i;?>"<?php echo (isset($param_type)AND($param_type==$i))?'selected':''; ?>><?php echo $jenis;?></option>
                            <?php $i++; endforeach;?>
                        </select>
                        <label>Buget</label>
                        <input class="form-control margin-bottom-20" type="text" name="budget" <?php if(isset($param_budget)){ echo 'value="'.$param_budget.'"'; }?>>
                        <hr>
                        <div class="row">
                            <div class="col-md-12 margin-bottom-10">
                                <button class="btn btn-primary pull-right" type="submit">Search</button>
                            </div>
                        </div>     
                    </form>
                </div>
                <!-- End Search Box -->
                <div class="clearfix"></div>

                <?php if(isset($search_result)):?>
                <div id="wisata-result" class="margin-top-50">
                    <?php if($param_type||$param_budget):?>
                        <h4 class="margin-bottom-20">Search: <?php echo 'type = '.$jenis_wisata[$param_type];?> <?php echo 'budget = '.$param_budget;?></h4>
                    <?php endif;?>
                    <table border="1">
                        <thead>
                            <tr>
                                <th width="5%">No.</th>
                                <th width="25%">Wisata</th>
                                <th width="70%">Deskripsi</th>
                            </tr>
                        </thead>
                        <?php $i=1; foreach ($search_result as $result): ?>
                        <tbody>
                            <tr>
                                <td><?php echo $i;?></td>
                                <td><?php echo $result['wisata'];?></td>
                                <td><?php echo $result['description'];?></td>
                            </tr>
                        </tbody>
                        <?php $i++; endforeach;?>
                    </table>
                </div>
                <?php endif;?>

            </div>
            <!-- End Main Column -->
        </div>
    </div>
</div>