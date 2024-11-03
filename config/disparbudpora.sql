
-- Database Backup --
-- Ver. : 1.0.1
-- Host : 127.0.0.1
-- Generating Time : Nov 02, 2024 at 07:49:05:AM


CREATE TABLE `pegawai` (
  `nis` int(8) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `bidang` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB AUTO_INCREMENT=9091 DEFAULT CHARSET=utf8mb4;

INSERT INTO pegawai VALUES
("1","Ajat Sudrajat","Pembimbing","pariwisata","12345678","fauzyahmad@02","1872217549_2.jpg"),
("2","Pepen","Pegawai","Umum","9090909090","pepen@gmail.com","1838121616_images.jpg");

CREATE TABLE `seminar` (
  `idseminar` int(5) NOT NULL AUTO_INCREMENT,
  `nis` int(8) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

INSERT INTO seminar VALUES
("22","155","pengesahan sk pokdarwis","1537362345_Pembentukan Pokdarwis Desa Cijambu.pdf","","Menunggu Persetujuan","","0","0","0","0","0"),
("23","444","","591465487_Pembentukan Pokdarwis Desa Cijambu.pdf","","Menunggu Persetujuan","","0","0","0","0","0"),
("24","2","","471485420_contoh surat penggantar.pdf","","Menunggu Persetujuan","","0","0","0","0","0"),
("25","656","","2019533927_Pembentukan Pokdarwis Desa Cijambu.pdf","","Menunggu Persetujuan","","0","0","0","0","0"),
("26","9","","651583574_Pembentukan Pokdarwis Desa Cijambu.pdf","","Menunggu Persetujuan","","0","0","0","0","0");

CREATE TABLE `user` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nis` varchar(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1284567953669 DEFAULT CHARSET=utf8mb4;

INSERT INTO user VALUES
("1","Ajat Sudrajat","ahmad","Admin","1"),
("2","fzzy_ahmad","ahmad","User","9"),
("999","pa eka","eka","Pegawai","999"),
("9990","aceng","9990","User","9990");

CREATE TABLE `users` (
  `nis` bigint(12) unsigned NOT NULL,
  `id` bigint(12) unsigned NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal_buat` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `potensi_wisata` varchar(100) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `stat` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO users VALUES
("0","155","pajagan","0000-00-00","darmaraja","Disparbudpora","1197","Aktif","912160482_Screenshot (25).png"),
("9","2","alam+buatan","2024-11-02","darmaraja","","085220507207","Belum Aktif","480013590_Tampilan-Form-Class-Diagram-Aplikasi-Pengolahan-Data-Pembayaran-Sequence-Diagram.png"),
("15","15","samalengoh","2024-10-12","gunung datar","Disparbudpora","0822222","Aktif","991373728_1.png"),
("656","656","pajagan","2024-11-02","darmaraja","Diskoperindag","909090909","Belum Aktif","1997848228_Tampilan-Form-Class-Diagram-Aplikasi-Pengolahan-Data-Pembayaran-Sequence-Diagram.png"),
("9900","9900","cibungur","2024-10-21","darmaraja","Diskoperindag","090909090909","Aktif","389431743_Screenshot (11).png");