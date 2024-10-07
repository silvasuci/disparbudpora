<?php
// memanggil file koneksi.php untuk melakukan koneksi database
require_once 'config/database.php';

$nip        = $_POST['nip'];

$stat     = $_POST['stat'];

// jalankan query UPDATE berdasarkan nip yang usersnya kita edit
$query  = "UPDATE users SET stat = '$stat'";
$query .= "WHERE nip = '$nip'";
$result = mysqli_query($db, $query);
// periska query apakah ada error
if (!$result) {
    die("Query gagal dijalankan: " . mysqli_errno($db) .
        " - " . mysqli_error($db));
} else {
    echo "<script>window.location='?page=users-tampil&alert=3';</script>";
}
