<br>
<center>
    <p><label> Pendaftaran SK Pokdarwis</label>
</center>
<div class=" row">
    <div class="col-md-12">
        <?php
        $ids = $_SESSION['id'];
        $jumlah_record1 = mysqli_query($db, "SELECT * FROM user where id = $ids") or die('Ada kesalahan pada query jumlah_record: ' . mysqli_error($db));
        $data = mysqli_fetch_assoc($jumlah_record1);
        $niss = $data['nis'];
        ?>
        <div class="panel panel-default">
            <div class="panel-body">
                <form class="form-horizontal" action="?page=seminar-simpan" method="post" enctype="multipart/form-data">

                    <div class="form-group">
                        <label class="col-sm-2 control-label">nis</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" name="nis" value="<?php echo $niss; ?>" readonly>
                        </div>
                    </div>

    <footer class="footer">
    <div class="form-group">
    <label class="col-sm-2 control-label">contoh persyaratan yang harus di lampirkan</label>
      <p class="text col-sm-2 print"> <a href="https://drive.google.com/file/d/1YLE4bfrkSO-CfIdWDIAVwl2Oqe8zlw2C/view?usp=sharing
    " target="_blank">silahkan klik di sini</a></p>
    </div>
    
  </footer>
                    

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Upload Persyaratan SK</label>
                        <div class="col-sm-3">
                            <input type="file" class="form-control" name="file" required>
                        </div>
                    </div>



                    <input type="hidden" class="form-control" name="statussem" value="Menunggu Persetujuan">
                    <input type="hidden" class="form-control" name="ket" value="">
                    <input type="hidden" class="form-control" name="pengujilap" value="">
                    <input type="hidden" class="form-control" name="pengujiapl" value="">
                    <input type="hidden" class="form-control" name="nilaiprakerin" value="">
                    <input type="hidden" class="form-control" name="nilailaporan" value="">
                    <input type="hidden" class="form-control" name="nilaiaplikasi" value="">

                    <hr />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input type="submit" name="" value="Simpan" class="btn btn-primary">
                </form>
                <a href="index.php" class="btn btn-default btn-reset">Batal</a>
            </div>
        </div>
        </form>
    </div> <!-- /.panel-body -->
</div> <!-- /.panel -->
</div> <!-- /.col -->
</div> <!-- /.row -->