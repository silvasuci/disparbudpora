<?php
// Panggil koneksi database
require_once "config/database.php";

if (isset($_POST['simpan'])) {
	$username      = mysqli_real_escape_string($db, trim($_POST['username']));
	$password  	   = mysqli_real_escape_string($db, trim($_POST['password']));
	$level         = $_POST['level'];
	$nip  		   = $_POST['nip'];

	// perintah query untuk menyimpan data ke tabel is_siswa
	$query = mysqli_query($db, "INSERT INTO user (username, password, level, nip) VALUES('$username', '$password', '$level', '$nip')");

	// cek hasil query
	if ($query) {
		// jika berhasil tampilkan pesan berhasil insert data
		header('location: ?page=user-tampil&alert=2');
	} else {
		// jika gagal tampilkan pesan kesalahan
		header('location: ?page=user-tampil&alert=1');
	}
}
