<?php
ob_start();
require_once "config/database.php"; // Memanggil file koneksi dengan database
?>
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

	<link rel="canonical" href="https://demo-basic.adminkit.io/pages-blank.html" />

	<title>PUSAKA</title>

	<link href="assets/css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
	<link rel="canonical" href="https://demo-basic.adminkit.io/icons-feather.html" />
	<script language="javascript">
		function getkey(e) {
			if (window.event)
				return window.event.keyCode;
			else if (e)
				return e.which;
			else
				return null;
		}

		function goodchars(e, goods, field) {
			var key, keychar;
			key = getkey(e);
			if (key == null) return true;

			keychar = String.fromCharCode(key);
			keychar = keychar.toLowerCase();
			goods = goods.toLowerCase();

			// check goodkeys
			if (goods.indexOf(keychar) != -1)
				return true;
			// control keys
			if (key == null || key == 0 || key == 8 || key == 9 || key == 27)
				return true;

			if (key == 13) {
				var i;
				for (i = 0; i < field.form.elements.length; i++)
					if (field == field.form.elements[i])
						break;
				i = (i + 1) % field.form.elements.length;
				field.form.elements[i].focus();
				return false;
			};
			// else return false
			return false;
		}
	</script>
</head>

<body>
	<?php
	session_start();

	// jika tidak ada level yang ditemukan pada sesi login, maka akan diarahkan ke halaman login.php dengan tambahan pesan gagal.
	// fitur ini digunakan agar yang belum login tidak dapat masuk ke dalam aplikasi.
	if ($_SESSION['level'] == "") {
		header("location:login.php?pesan=gagal");
	}
	?>
	<div class="wrapper">
		<nav id="sidebar" class="sidebar js-sidebar">
			<?php
			if ($_SESSION['level'] == "Admin") {
				include 'menu/menu-admin.php'; // Jika level pengguna yang login @Admin, maka akan memanggil file menu-admin.php yang terdapat pada folder menu.

			} else if ($_SESSION['level'] == "Pegawai") {
				include 'menu/menu-pegawai.php'; // Jika level pengguna yang login @Pegawai, maka akan memanggil file menu-admin.php yang terdapat pada folder menu.

			} else if ($_SESSION['level'] == "User") {
				include 'menu/menu-user.php'; // Jika level pengguna yang login @User, maka akan memanggil file menu-admin.php yang terdapat pada folder menu.
			}
			?>
		</nav>

		<div class="main">
			<nav class="navbar navbar-expand navbar-light navbar-bg">
				<a class="sidebar-toggle js-sidebar-toggle">
					<i class="hamburger align-self-center"></i>
				</a>

				<div class="navbar-collapse collapse">
					<ul class="navbar-nav navbar-align">
						<li class="nav-item dropdown">
							<a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
								<i class="align-middle" data-feather="settings"></i>
							</a>

							<a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
								<img src="assets/img/avatars/logo.jpg" class="avatar img-fluid rounded me-1" alt="Charles Hall" /> <span class="text-dark"> <?php echo $_SESSION['level']; ?>
								</span>
							</a>
							<div class="dropdown-menu dropdown-menu-end">
								<a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="user"></i> Profile</a>
								<a class="dropdown-item" href="?page=ubah&id=<?php echo $ids ?>"><i class="align-middle me-1" data-feather="settings"></i> Settings</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="logout.php"><i class="align-middle" data-feather="power"></i> Log out</a>
							</div>
						</li>
					</ul>
				</div>
			</nav>

			<main class="content">
				<div class="container-fluid p-0">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">

									<?php
									if ($_SESSION['level'] == "Admin") {
										include 'routes/admin-routes.php'; // jika level pengguna yang login @Admin, maka akan dipanggil file admin-routes.php yang berada pada folder routes.

									} else if ($_SESSION['level'] == "Pegawai") {
										include 'routes/pegawai-routes.php'; // jika level pengguna yang login @Pegawai, maka akan dipanggil file pegawai-routes.php yang berada pada folder routes.

									} else if ($_SESSION['level'] == "User") {
										include 'routes/user-routes.php'; // jika level pengguna yang login @User, maka akan dipanggil file user-routes.php yang berada pada folder routes.

									} else if ($_SESSION['level'] == "") {
										include 'routes/other.php'; // jika level pengguna yang login bukan siapa-siapa, maka akan dipanggil file other.php
									}
									?>

								</div>
							</div>
						</div>
					</div>

				</div>
			</main>

			<footer class="footer">
				<div class="container-fluid">
					<div class="row text-muted">
						<div class="col-6 text-start">
							<p class="mb-0">
								<a class="text-muted" href="https://adminkit.io/" target="_blank"><strong>Disparbudpora</strong></a> &copy; 2024
							</p>
						</div>
						<div class="col-6 text-end">
							<ul class="list-inline">
								<li class="list-inline-item">
									<a class="text-muted" href="https://instagram.com/disparbudporakab.smd" target="_blank">By <b>Disparbudpora</b></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>

	<script src="assets/js/app.js"></script>

</body>

</html>