<!DOCTYPE html>
<html>

<head>
    <title>Disparbudpora Login</title>
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">
</head>

<body>
    <?php
    require_once "config/database.php";



    if (isset($_GET['pesan'])) {
        if ($_GET['pesan'] == "2") {
            echo "<div class='pesan'>Pendaftaran Akun Gagal</div>";
        } else if ($_GET['pesan'] == "logindulu") {
            echo "<div class='pesan'>Silahkan Login dulu !</div>";
        }
    }
    ?>

    <div class="kotak_login">
        <center><img src="assets/img/logosmd.png"></center>
        <p class="tulisan_login"> DAFTAR AKUN BARU</p>
        <hr>

        <form action="proses-daftar.php" method="post">
            <P><label>Id </label></P>
            <input type="text" name="id" class="form_login" placeholder="Masukan id" required="required">
            <p><label>Username</label>
            <P><input type="text" name="nama pokdarwis" class="form_login" placeholder="Masukan Nama Pokdarwis" required="required"></P>
            <p><label>Alamat</label>
            <P><input type="text" nama="alamat pokdarwis" class="form_login" placeholder="Masukan Alamat Pokdarwis" required="required"></P>
            <p><label>Potensi</label>
            <P><input type="text" nama="potensi wisata" class="form_login" placeholder="Masukan Potensi wisata" required="required"></P>
            <label>Password</label>
            <p><input type="password" name="password" class="form_login" placeholder="Masukkan Password" required="required"></p>
            <p><input type="hidden" name="level" class="form_login" placeholder="Masukan id" value="User" required="required"></P>
            <p>
                <center><input type="submit" name="simpan" class="tombol_login" value="DAFTAR">
            </p>
        </form>
        <hr>
        <p>Sudah memiliki akun?
            <a href="login.php">Login</a>
        </p>
        </center>
    </div>
</body>

</html>