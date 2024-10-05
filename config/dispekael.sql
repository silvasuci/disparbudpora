
-- Database Backup --
-- Ver. : 1.0.1
-- Host : 127.0.0.1
-- Generating Time : Sep 28, 2024 at 10:19:34:AM


CREATE TABLE `pegawai` (
  `nis` int(8) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `bidang` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB AUTO_INCREMENT=9091 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO seminar VALUES
("5","120220795","Aplikasi Berbasis Web","1578981951_File Seminar.pdf","github.com/AhmadMauludin/PWEB12","Disetujui","Selamat seminar","3","4","78","50","85"),
("7","120220823","Aplikasi Berbasis Web","1885701658_File Seminar.pdf","github.com/AhmadMauludin/PWEB12","Disetujui","Selamat seminar icaa","3","4","70","65","80"),
("8","120220826","Aplikasi Seminar Prakerin Berbasis Web","549492775_File Seminar.pdf","github.com/AhmadMauludin/PWEB12","Disetujui","Selamat seminar","3","4","90","93","78"),
("9","220307808","C_SHIRT","2074182362_pdf-proposal-kunjungan-industri-2023_compress.pdf","Github/AhmadMauludin/PWEB12","Disetujui","Selamat seminar","3","4","0","0","0"),
("10","11112222","surat keluar masuk","379017897_JADWAL SEM GANJIL 20242025 Episode 3.pdf","github.com/AhmadMauludin/PWEB12","Disetujui","selamat seminar silva","3","4","0","0","0"),
("11","12131415","aplikasi absensi pegawai ","324984689_KEBUTUHAN BASIS DATA_240923_142615.pdf","github/Ahmad Mauludin/PWEB12","Disetujui","selamat seminar zakiyah","3","4","0","0","0"),
("12","20807","Pengesahan sk pokdarwis ","1231838172_Selamat Datang.pdf","Github/Ahmad Mauludin/PWEB12","Disetujui","selamat seminar ","3","4","0","0","0"),
("13","120220785","Sistem Manajemen Pelayanan Informasi Pegawai","364843864_File Seminar.pdf","github.com/ghaisanailal/programprisma","Disetujui","selamat seminar ","3","4","90","95","100"),
("14","708","Asinpedas","2050496011_Cokelat Minimalis Surat izin muhadlhoroh_20240906_094442_0000.pdf","Github/AhmadMauludin/PWEB12","Disetujui","Selamat seminar otu","3","4","0","70","0"),
("15","120220817","Aplikasi berbasis web ","312836948_Surat_Perintah_1724211197818_Lomba_Agustus_2024.pdf","Github/Ahmad Mauludin/PWEB12","Disetujui","Sok","3","4","0","0","0"),
("16","120220792","Aplikasi Berbasis Web","1533459044_B-2024.pdf","Github/ahmadmauludin/PWEB12","Disetujui","Gaskeun","3","4","0","0","0"),
("17","120220829","aplikasi berbasis web","1247484288_Selamat Datang.pdf","github.com/AhmadMauludin/PWEB12","Disetujui","Manga","3","4","0","0","0"),
("18","120220831","Aplikasi Berbasis Web","1581546092_Ahmad_Ismail_Semua_Bisa_Menulis_Kaligrafi.pdf","Github/ahmadmauludin/PWEB12","Disetujui","Ok","3","4","0","0","0"),
("19","120220822","aplikasi inventaris dan sistem monitoring suhu dan kelembaban alat standar di uptd metrologi kab. Sumedang","1913830915_File Seminar.pdf","github.com/AhmadMauludin/PWEB12","Disetujui","Ok","3","4","0","0","0"),
("20","98765","Aplikasi Santri","2017207302_File Seminar.pdf","github.com/AhmadMauludin/PWEB12","Disetujui","U","3","4","99","0","0");

CREATE TABLE `user` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nis` varchar(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1284567953666 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
("708","Syifaqurrotuaini","azaamine","User","0708"),
("20807","Fauzy","ahmad","User","020807"),
("98765","Maulana","maulana","User","98765"),
("11112222","silva melani","anakbaik","User","11112222"),
("12131415","zasri","september123","User","12131415"),
("120220785","ghaitsa","ghaitsa","User","120220785"),
("120220792","Alfi Siti Fauziyyah","mpicantik","User","120220792"),
("120220795","muhgra","agra","User","120220795"),
("120220817","Muhammad Najib Husaini Fathurr","husen","User","120220817"),
("120220822","Nidia Gitania","nidia","User","120220822"),
("120220823","nisatia","nisanovember","User","120220823"),
("120220826","siti nurazizah","sitinurazizah","User","120220826"),
("120220829","satiaaa","zahraa","User","120220829"),
("120220831","Winda eka sawitri","oktober","User","120220831"),
("120220833","Intan Nuraeni","intan","User","120220833"),
("123456789","zaasriicii","zakiyyahpk123","User","123456789"),
("2203078080","Sarahh","123sukses","User","220307808"),
("121314151617","suci silva","anakbaik123","User","121314151"),
("1284567953665","zasrii","zakiyyah12345","User","128456795");

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO users VALUES
("708","708","Syifa Qurrotu Aini","2007-03-13","Dsn. Campaka, Ds. Sundamekar, RT 02, RW 04, Kec. Cisitu, Kab. Sumedang","Diskominfosanditik","625388776699","Aktif","460311946_IMG-20240928-WA0009.jpg"),
("20807","20807","Fauzy ahmad","2007-08-02","Darmaking","Disparbudpora","082295153586","Aktif","1745402583_IMG-20240927-WA0002.jpg"),
("98765","98765","Maulana Uciha","2024-09-28","Konohagakure","BPKAD","56756757575","Aktif","378968302_1000_F_435340582_8yoV1uzvHNOYzddAgHZuXJgSdquFrkJp.jpg"),
("11112222","11112222","silva melani","2024-05-01","tanjungkerta","BPKAD","081320186397","Aktif","462476662_2f851c1ba7be1f243a3ddbaa88a8bf27.jpg"),
("12131415","12131415","zakiyyah","2024-09-27","subang","Disdukcapil","081224719095","Aktif","1794461544_c2ef133c8396ae1cd6315fac14d0de8a.jpg"),
("120220785","120220785","Ghaisa Nailal Faroha","2007-11-02","Tanjungsari","Kementerian Agama","0857111111","Aktif","1667805050_1696307224982-removebg-preview.png"),
("120220792","120220792","Alfi Siti Fauziyyah","2006-11-02","Rancakalong","Diskominfosanditik","6282216448153","Aktif","517453720_twice_logo_by_mimilevi_ddz8buj-fullview.png"),
("120220795","120220795","Muhamad Agra Rizkia Mulyana","2006-01-01","Sumedang Jawa Barat","Diskominfosanditik","628999000777","Aktif","646086561_city.png"),
("120220817","120220817","Muhammad Najib Husaini Fathurrohman ","2007-09-14","Dusun.sukaluyu,desa.cilengkrang,kecamatan.wado, kabupaten.sumedang","Dinas Pendidikan","081397746333","Aktif","809862115_IMG-20240927-WA0002.jpg"),
("120220822","120220822","Nidia Gitania","2006-11-14","Sukasari","Diskoperindag","085123456789","Aktif","613257983_pratama-arhan-320x_.png"),
("120220823","120220823","Nisa Nuraeni","2007-11-15","Lingkungan Hegarmanah","Disparbudpora","6285794956470","Aktif","189-1696307224982.jpg"),
("120220826","120220826","Siti nurazizah","2006-10-20","Lingkungan Tanjungsari","Dinas Pendidikan","6282315917436","Aktif","2140118128_1696307224982.jpg"),
("120220829","120220829","Syatia Az - Zahra Virgiani","2007-03-20","Jatigede","Disparbudpora","081222057496","Aktif","2043409910_444e0df3ba653549aa3ae22ff168708c_1727246574041_0.webp.jpg"),
("120220831","120220831","Winda eka sawitri","2006-10-29","Sembir","Dinas Pendidikan","6281901353858","Aktif","1617258577_twice_logo_by_mimilevi_ddz8buj-fullview.png"),
("120220833","120220833","Intan Nuraeni","2006-05-27","Rancakalong","Diskoperindag","081319772756","Aktif","1706418275_pratama-arhan-320x_.png"),
("220307808","2203078080","Sarah Amelia Anugrah","2007-03-22","Kertasari","Diskominfosanditik","0832384149","Aktif","486950069_242659596_109930898111134_7838980731149597570_n_121404.jpg");