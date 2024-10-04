<?php
// Panggil koneksi database
require_once "config/database.php";

if (isset($_POST['simpan'])) {
    $id            = $_POST['id'];
    $username      = mysqli_real_escape_string($db, trim($_POST['username']));
    $alamat      = mysqli_real_escape_string($db, trim($_POST['alamat pokdarwis']));
    $potensi       = mysqli_real_escape_string($db, trim($_POST['potensi wisata']));
    $password      = mysqli_real_escape_string($db, trim($_POST['password']));

    // perintah query untuk menyimpan data ke tabel is_siswa
    $query = mysqli_query($db, "INSERT INTO user (id, username, alamat pokdarwis, potensi wisata, password) VALUES('$id','$username', '$alamat pokdarwis', '$potensi  wisata', '$password')");

    // cek hasil query
    if ($query) {
        // jika berhasil tampilkan pesan berhasil insert data
        header('location:login.php?pesan=3');
    } else {
        // jika gagal tampilkan pesan kesalahan
        header('location:daftar.php?pesan=2');
    }
}
