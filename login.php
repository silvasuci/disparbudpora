<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="shortcut icon" href="assets/img/icons/kujang.png" />

	<link rel="canonical" href="https://demo-basic.adminkit.io/pages-sign-in.html" />

	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>PUSAKA || Login</title>
	<link rel="stylesheet" href="style.css">
	<link href="assets/css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>

<body>



	<main class="d-flex w-100">
		<div class="container d-flex flex-column">
			<div class="row vh-100">
				<div class="col-sm-10 col-md-8 col-lg-4 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">

						<div class="text-center mt-4">
							<h1 class="h2">Welcome To Pusaka </h1>
							
							<p class="lead">
								<?php
								if (isset($_GET['pesan'])) {
									if ($_GET['pesan'] == "gagal") {
										echo "<div class='alert'>Id User dan Password tidak sesuai !</div>";
									} else if ($_GET['pesan'] == "logindulu") {
										echo "<div class='alert'>Silahkan Login dulu !</div>";
									} else if ($_GET['pesan'] == "3") {
										echo "<div class='alert'><b>Pendaftaran akun berhasil.</b> Silahkan Login menggunakan id / NIS dan password yang barusan anda buat</div>";
									}
								}
								?> </p>
						</div>

						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
									<div class="text-center">
										<img src="assets/img/icons/hhh.png" alt="logo" class="img-fluid rounded-circle" width="132" height="132" />
									</div>
									
									<form action="cek_login.php" method="post">
										<div class="mb-3">
											<label class="form-label">Id</label>
											<input type="text" name="id" class="form-control form-control-lg" placeholder="Enter your id" required="required" />
										</div>
										<div class="mb-3">
											<label class="form-label">Password</label>
											<input class="form-control form-control-lg" type="password" name="password" placeholder="Enter your password" />

										</div>
										<div>

										</div>
										<div class="text-center mt-3">
											<input type="submit" class="btn btn-lg btn-primary" value="MASUK">
										</div>
									</form>
									<hr>

									<label class="form-check">
										<span class="form-check-label">
											<center>Dont Have An Account? <a href="daftar.php"> Daftar</a></center>
										</span>
									</label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<script src="assets/js/app.js"></script>

</body>

</html>