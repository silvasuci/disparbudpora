<div class="container-fluid">
    <div class="text-center">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">DISPARBUDPORA</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
<br>
        <p><div class="text-center">
		<img src="assets/img/icons/logopusaka.png" alt="logo" class="img-fluid rounded-circle" width="125" height="125" >
		</div></p>

        <a class="navbar-brand" href="index.php">
            <i class="glyphicon glyphicon-grain"></i>
            <b>Pengesahan Usulan 
             Surat<br> Keputusan</b> <span class="badge">
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">

            <?php
            $ids = $_SESSION['id'];
            $jumlah_record = mysqli_query($db, "SELECT * FROM users where id = $ids") or die('Ada kesalahan pada query jumlah_record: ' . mysqli_error($db));
            $jumlah  = mysqli_num_rows($jumlah_record);

            if ($jumlah == 0) {
                echo "";
            } else {
                echo "
                <li><a href='?page=users-tampil'> <i class='glyphicon glyphicon-user'></i> TIM </a></li>
                <li><a href='?page=seminar'> <i class='glyphicon glyphicon-blackboard'></i> SEMINAR</a></li>
                ";
            }
            ?>

            

            <li><a href="?page=ubah&id=<?php echo $ids ?>"><i class="glyphicon glyphicon-cog"></i> SET</a></li>
            <li><a href="logout.php"> <i class="glyphicon glyphicon-log-out"></i> KELUAR</a></li>
        </ul>
    </div>
</div>


<html>

<body>
    <div class="sidebar-content js-simplebar">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">MENU</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

        <ul class="sidebar-nav">
            <li class="sidebar-header">
                
            </li>

            <li class="sidebar-item active">
                <a class="sidebar-link" href="index.php">
                    <i class="align-middle" data-feather="award"></i> <span class="align-middle">Dashboard</span>
                </a>
            </li>

            
            <li class="sidebar-item">
                <a class="sidebar-link" href="?page=seminar">
                    <i class="align-middle" data-feather="file-text"></i> <span class="align-middle">Pendaftaran Sk</span>
                </a>
            </li>


            <li class="sidebar-item">
                <a class="sidebar-link" href="?page=ubah&id=<?php echo $ids ?>">
                    <i class="align-middle" data-feather="credit-card"></i> <span class="align-middle">Setting</span>
                </a>
            </li>

        </ul>

    </div>
</body>

</html>