<?php
// Panggil koneksi database
require_once "config/database.php";

if (isset($_POST['simpan'])) {
    $id            = $_POST['nip'];
    $username      = mysqli_real_escape_string($db, trim($_POST['username']));
    $password      = mysqli_real_escape_string($db, trim($_POST['password']));
    $level         = $_POST['level'];
    $nip           = $_POST['nip'];

    // perintah query untuk menyimpan data ke tabel is_siswa
    $query = mysqli_query($db, "INSERT INTO user (id, username, password, level, nip) VALUES('$id','$username', '$password', '$level', '$nip')");

    // cek hasil query
    if ($query) {
        // jika berhasil tampilkan pesan berhasil insert data
        header('location:login.php?pesan=3');
    } else {
        // jika gagal tampilkan pesan kesalahan
        header('location:daftar.php?pesan=2');
    }
}
