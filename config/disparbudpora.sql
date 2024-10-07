
-- Database Backup --
-- Ver. : 1.0.1
-- Host : 127.0.0.1
-- Generating Time : Oct 07, 2024 at 04:02:15:AM


CREATE TABLE `pegawai` (
  `nip` int(8) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `bidang` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=InnoDB AUTO_INCREMENT=9091 DEFAULT CHARSET=utf8mb4;

INSERT INTO pegawai VALUES
("1","Ajat Sudrajat","Pembimbing","Disparbudpora","123456789","fauzyahmad@02","1872217549_2.jpg");

CREATE TABLE `seminar` (
  `idseminar` int(5) NOT NULL AUTO_INCREMENT,
  `nip` int(8) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `tautan` varchar(255) NOT NULL,
  `statussem` varchar(30) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `pengujilap` int(8) NOT NULL,
  `pengujiapl` int(8) NOT NULL,
  `nilaiprakerin` int(3) NOT NULL,
  `nilailaporan` int(3) NOT NULL,
  `nilaiaplikasi` int(3) NOT NULL,
  PRIMARY KEY (`idseminar`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

INSERT INTO seminar VALUES
("21","2","pengesahan sk pokdarwis","756777841_Pembentukan Pokdarwis Desa Cijambu.pdf","https://github.com/AhmadMauludin/PWEB12","Menunggu Persetujuan","","0","0","0","0","0");

CREATE TABLE `user` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nip` varchar(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1284567953666 DEFAULT CHARSET=utf8mb4;

INSERT INTO user VALUES
("1","Ajat Sudrajat","ahmad","Admin","1"),
("2","rcka_caa","ahmad","User","2"),
("3","nisa","ahmad","User","3");

CREATE TABLE `users` (
  `nip` bigint(12) unsigned NOT NULL,
  `id` bigint(12) unsigned NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal_buat` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `stat` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO users VALUES
("2","2","gajah depa","2024-10-06","cimalaka","Disparbudpora","999999999999999","Belum Aktif","966277966_1.jpg");