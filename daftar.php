<!DOCTYPE html>
<html>

<head>
    <title>Disparbudpora Daftar</title>
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
        <center><img src="assets/img/favicon9.png"></center>
        <p class="tulisan_login"> CREATE NEW ACCOUNT</p>
        <hr>

        <form action="proses-daftar.php" method="post">
            <p><label>Username</label>
            <P><input type="text" name="username" class="form_login" placeholder="Masukan Username" required="required"></P>
            <label>Password</label>
            <p><input type="password" name="password" class="form_login" placeholder="Masukkan Password" required="required"></p>
            <p><input type="hidden" name="level" class="form_login" placeholder="Masukan id" value="User" required="required"></P>
            <label>Id/NIP </label>
            <p><input type="number" name="nip" class="form_login" placeholder="Masukan Id/Nomor Induk Pokdarwis" required="required"></p>
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