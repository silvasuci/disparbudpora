
-- Database Backup --
-- Ver. : 1.0.1
-- Host : 127.0.0.1
-- Generating Time : Oct 30, 2024 at 08:10:15:AM


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
("1","Ahmad Mauludin, S.Kom","Kaprog","Ketua","6289502918001","ahmadmaldin1799@gmail.com","1350683862_WhatsApp Image 2023-08-24 at 21.05.13.jpeg"),
("2","Cintiani Dewy, S.Pd","Pembimbing","BPKAD","62897888777","bucin@gmail.com","826369807_BRIPKAguide (1).png"),
("3","Maldin Uzumaki, S.Pd","Penguji","Laporan","6289765432","maldines@gmail.com","335-1696307224982-removebg-preview.png"),
("4","Mohammad Rifqie Fauzi, S.Kom","Penguji","Aplikasi","62877788899","mrifqie@gmail.com","410764901_1000_F_435340582_8yoV1uzvHNOYzddAgHZuXJgSdquFrkJp.jpg"),
("5","Winiar Yuliany, S.Sn","Pembimbing","Diskominfosanditik","62897666555","wini@gmail.com","1425881065_city.png"),
("6","H. Deky Gunawan, S.Pd.I","Pembimbing","Dinas Arsip","6281322333057","deky@gmail.com","1600716638_SMK.jpg"),
("7","Ai Siti Nurwaskanah, S.Pd","Pembimbing","Kementerian Agama","6287769613803","ai@gmail.com","1934989062_1696307224982.jpg"),
("8","Wawan Setaiwan, S.Pd","Pembimbing","Disparbudpora","6282121922059","wawan@gmai.com","1558080652_SMK.jpg"),
("9","Hj. Nina Marlina, S.Pd","Pembimbing","Disdukcapil","6281320341057","nina@gmail.com","1460193531_SMK.jpg"),
("10","Doni Mulyadi, S.Pd","Pembimbing","Dinas Pendidikan","6281563887197","doni@gmail.com","57024353_SMK.jpg"),
("11","Erna Sri Meilani M, S.S","Pembimbing","Diskoperindag","6285222680088","erna@gmail.com","1147625936_SMK.jpg");

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

INSERT INTO seminar VALUES
("21","120220795","Aplikasi Seminar Prakerin Berbasis Web","558204841_File Seminar.pdf","github.com/AhmadMauludin/PWEB12","Lulus","Selamat seminar","3","4","90","0","0");

CREATE TABLE `user` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nis` varchar(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1284567953667 DEFAULT CHARSET=utf8mb4;

INSERT INTO user VALUES
("1","ahmadmauludin","ahmad","Admin","1"),
("2","cintiani","dewy","Pegawai","2"),
("3","maldin","maldin","Pegawai","3"),
("4","rifqie","rifqie","Pegawai","4"),
("5","winiar","winiar","Pegawai","5"),
("6","dekygunawan","deky","Pegawai","6"),
("7","ainurwaskanah","ai","Pegawai","7"),
("8","wawansetiawan","wawan","Pegawai","8"),
("9","ninamarlina","nina","Pegawai","9"),
("10","donimulyadi","doni","Pegawai","10"),
("11","ernasrimeilani","erna","Pegawai","11"),
("120220795","Muhamad Agra Rizkia Mulyana","agra","User","120220795"),
("120220806","Suci Nur Fauziah","suci","User","120220806");

CREATE TABLE `users` (
  `nis` bigint(12) unsigned NOT NULL,
  `id` bigint(12) unsigned NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `stat` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO users VALUES
("120220795","120220795","Muhamad Agra Rizkia Mulyana","2005-12-09","Sumedang","Diskominfosanditik","6285172889999","Aktif","1398199758_pratama-arhan-320x_.png"),
("120220806","120220806","Suci Nur Fauziah","2005-04-09","Rancakalong Sumedang","BPKAD","628999888877","Aktif","293161120_images.jpeg");