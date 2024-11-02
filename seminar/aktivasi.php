<?php
// memanggil file koneksi.php untuk melakukan koneksi database
require_once 'config/database.php';
$idseminar      = $_POST['idseminar'];
$statussem      = $_POST['statussem'];
$ket            = $_POST['ket'];


// jalankan query UPDATE berdasarkan nis yang seminarnya kita edit
$query  = "UPDATE seminar SET statussem = '$statussem', ket = '$ket'";
$query .= "WHERE idseminar = '$idseminar'";
$result = mysqli_query($db, $query);
// periska query apakah ada error
if (!$result) {
    die("Query gagal dijalankan: " . mysqli_errno($db) .
        " - " . mysqli_error($db));
} else {
    echo "<script>window.location='?page=seminar-tampil&alert=3';</script>";
}
