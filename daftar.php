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

	<link rel="canonical" href="https://demo-basic.adminkit.io/pages-sign-up.html" />

	<title>PUSAKA || Daftar</title>

	<link href="assets/css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>

<body>
	<main class="d-flex w-100">
		<div class="container d-flex flex-column">
			<div class="row vh-100">
				<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">

						<div class="text-center mt-4">
							<h1 class="h3">CREATE ACCOUNT <b>PUSAKA</b></h1>
							<p class="lead">
								<?php
								require_once "config/database.php";

								if (isset($_GET['pesan'])) {
									if ($_GET['pesan'] == "2") {
										echo "<div class='alert'>Pendaftaran Akun Gagal</div>";
									} else if ($_GET['pesan'] == "logindulu") {
										echo "<div class='alert'>Silahkan Login dulu !</div>";
									}
								}
								?>
							</p>
						</div>

						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
									<form action="proses-daftar.php" method="post">
										<div class="mb-3">
											<label class="form-label">Username</label>
											<input class="form-control form-control-lg" type="text" name="username" placeholder="Enter Your Username" />
										</div>

										<p><input type="hidden" name="level" class="form_login" placeholder="" value="User" required="required"></P>

										<div class="mb-3">
											<label class="form-label">Id</label>
											<input class="form-control form-control-lg" type="number" name="nis" placeholder="Enter Your Id" />
										</div>
										<div class="mb-3">
											<label class="form-label">Password</label>
											<input class="form-control form-control-lg" type="password" name="password" placeholder="Enter Your password" />
										</div>
										<div class="text-center mt-3">
											<input type="submit" name="simpan" class="btn btn-lg btn-primary" value="Daftar">
										</div>
									</form>

									<hr>
									<p>
										<center>Have An Account?
											<a href="login.php">Login</a>
										</center>
									</p>
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