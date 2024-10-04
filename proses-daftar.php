<?php
// Panggil koneksi database
require_once "config/database.php";

if (isset($_POST['simpan'])) {
    $id            = $_POST['id'];
    $username      = mysqli_real_escape_string($db, trim($_POST['username']));
    $alamat      = mysqli_real_escape_string($db, trim($_POST['alamat']));
    $potensi       = mysqli_real_escape_string($db, trim($_POST['potensi']));
    $password      = mysqli_real_escape_string($db, trim($_POST['password']));

    // perintah query untuk menyimpan data ke tabel is_siswa
    $query = mysqli_query($db, "INSERT INTO daftar (id, username, alamat, potensi, password) VALUES('$id','$username', '$alamat', '$potensi', '$password')");

    // cek hasil query
    if ($query) {
        // jika berhasil tampilkan pesan berhasil insert data
        header('location:login.php?pesan=3');
    } else {
        // jika gagal tampilkan pesan kesalahan
        header('location:daftar.php?pesan=2');
    }
}
