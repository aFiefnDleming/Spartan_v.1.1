-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 10, 2017 at 06:35 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_spartan`
--

-- --------------------------------------------------------

--
-- Table structure for table `end`
--

CREATE TABLE IF NOT EXISTS `end` (
  `id_end` int(10) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `kota` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `nsub` varchar(50) NOT NULL,
  `tu` varchar(50) NOT NULL,
  `ntu` varchar(50) NOT NULL,
  `ka` varchar(50) NOT NULL,
  `nka` varchar(50) NOT NULL,
  PRIMARY KEY (`id_end`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `end`
--

INSERT INTO `end` (`id_end`, `text`, `kota`, `sub`, `nsub`, `tu`, `ntu`, `ka`, `nka`) VALUES
(1, 'masuk bulan laporan 16 April 2013', 'Semarang', 'MUHAMMAD KURNIAWAN', 'Jaksa Muda NIP. 197809182008012011', 'ARDI KURNIAWAN', 'Jaksa Muda NIP. 197809182008012011', 'ANDYS SANDRA KURNIAWAN', 'Jaksa Muda NIP. 197809182008012011');

-- --------------------------------------------------------

--
-- Table structure for table `file_upload`
--

CREATE TABLE IF NOT EXISTS `file_upload` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `Filename` varchar(100) NOT NULL,
  `Folder` varchar(100) NOT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hukuman`
--

CREATE TABLE IF NOT EXISTS `hukuman` (
  `id_hukuman` int(10) NOT NULL AUTO_INCREMENT,
  `peg` varchar(50) NOT NULL,
  `pasal` varchar(50) NOT NULL,
  `pengaduan` varchar(50) NOT NULL,
  `hukuman` varchar(50) NOT NULL,
  `kep` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `ket` text NOT NULL,
  `periode` varchar(50) NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_hukuman`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE IF NOT EXISTS `jenis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kodejenis` char(5) NOT NULL,
  `urjenis` char(50) NOT NULL,
  PRIMARY KEY (`id`,`kodejenis`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `kodejenis`, `urjenis`) VALUES
(1, 'S', 'Surat Biasa'),
(2, 'ST', 'Surat Tugas'),
(3, 'ND', 'Nota Dinas'),
(4, 'KET', 'Surat Keterangan'),
(5, 'UND', 'Undangan'),
(6, 'R', 'Surat Rahasia'),
(7, 'SR', 'Surat Sangat Rahasia'),
(8, 'LAP', 'Laporan'),
(9, 'SI', 'Surat Izin'),
(10, 'NDR', 'Nota Dinas Rahasia'),
(11, 'BA', 'Berita Acara'),
(12, 'BAST', 'Berita Acara Serah Terima'),
(13, 'Mo', 'Memo'),
(14, 'KEP', 'Surat Keputusan'),
(15, 'SP', 'Surat Pengantar'),
(16, 'PER', 'Peraturan DJPB'),
(17, 'SPTPL', 'Surat Pernyataan Tanggungjawab Pekerjaan Lembur'),
(18, 'PRINT', 'Surat Perintah'),
(19, 'BAR', 'Berita Acara Rekonsiliasi'),
(20, 'NP', 'Nota Pertimbangan'),
(21, 'SPK', 'Surat Perintah Kerja'),
(22, 'PEM', 'Pemberitahuan'),
(23, 'SPMT', 'Surat Pernyataan Melaksanakan Tugas'),
(24, 'SE', 'Surat Edaran'),
(25, 'BAP', 'Berita Acara Pembayaran'),
(26, 'SPY', 'Surat Pernyataan'),
(27, 'PENG', 'Pengumuman'),
(28, 'BAPP', 'Berita Acara Penyelesaian Pekerjaan');

-- --------------------------------------------------------

--
-- Table structure for table `kompilasi`
--

CREATE TABLE IF NOT EXISTS `kompilasi` (
  `id_kompilasi` int(10) NOT NULL AUTO_INCREMENT,
  `tempat` varchar(50) NOT NULL,
  `an` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kompilasi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kompilasi`
--

INSERT INTO `kompilasi` (`id_kompilasi`, `tempat`, `an`, `nama`, `nip`) VALUES
(1, 'Purwodadi', 'Asisten Pengawas', 'Wawan Hermawan Kurniaqwan', 'Jaksa Madya NIP. 1234 567 897 8797');

-- --------------------------------------------------------

--
-- Table structure for table `nama`
--

CREATE TABLE IF NOT EXISTS `nama` (
  `id_nama` int(10) NOT NULL AUTO_INCREMENT,
  `kementerian` varchar(100) DEFAULT NULL,
  `eselon1` varchar(100) DEFAULT NULL,
  `eselon2` varchar(100) DEFAULT NULL,
  `eselon3` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telp` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_nama`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nama`
--

INSERT INTO `nama` (`id_nama`, `kementerian`, `eselon1`, `eselon2`, `eselon3`, `nama`, `alamat`, `telp`, `email`, `web`) VALUES
(1, 'KEMENTERIAN KEUANGAN REPUBLIK INDONESIA', 'DIREKTORAT JENDERAL PERBENDAHARAAN', 'KANTOR WILAYAH PROVINSI ACEH', '', 'KANTOR WILAYAH DITJEN PERBENDAHARAAN PROVINSI ACEH', 'Gedung Keuangan Negara A Lantai II, III  Jl. Teungku Chik Ditiro', '(0651)22462, 21279 Faks: (0651)22432', '-kanwil.bandaaceh@gmail.com', '-www.perbendaharaanaceh.net');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `pangkat` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `nrp` varchar(50) NOT NULL,
  `jab` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `pangkat`, `nip`, `nrp`, `jab`) VALUES
(47, 'Irwan Susanto', 'Penata (III/c)', '197506021999031001', '-', 'Kepala Subbagian Kepegawaian');

-- --------------------------------------------------------

--
-- Table structure for table `pemeriksa`
--

CREATE TABLE IF NOT EXISTS `pemeriksa` (
  `id_pemeriksa` int(10) NOT NULL AUTO_INCREMENT,
  `tgl` date NOT NULL,
  `sumber` varchar(150) NOT NULL,
  `terlapor` varchar(150) NOT NULL,
  `uraian` varchar(150) NOT NULL,
  `telaahan` varchar(150) NOT NULL,
  `petunjuk` varchar(150) NOT NULL,
  `lporan` varchar(150) NOT NULL,
  `petunjuk1` varchar(150) NOT NULL,
  `lporan2` varchar(150) NOT NULL,
  `petunjuk2` varchar(150) NOT NULL,
  `putusan` varchar(150) NOT NULL,
  `ket` varchar(150) NOT NULL,
  `periode` varchar(50) NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pemeriksa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE IF NOT EXISTS `pengaduan` (
  `id_pengaduan` int(10) NOT NULL AUTO_INCREMENT,
  `tgl` date NOT NULL,
  `sumber` varchar(150) NOT NULL,
  `terlapor` varchar(150) NOT NULL,
  `uraian` varchar(150) NOT NULL,
  `telaah` varchar(150) NOT NULL,
  `klarifikasi` varchar(150) NOT NULL,
  `inspeksi` varchar(150) NOT NULL,
  `kajati` varchar(150) NOT NULL,
  `jamwas` varchar(150) NOT NULL,
  `jaksa` varchar(150) NOT NULL,
  `putusan` varchar(150) NOT NULL,
  `ket` varchar(150) NOT NULL,
  `periode` varchar(50) NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pengaduan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rarsip`
--

CREATE TABLE IF NOT EXISTS `rarsip` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `jnsarsip` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `rarsip`
--

INSERT INTO `rarsip` (`id`, `jnsarsip`) VALUES
(1, ''),
(2, ''),
(3, 'Video'),
(4, 'Kompress');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id_register` int(10) NOT NULL AUTO_INCREMENT,
  `nos` varchar(50) NOT NULL,
  `tgl1` date NOT NULL,
  `peg` varchar(50) NOT NULL,
  `pejabat` varchar(50) NOT NULL,
  `pasal` varchar(50) NOT NULL,
  `hukuman` varchar(50) NOT NULL,
  `tgl2` date NOT NULL,
  `tgl3` date NOT NULL,
  `ket` text NOT NULL,
  `periode` varchar(50) NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_register`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rjabatan`
--

CREATE TABLE IF NOT EXISTS `rjabatan` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `kode` varchar(6) NOT NULL,
  `urbidang` varchar(75) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `eselon` char(2) NOT NULL,
  `kontrol` varchar(25) NOT NULL,
  PRIMARY KEY (`id`,`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `rjabatan`
--

INSERT INTO `rjabatan` (`id`, `kode`, `urbidang`, `jabatan`, `eselon`, `kontrol`) VALUES
(1, 'BG0000', 'Kepala Kantor', 'Kepala Kantor', '21', '/WPB.01/'),
(2, 'BG0100', 'Bagian Umum', 'Kepala Bagian Umum', '31', '/WPB.01/BG.01/'),
(3, 'BG0101', 'Subbagian Kepegawaian', 'Kepala Subbagian Kepegawaian', '41', '/WPB.01/BG.0101/'),
(4, 'BG0102', 'Subbagian Keuangan', 'Kepala Subbagian Keuangan', '41', '/WPB.01/BG.0102/'),
(5, 'BG0103', 'Subbagian TU/RT', 'Kepala Subbagian TU/RT', '41', '/WPB.01/BG.0103/'),
(6, 'BG0104', 'Subbagian Penilaian Kinerja', 'Kepala Subbagian Penilaian Kinerja', '41', '/WPB.01/BG.0104/'),
(7, 'BD0100', 'Bidang PPA I', 'Kepala Bidang PPA I', '31', '/WPB.01/BD.01/'),
(8, 'BD0101', 'Seksi PPA IA', 'Kepala Seksi PPA I/A', '41', '/WPB.01/BD.0101/'),
(9, 'BD0102', 'Seksi PPA IB', 'Kepala Seksi PPA I/B', '41', '/WPB.01/BD.0102/'),
(10, 'BD0103', 'Seksi PPA IC', 'Kepala Seksi PPA I/C', '41', '/WPB.01/BD.0103/'),
(11, 'BD0104', 'Seksi PPA ID', 'Kepala Seksi PPA I/D', '41', '/WPB.01/BD.0104/'),
(12, 'BD0200', 'Bidang PPA II', 'Kepala Bidang PPA II', '31', '/WPB.01/BD.02/'),
(13, 'BD0201', 'Seksi PPA IIA', 'Kepala Seksi PPA II/A', '41', '/WPB.01/BD.0201/'),
(14, 'BD0202', 'Seksi PPA IIB', 'Kepala Seksi PPA II/B', '41', '/WPB.01/BD.0202/'),
(15, 'BD0203', 'Seksi PPA IIC', 'Kepala Seksi PPA II/C', '41', '/WPB.01/BD.0203/'),
(16, 'BD0300', 'Bidang SKKI', 'Kepala Bidang SKKI', '31', '/WPB.01/BD.03/'),
(17, 'BD0301', 'Seksi Kepatuhan Internal', 'Kepala Seksi Kepatuhan Internal', '41', '/WPB.01/BD.0301/'),
(18, 'BD0302', 'Seksi SPV. Proses Bisnis', 'Kepala Seksi Spv. Proses Bisnis', '41', '/WPB.01/BD.0302/'),
(19, 'BD0303', 'Seksi SPV. Teknis Aplikasi', 'Kepala Seksi Spv. Teknis Aplikasi', '41', '/WPB.01/BD.0303/'),
(20, 'BD0400', 'Bidang PAPK', 'Kepala Bidang PAPK', '31', '/WPB.01/BD.04/'),
(21, 'BD0401', 'Seksi ASPLK', 'Kepala Seksi ASPLK', '41', '/WPB.01/BD.0401/'),
(22, 'BD0402', 'Seksi PSAPP', 'Kepala Seksi PSAPP', '41', '/WPB.01/BD.0402/'),
(23, 'BD0403', 'Seksi PSAPD', 'Kepala Seksi PSAPD', '41', '/WPB.01/BD.0403/');

-- --------------------------------------------------------

--
-- Table structure for table `rkantor`
--

CREATE TABLE IF NOT EXISTS `rkantor` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `kantor` varchar(210) DEFAULT NULL,
  `alamat` varchar(450) DEFAULT NULL,
  `telpon` varchar(60) DEFAULT NULL,
  `faks` varchar(60) DEFAULT NULL,
  `pos` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=320 ;

--
-- Dumping data for table `rkantor`
--

INSERT INTO `rkantor` (`id`, `kantor`, `alamat`, `telpon`, `faks`, `pos`, `email`) VALUES
(1, 'Menteri Keuangan', 'Gedung Djuanda I Jl. Dr. Wahidin Raya No.1 Jakarta Pusat', '(021) 3814324', '\\N', '\\N', '\\N'),
(2, 'Sekretariat Kementerian Keuangan', 'Gedung Djuanda I Jl. Dr. Wahidin Raya No.1 Jakarta Pusat', '(021) 3449230', '\\N', '\\N', 'setjen.kemenkeu.go.id'),
(3, 'Dit.jen Perbendaharaan', 'Gedung Prijadi Praptosuhardjo I Jl. Banteng Timur No.2-4 Jakarta Pusat/ 10710', '(021) 3814411', '\\N', '\\N', 'perbendaharaan.kemekeu.go.id'),
(4, 'Dit.jen Bea Dan Cukai', 'Jl. Achmad Yani By pass, Rawamangun Jakarta Timur13230', '9021) 1500225', '\\N', '\\N', 'beacukai.go.id'),
(5, 'Dit.jen Kekayaan Negara', 'Gedung PAIK (Ged.Syafrudin Prawiranegara) Jl. Lapangan Banteng Timur No. 2-4 Jakarta Pusat 10710', '(021) 1500991', '\\N', '\\N', 'djkn.kemenkeu.go.id'),
(6, 'Dit.jen Anggaran', 'Gedung Sutikno Slamet Jl. Dr. Wahidin raya No.1 Jakarta Pusat 10710', '(021) 34832511', '\\N', '\\N', 'anggaran.kemenkeu.go.id '),
(7, 'Dit.jen Perimbangan Keuangan', 'Gedung Radius Prawiro Jl. Dr. Wahidin Raya No.1 Jakarta Pusat 10710', '(021) 3509442', '\\N', '\\N', 'djpk.kemenkeu.go.id'),
(8, 'Dit.jen Pajak', 'Gedung Utama jl. Jend. Gatot Subroto No. 40-42 Jakarta Selatan 12190', '(021) 1500200', '\\N', '\\N', 'pajak.go.id'),
(9, 'Dit.jen Pengelolaan Pembiayaan Dan Resiko', 'Gedung Frans Seda Jl. Dr. Wahidin Raya No.1 Jakarta Pusat 10710', '(021) 3865330', '\\N', '\\N', 'djppr.kemenkeu.go.id'),
(10, 'Inspektorat Jenderal', 'Gedung Djuanda II Jl. Dr. Wahidin Raya No.1 Jakarta Pusat 10710', '(021) 3865430', '\\N', '\\N', 'itjen.kemenkeu.go.id'),
(11, 'Badan Kebijakan Fiskal', 'Gedung R.M. Notohamiprodjo Jl. Dr. Wahidin Raya No. 1 Jakarta Pusat', '(021) 34833486', '\\N', '\\N', 'fiskal.kemenkeu.go.id'),
(12, 'BPPK Jakarta', 'Jl. Purnawarman No.99, Kebayoran Baru Jakarta Selatan 12110', '(021) 29054300', '\\N', '\\N', 'BPPK.kemenkeu.go.id'),
(13, 'SetDit.jen Perbendaharaan', 'Gedung Prijadi Praptosuhardjo I lantai 1 dan 2, Jalan Lapangan Banteng Timur No.2-4 Jakarta Pusat', '(021) 3449230', '\\N', '\\N', '\\N'),
(14, 'Dit. Pelaksanaan Anggaran', 'Gedung Prijadi Praptosuhardjo I lantai 4, Jalan Lapangan Banteng Timur No.2-4 Jakarta Pusat', '(021) 3449230', '\\N', '\\N', '\\N'),
(15, 'Dit. Pengelolaan Kas Negara', 'Gedung Prijadi Praptosuhardjo II lantai 2 dan 3, Jalan Lapangan Banteng Timur No.2-4 Jakarta Pusat', '(021) 3449230', '\\N', '\\N', '\\N'),
(16, 'Dit. Sistem Manajemen Investasi', 'Gedung Prijadi Praptosuhardjo I lantai 3, Jalan Lapangan Banteng Timur No.2-4 Jakarta Pusat', '(021) 3449230', '\\N', '\\N', '\\N'),
(17, 'Dit. PPK BLU', 'Gedung Prijadi Praptosuhardjo I lantai 5, Jalan Lapangan Banteng Timur No.2-4 Jakarta Pusat', '(021) 3449230', '\\N', '\\N', '\\N'),
(18, 'Dit. Akuntansi Dan Pelaporan', 'Gedung Prijadi Praptosuhardjo III lantai 1 dan 2 Jalan Budi Utomo No.6, Jakarta Pusat', '(021) 3449230', '\\N', '\\N', '\\N'),
(19, 'Dit. Sistem Perbendaharaan', 'Gedung Prijadi Praptosuhardjo III lantai 3 dan 4 Jalan Budi Utomo No.6, Jakarta Pusat', '(021) 3449230', '\\N', '\\N', '\\N'),
(20, 'Dit. Sistem Informasi Dan Teknologi Perbendaharaan', 'Gedung Prijadi Praptosuhardjo III lantai 3, Jalan Dr. Wahidin II No.3, Jakarta Pusat', '(021) 3449230', '\\N', '\\N', '\\N'),
(21, 'Kanwil DJPBN Provinsi Aceh', 'GKN Gedung A Lt.2-3 Jl.Tengku chik Di Tiro Banda Aceh / 23241', '\\N', '0651-31094', '\\N', '\\N'),
(22, 'Kanwil DJPBN Provinsi Sumatera Utara', 'Jl. Diponegoro No.30A Medan', '\\N', '061-4148440,4538600', '1651/', 'kanwilsumut.DJPBN@depkeu.go.id'),
(23, 'Kanwil DJPBN Provinsi Sumatera Barat', 'Jl. Khatib Sulaiman No.53 Padang /25138', '\\N', '0751-7051020', '\\N', '\\N'),
(24, 'Kanwil DJPBN Provinsi Riau', 'Jl. Jend Sudirman No.249 / 28116 Pekanbaru', '\\N', '\\N', '\\N', '\\N'),
(25, 'Kanwil DJPBN Provinsi Kepulauan Riau', 'Jl. Jend Sudirman No.249 / 28116 Pekanbaru', '\\N', '\\N', '\\N', '\\N'),
(26, 'Kanwil DJPBN Provinsi Jambi', 'Jl. Mayjend N. Yoesoef Singadikane No.45 Jambi /36122', '\\N', '\\N', '\\N', '\\N'),
(27, 'Kanwil DJPBN Provinsi Sumatera Selatan', 'Gedung Keuangan Negara (GKN) Jl. Kapten A.Rivai No. 2 Palembang/30129', '\\N', '\\N', '\\N', '\\N'),
(28, 'Kanwil DJPBN Provinsi Lampung', 'Jl. Cut Meutia No. 23A Lampung / 35124', '\\N', '\\N', '\\N', '\\N'),
(29, 'Kanwil DJPBN Provinsi Bengkulu', 'Jl. Adam Malik LM.8 Bengkulu /38225', '\\N', '\\N', '\\N', '\\N'),
(30, 'Kanwil DJPBN Provinsi Bangka Belitung', 'Jl. Sungai Selan No.91 Pangkalpinang/33135', '\\N', '\\N', '\\N', '\\N'),
(31, 'Kanwil DJPBN Provinsi Banten', 'Jl.KH. Abdul fatah Hasan No.33 Serang Banten/ 42118', '\\N', '\\N', '\\N', '\\N'),
(32, 'Kanwil DJPBN Provinsi Dki Jakarta', 'Jkl. Otto Iskandar No. 53-55 jakarta/13330', '\\N', '\\N', '\\N', '\\N'),
(33, 'Kanwil DJPBN Provinsi Jawa Barat', 'Gedung Dwi Darma Jl. Diponegoro No.59 Bandung/40123', '\\N', '\\N', '\\N', 'kanwil.pbnjabar@gmail.com'),
(34, 'Kanwil DJPBN Provinsi Jawa Tengah', 'GKN. Jl. Pemuda No. 2 semarang/50138', '\\N', '\\N', '\\N', 'kanwil.jateng@depkeu.go.id'),
(35, 'Kanwil DJPBN Provinsi D.I. Yogyakarta', 'Jl. Solo Km.8,6 Nayan Maguwoharjo, Depok Sleman Yogyakarta 55282', '\\N', '\\N', '\\N', '\\N'),
(36, 'Kanwil DJPBN Provinsi Jawa Timur', 'GKN. Surabaya I Jl. Indraputra 5 surabaya ', '\\N', '\\N', '\\N', 'kanwiljatim@perbendaharaan.go.id'),
(37, 'Kanwil DJPBN Provinsi Kalimantan Barat', ' Jl. K.S. Tubun No.36 Pontianak 78121', '\\N', '\\N', '\\N', 'umum.kanwildjpbpontianak@gmail.com'),
(38, 'Kanwil DJPBN Provinsi Kalimantan Tengah', 'Jl. Tjilik Riwut Km. 1 No.10 Palangkaraya 73111', '\\N', '\\N', '\\N', 'kanwil.DJPBN.kalteng@gmail.com'),
(39, 'Kanwil DJPBN Provinsi Kalimantan Selatan', 'Jl. Mayjen D.I. Panjaitan No.24 Banjarmasin', '\\N', '\\N', '\\N', 'kanwil.banjarmasin@perbendaharaan.go.id'),
(40, 'Kanwil DJPBN Provinsi Kalimantan Timur', 'Jl. Ir. H. Juanda No. 4 Samarinda 75124', '\\N', '\\N', '\\N', '\\N'),
(41, 'Kanwil DJPBN Provinsi Bali', 'GKN Jl. Dr. Kusumaatmaja Niti Mandala Denpasar 80235', '\\N', '0361-222844', '\\N', 'perbendaharaan.bali.@gmail.com'),
(42, 'Kanwil DJPBN Provinsi Nusa Tenggara Barat', 'Jl. Majapahit No. 10 Mataram 83127', '0370-643622; 633669;', '0370-643633', '\\N', '\\N'),
(43, 'Kanwil DJPBN Provinsi Nusa Tenggara Timur', 'GKN Lt. 3 Jl. Frans Seda,Kupang 85228', '0380-823501', '0380-823509', '\\N', 'treasurykupang@gmail.com'),
(44, 'Kanwil DJPBN Provinsi Sulawesi Selatan', 'Jl. Jend. Urip Sumoharjo Km. 4 GKN II Lt. II', '\\N', '0411-456134', '1073', '\\N'),
(45, 'Kanwil DJPBN Provinsi Sulawesi Barat', 'Jl.Soekarno Hatta Mamuju GKN Lt.III, Mamuju 91511', '\\N', '0451-422936', '\\N', 'kanwilDJPBNsulbar@gmail.com'),
(46, 'Kanwil DJPBN Provinsi Sulawesi Tengah', 'Jl. Tanjung dako NO.15 palu 94112', '\\N', '0451-422936', '\\N', 'kanwil.Palu@gmail.com'),
(47, 'Kanwil DJPBN Provinsi Sulawesi Tenggara', 'Jl. Mayjen Sutoyo No. 34 Kendari/ 93112', '\\N', '0401-3127119', '\\N', 'DJPBNsultra@gmail.com , Kanwil.kendari@perbendahar'),
(48, 'Kanwil DJPBN Provinsi Gorontalo', 'Jl. Araden Saleh No. 3 Gorontalo / 96128', '0435-826694', '0435-824412', '\\N', '\\N'),
(49, 'Kanwil DJPBN Provinsi Sulawesi Utara', 'GKN Manado Lt.3; Jl. Bethesda No.8 Manado/95114', '\\N', '0431-863713', '\\N', 'kanwil.djpb.sulut@gmail.com'),
(50, 'Kanwil DJPBN Provinsi Maluku Utara', 'Jl. Jati Lurus No.254 Ternate', '\\N', '0921-311117', '\\N', '\\N'),
(51, 'Kanwil DJPBN Provinsi Maluku', 'Jl. Pitu Ina No.7 Karang panjang ambon/ 97122', '\\N', '0911-314757', '\\N', '\\N'),
(52, 'Kanwil DJPBN Provinsi Papua Barat', 'Jl. Merdeka No.97C Manokwari ', '0986-212122', '0986-212124', '\\N', '\\N'),
(53, 'Kanwil DJPBN Provinsi Papua', 'Gedung Menara Indoprima Jl.pasifik Permai Blok D7-D8, jayapura 99111', '\\N', '0967-535963', '\\N', '\\N'),
(54, 'KPPN Banda Aceh', 'GKN Gedung A Lt. 1 Jl. Tengku Chik di Tiro Banda Aceh / 23241', '\\N', '0651-22460', '\\N', '\\N'),
(55, 'KPPN Lhokseumawe', 'Jl. Merdeka, kampung Jawa lama, lhokseumawe/24241', '\\N', '0645-630659', '\\N', '\\N'),
(56, 'KPPN Meulaboh', 'Jl. Sisingamangaraja No.3 Meulaboh / 23617', '\\N', '0655-7551023', '\\N', '\\N'),
(57, 'KPPN Tapak Tuan', 'Jl. Cut Ali No.69 Tapak Tuan / 23715', '\\N', '0656-21116', '\\N', '\\N'),
(58, 'KPPN Langsa', 'Jl. Jend. A. Yani No. 2 Langsa /24416', '\\N', '0641-21408', '\\N', '\\N'),
(59, 'KPPN Kutacane', 'Jl. Blangkejeren Km.3,5 Kutacane / 24601', '\\N', '0629-21222', '\\N', '\\N'),
(60, 'KPPN Takengon', 'Gedung Pendari Jl. Yos Sudarso Takengon /24551', '\\N', '0643-23771', '\\N', '\\N'),
(61, 'KPPN Medan I', 'Jl. Diponegoro No.30A Medan/ 20152', '\\N', '061-4515710', '\\N', 'KPPN004.prima@gmail.com'),
(62, 'KPPN Medan II', 'Jl. Diponegoro No.30A Medan/ 20152', '\\N', '061-4538448', '\\N', 'KPPNmedanprima2@gmail.com'),
(63, 'KPPN Tebingtinggi', 'Jl. Sutomo No. 2 Tebingtinggi / 20600', '\\N', '0621-327601', '\\N', 'KPPNtebingtinggi@gmail.com'),
(64, 'KPPN Pematang Siantar', 'Jl. Brigjen Rajamin Purba, SH Pematang siantar / 21111', '\\N', '0622-22593', '\\N', 'kpepeen.lima@gmail.com'),
(65, 'KPPN Padang Sidempuan', 'Jl. Kenanga No. 50 Padang Sidempuan / 22725', '\\N', '0634-21257', '\\N', 'KPPNsidempuan@gmail.com'),
(66, 'KPPN Gunung Sitoli', 'Jl. Pancasila No. 13 Gunung sitoli/ 22814', '\\N', '0639-21934', '\\N', 'KPPN.gunungsitoli@gmail.com'),
(67, 'KPPN Rantau Prapat', 'Jl. sisingamangaraja No.62 Rantau papat /21415', '\\N', '0624-21773', '\\N', 'KPPN.rantaurapat.075@gmail.com'),
(68, 'KPPN Tanjung Balai', 'Jl. Sudirman Km.1 Tanjungbalai/ 21312', '\\N', '0623-92021', '\\N', 'KPPNtanjungbalai@gmail.com'),
(69, 'KPPN Sibolga', 'Jl. Dr. Sutomo No.7 Sibolga /21520', '\\N', '0631-21520', '\\N', 'KPPNsibolga@gmail.com'),
(70, 'KPPN Sidikalang', 'Jl. Sisingamangaraja No.69A Sidikalang ', '\\N', '0627-21680', '\\N', 'KPPN119@gmail.com'),
(71, 'KPPN Balige', 'Jl. Raya Balige-Laguboti Km. 3,5 Balige ', '\\N', '0632-21205', '\\N', '\\N'),
(72, 'KPPN Padang', 'Jl. Perintis Kemerdekaan No.79 padang/25129 ', '\\N', '0751-21282', '\\N', '\\N'),
(73, 'KPPN Painan', 'Jl. Ilyas Yacub No. 3 Painan', '\\N', '0756-21716', '\\N', '\\N'),
(74, 'KPPN Bukit Tinggi', 'Jl. Prof. Hazairin No. 1 Bukit Tinggi / 26116 ', '\\N', '0752-21306', '\\N', '\\N'),
(75, 'KPPN Solok', 'Jl. Raja Kota Baru Solok /27362  ', '\\N', '0755-20501', '\\N', '\\N'),
(76, 'KPPN Sijunjung', 'Jl. Prof. M. Yamin, SH No.77 Muaro Sijunjung', '\\N', '0754-21124', '\\N', '\\N'),
(77, 'KPPN Lubuk Sikaping', 'Jl. Jend. Sudirman No. 93 lubuk sikaping/28116', '\\N', '0753-20282', '\\N', '\\N'),
(78, 'KPPN Pekanbaru', 'Jl. Jend. sudirman No. 249 pekanbaru', '\\N', '0761-23117', '\\N', 'www.pekanbaru.net , KPPNpekanbaru@gmail.com'),
(79, 'KPPN Rengat', 'Jl. Diponegoro No. 2 Rengat / 29112', '\\N', '0769-21170', '\\N', 'KPPN092@gmail.com'),
(80, 'KPPN Dumai', 'Jl. Jend. Sudirman No. 25 Dumai / 28812', '\\N', '0765-31037', '\\N', 'KPPNdumai@gmail.com'),
(81, 'KPPN Tanjung Pinang', 'Jl. Diponegoro No.5 Tanjung Pinang /29111', '\\N', '0771-21644', '\\N', '\\N'),
(82, 'KPPN Batam', 'Jl. Raja Haji - Sekupang Batam / 29422', '\\N', '0778-321740', '\\N', '\\N'),
(83, 'KPPN Jambi', 'Jl. Jend.a. Yani No.7 Jambi / 36122', '\\N', '0741-62719', '\\N', '\\N'),
(84, 'KPPN Kuala Tungkal', 'Jl. Thomas Cup No.1 Kuala Tungkal / 36513', '\\N', '0742-323226', '\\N', '\\N'),
(85, 'KPPN Sungai Penuh', 'Jl. H. Bakri No.16 Sungai Penuh /37112', '\\N', '0748-22022', '\\N', '\\N'),
(86, 'KPPN Muara Bungo', 'Jl. Sultan Thaha No.52 Muara Bungo /37211', '\\N', '0747-21610', '\\N', '\\N'),
(87, 'KPPN Bangko', 'Jl. Diponegoro Bangko ', '\\N', '0746-323161', '\\N', '\\N'),
(88, 'KPPN Palembang', 'Jl. Kapten A.rivai No.2 Palembang / 30129', '\\N', '0711-312755', '\\N', 'KPPNpalembang@gmail.com'),
(89, 'KPPN Sekayu', 'Jl. Kolonel Wahid Udi Sekayu ', '\\N', '0714-322814', '\\N', 'KPPN160@gmail.com'),
(90, 'KPPN Baturaja', 'Jl. Jend. D.I. Panjaitan No.471 Baturaja / 32112', '\\N', '0735-324631', '\\N', 'KPPN.baturaja@gmail.com'),
(91, 'KPPN Lubuk Linggau', 'Jl. Yos Sudarso Taba Pingin Komp. Pemda Tk.II Musi Rawas/31626', '\\N', '0733-451571', '\\N', 'KPPN.lubuklinggau.070@gmail.com'),
(92, 'KPPN Lahat', 'Jl. R.E. Martadinata No. 20 Lahat / 31414', '\\N', '0731-326022', '\\N', 'KPPN114@gmail.com'),
(93, 'KPPN Bandar Lampung', 'Jl. Jend.gatot subroto No.91 / 35128', '\\N', '0721-259518', '\\N', 'KPPNbalam@depkeu.go.id'),
(94, 'KPPN Metro', 'Jl. Seminung No. 5 Metro', '\\N', '0725-49450', '\\N', 'vera10@gmail.com'),
(95, 'KPPN Kotabumi', 'Jl. Jend. Sudirman Km.3 kotabumi / 31513', '\\N', '0724-21446', '\\N', 'KPPN116@gmail.com'),
(96, 'KPPN Liwa', 'Jl. Raden Intan Way Mengaku ', '\\N', '0728-21635', '\\N', 'KPPNliwa@depkeu.go.id'),
(97, 'KPPN Bengkulu', 'Jl. Soekarno Hatta No.1 Bengkulu ', '\\N', '0736-21967', '\\N', 'KPPNbengkulu016@gmail.com'),
(98, 'KPPN Muko-Muko', 'Jl. Imam Bonjol, Komplek Perkantoran Pemda Muko-muko /38365', '\\N', '0737-71616', '\\N', '\\N'),
(99, 'KPPN Curup', 'Jl. Sukowati No.63 Curup / 39114', '\\N', '0732-325332', '\\N', 'KPPN146@gnail.com'),
(100, 'KPPN Manna', 'Jl. Affan Baksin No. 103 Manna', '\\N', '0739-21018', '\\N', 'KPPN121@gmail.com'),
(101, 'KPPN Pangkalpinang', 'Jl. Kejaksaan No.16 Pangalpinang/ 33125', '\\N', '0717-422822', '\\N', 'KPPN015pkp@gmail.com'),
(102, 'KPPN Tanjung Pandan', 'Jl. Sriwijaya Paal 1 Tanjung Pandan /33416', '\\N', '0719-21717', '\\N', 'KPPN107@gmail.com'),
(103, 'KPPN Serang', 'Jl. KH. Abdul Fatah Hasan No. 33 serang banten/ 421187', '\\N', '0254-2002127', '\\N', 'KPPN20@gmail.com'),
(104, 'KPPN Rangkasbitung', 'Jl. Siliwangi No.48 Pasir Ona Rangkas Bitung', '\\N', '021-280800', '\\N', 'kepeg.KPPN.rangkasbitung@gmail.com'),
(105, 'KPPN Tangerang', 'Jl. TMP Taruna No.12 Tangerang Banten / 42314', '\\N', '021-5533725', '\\N', 'KPPNtangerang@gmail.com'),
(106, 'KPPN Jakarta I', 'Jl. Ir. H. Juanda No.19 Jakarta/ 10210', '\\N', '021-3845795', '\\N', '\\N'),
(107, 'KPPN Jakarta II', 'Jl. Wahidin II No.3 Jakarta/10710', '\\N', '021-3812514', '\\N', '\\N'),
(108, 'KPPN Jakarta III', 'Jl. Otto Iskandar Dinata No. 53-55 Jakarta Timur', '\\N', '021-8192426', '\\N', '\\N'),
(109, 'KPPN Jakarta IV', 'Jl. Ir. H. Juanda No.19 Jakarta/ 10210', '\\N', '021-3812301', '\\N', '\\N'),
(110, 'KPPN Jakarta V', 'Jl. T. B. Simatupang Kav.67 Pasar Minggu Jakarta Selatan', '\\N', '021-78832428', '\\N', 'KPPN139@gmail.com'),
(111, 'KPPN Jakarta VI', 'Jl. Ir. H. Juanda No.19 Jakarta/ 10210', '\\N', '021-3510324', '\\N', 'KPPNjkt6@depkeu.go.id , KPPNjkt6@gmail.com'),
(112, 'KPPN Khusus Jakarta Vii ', 'Jl. Otto Iskandar Dinata No. 53-55 Jakarta Timur/13330', '\\N', '021-85915426', '\\N', 'KPPN182@gmail.com'),
(113, 'KPPN Khusus Pinjaman Dan Hibah', 'Jl. Ir. H. Juanda No.19 Jakarta/ 10210', '\\N', '021-3842271', '\\N', '\\N'),
(114, 'KPPN Khusus Penerimaan', 'Gedung Prijadi Prapsuhardjo III Lt. 2, Jl. Dr. Wahidin II No.3 jakarta', '\\N', '\\N', '\\N', '\\N'),
(115, 'KPPN Khusus Investasi', 'Gedung Prijadi praptosuhardjo III Lt. 2, Jl. DR. Wahidin II No.3 Jakarta', '\\N', '\\N', '\\N', '\\N'),
(116, 'KPPN Bandung I', 'Jl. Asia Afrika No.114 Bandung / 40261', '\\N', '022-4240298', '\\N', 'kepeg.KPPN022@gmail.com'),
(117, 'KPPN Bandung Ii', 'Jl. Penghulu H. Hasan Mustofa No.37 Bandung', '\\N', '022-7205931', '\\N', 'KPPN095@gmail.com'),
(118, 'KPPN Bekasi', 'Jl. Pramuka No.63 Bekasi ', '\\N', '021-8845299', '\\N', 'KPPN171@gmail.com'),
(119, 'KPPN Karawang', 'Jl. Kertabumi No.40A Karawang / 41311', '\\N', '0267-412124', '\\N', 'KPPN086@gmail.com'),
(120, 'KPPN Bogor', 'Jl. Ir. H. Juanda No.62 Bogor /46122', '\\N', '0251-8321055', '\\N', 'KPPNbogor023@gmail.com'),
(121, 'KPPN Purwakarta', 'Jl. Ibrahim Singadilaga No.82 Purwakarta/41115', '\\N', '0264-200412', '\\N', 'KPPN.keren@gmail.com'),
(122, 'KPPN Sukabumi', 'Jl. Suryakencana No.20 Kecamatan Cikole, kota Sukabumi/43111', '\\N', '0266-214933', '\\N', 'KPPN128@gmail.com'),
(123, 'KPPN Garut', 'Jl. Jend. A. Yani No.24 garut/44117', '\\N', '026-2233047', '\\N', 'kepeg.KPPNgarut096@gmail.com'),
(124, 'KPPN Cirebon', 'Jl. Tuparev No.14 Cirebon ', '\\N', '0231-203800', '\\N', 'KPPNcirebon024@gmail.com'),
(125, 'KPPN Kuningan', 'Jl. Moch. Toha Kasturi Kuningan ', '\\N', '0232-870387', '\\N', 'KPPN147@perbendaharaan.go.id; , kepeg.KPPNkuningan'),
(126, 'KPPN Tasikmalaya', 'Jl. Manojaya No.50 cibereum Tasikmalaya /46196', '\\N', '0265-320202', '\\N', 'KPPN.tasikmalaya@gmail.com'),
(127, 'KPPN Sumedang', 'Jl. Mayor Abdurahman No. 221 Sumedang', '\\N', '0261-201146', '\\N', 'KPPN087.sumedang@gmail.com'),
(128, 'KPPN Semarang I', 'Jl. Ki Mangunsarkoro No.34 Semarang /50241', '\\N', '024-8411086', '\\N', 'semarang1.KPPN@gmail.com'),
(129, 'KPPN Semarang Ii', 'Jl. Ki Mangunsarkoro No.34 Semarang /50241', '\\N', '024-8419664', '\\N', 'KPPN.semarang2@gmail.com'),
(130, 'KPPN Surakarta', 'Jl. Slamet Riyadi No.467 Surakarta/57146', '\\N', '0271-710648', '\\N', 'KPPN028@gmail.com'),
(131, ' KPPN Sragen', 'Komp.gd. Kartini, Jl.sukowatiNo.15C Sragen', '\\N', '0271-710648', '\\N', 'KPPN162.sragen@gmail.com'),
(132, 'KPPN Klaten', 'Jl. Sersan Sadikin No. 30 Klaten ', '\\N', '0272-320443', '\\N', 'KPPN148@gmail.com'),
(133, 'KPPN Pati', 'Jl. P. Diponegoro No.102 pati/59111', '\\N', '0295-381484', '\\N', 'KPPN097@gmail.com'),
(134, 'KPPN Purwodadi', 'Jl. MH. Thamrin 13 Purwodadi ', '\\N', '0292-455030', '\\N', 'KPPN163@gmail.com'),
(135, 'KPPN Kudus', 'Jl. Raya Mejobo Kudus /59319', '\\N', '0291-431397', '\\N', 'KPPNkudus@gmail.com'),
(136, 'KPPN Pekalongan', 'Jl. Bahagia No.44 Pekalongan/51117', '\\N', '0285-421479', '\\N', 'KPPN.pkl@gmail.com'),
(137, 'KPPN Tegal ', 'Jl. Dr. Sutomo No.64 Tegal/52113', '\\N', '0283-353224', '\\N', 'KPPNtegal@gmail.com'),
(138, 'KPPN Purworejo', 'Jl. Uri Sumoharjo No/ 83 purworejo/54111', '\\N', '0275-321382', '\\N', 'KPPN.purworejo@gmail.com'),
(139, 'KPPN Purwokerto', 'Jl. D.I. Panjaitan No.62 Purwokerto', '\\N', '0281-634715', '\\N', 'kepeg.KPPN.pwt@gmail.com'),
(140, 'KPPN Banjarnegara', 'Jl. Letjen S.parman No.545 Banjarnegara/53412', '\\N', '0286-591456', '\\N', 'umumKPPN164@gmailcom'),
(141, 'KPPN Cilacap', 'Jl. Dr.Perintis Kemerdekaan No.28 Cilacap', '\\N', '0282-547009', '\\N', 'KPPN130.cilacap@gmail.com'),
(142, 'KPPN Magelang', 'Jl. Veteran No.3 magelang/56117', '\\N', '0293-363632,0364437', '\\N', 'KPPN115magelang@gmail.com'),
(143, 'KPPN Yogyakarta', 'Jl. Kusumanegara No.11 Yogyakarta/55166', '\\N', '0274-554634', '\\N', 'kepegawaian.KPPNjogja@gmail.com'),
(144, 'KPPN Wates', 'Jl. KH. Achmad Dahlan KM. 2,2 Wates/55611', '\\N', '0274-775301', '\\N', 'KPPN176@gmail.com'),
(145, 'KPPN Wonosari', 'Jl. Taman Bhakti Piyaman Wonosari/55815', '\\N', '0274-394712', '\\N', 'KPPNwno@gmail.com'),
(146, 'KPPN Surabaya I ', 'GKN Surabaya 1 Jl. Indraputra No. 5 Lt.4 Surabaya/60175', '\\N', '031-3523992', '\\N', '\\N'),
(147, 'KPPN Surabaya II', 'GKN Surabaya II Lt.7 Jl. Dinoyo No.111 Surabaya/60265', '\\N', '031-5615394', '\\N', '\\N'),
(148, 'KPPN Sidoarjo', 'Jl.monginsidi No.89A Sidoarjo', '\\N', '031-8057648', '\\N', '\\N'),
(149, 'KPPN Malang ', 'Jl. Merdeka Selatan No.2 Malang/65119', '\\N', '0341-362800', '\\N', '\\N'),
(150, 'KPPN Pamekasan', 'Jl. Jokotole No.141 Pamekasan/69321', '\\N', '0324-322367', '\\N', '\\N'),
(151, 'KPPN Mojokerto', 'Jl. Gajah Mada No.147 Mojokerto/61314', '\\N', '0321-321288', '\\N', '\\N'),
(152, 'KPPN Banyuwangi', 'Jl. Jend. A. Yani No.120 Banyuwangi/68416', '\\N', '0333-410078', '\\N', '\\N'),
(153, 'KPPN Jember', 'Jl. Kalimantan No.35 Jember/68121', '\\N', '0331-336571', '\\N', '\\N'),
(154, 'KPPN Bondowoso', 'Jl. Jend. A. Yani No.86 Bondowoso/68215', '\\N', '0332-420605', '\\N', '\\N'),
(155, 'KPPN Madiun', 'Jl. Salak No.52 Madiun/63131', '\\N', '0351-459183', '\\N', '\\N'),
(156, 'Kppb Kediri', 'Jl. Jenderal Basuki Rachmat No.11 Kediri/64124', '\\N', '0354-682325', '\\N', '\\N'),
(157, 'KPPN Blitar ', 'Jl. Raya Galum Km.4 Blitar/66182', '\\N', '0342-813534', '\\N', '\\N'),
(158, 'KPPN Bojonegoro', 'Jl. Untung Suropati No.63 Bojonegoro/62115', '\\N', '0353-881309', '\\N', '\\N'),
(159, 'KPPN Tuban ', 'Jl. H. O. S Cokroaminoto No.22 Tuban', '\\N', '0356-327362', '\\N', '\\N'),
(160, 'KPPN Pacitan', 'Jl. Letjen S. Parman No.47 Pacitan ', '\\N', '0357-881197', '\\N', '\\N'),
(161, 'KPPN Pontianak', 'Jl. K. Sasuit Tubun No.36 pontianak/78121 ', '\\N', '0561-749980', '\\N', 'sbu.KPPNpontianak@gmail.com'),
(162, 'KPPN Sanggau', 'Jl. Jenderal Sudirman Km.77 No.99 Sanggau/78511', '\\N', '0564-23300', '\\N', 'KPPNsanggau@gmail.com'),
(163, 'KPPN Singkawang', 'Jl. Firdaus H.Rais No.66 Singkawang/79123', '\\N', '0562-631027', '\\N', 'KPPNsingkawang@gmail.com'),
(164, 'KPPN Ketapang', 'Jl. Jend.Sudirman No.55 Ketapang/78812', '\\N', '0534-32077', '\\N', 'KPPN094.ketapang@gmail.com'),
(165, 'KPPN Sintang', 'Jl. Adi Sucipto No.1 sintang/78611', '\\N', '0565-21901', '\\N', 'KPPNsintang@gmail.com'),
(166, 'KPPN Putussibau', 'Jl. W.R. Supratman No.50 Putussibau/78711', '\\N', '0567-21180', '\\N', 'kpp.putusibau@gmail.com'),
(167, 'KPPN Palangkaraya', 'Jl. Kapt. P.Tendean No.4 palangka raya/73112', '\\N', '0536-3221439', '\\N', 'KPPN0431@gmail.com'),
(168, 'KPPN Buntok', 'Jl. Pelita Raya No.69 Buntok/73711', '\\N', '0525-21792', '\\N', 'KPPNbuntok@gmail.com'),
(169, 'KPPN Sampit', 'Jl. Jend.Sudirman Km. 1,5 Sampit/74322', '\\N', '0531-32786', '\\N', 'KPPN044@perbendaharaan.go.id'),
(170, 'KPPN Pangkalan Bun', 'Jl. Sutan Syahrir No.9 Pangkalan Bun/74101', '\\N', '0532-21393', '\\N', '\\N'),
(171, 'KPPN Banjarmasin', 'Jl. Mayjen D.I. Panjaitan No.10 Banjarmasin/70114', '\\N', '0511-3352856', '\\N', 'KPPN045@perbendaharaan.go.id'),
(172, 'KPPN Pelaihari', 'Jl. Datu insad No.79 Pelaihari/70813', '\\N', '0512-22460', '\\N', 'kpp168@gmail.com'),
(173, 'KPPN Barabai', 'Jl. P.H.M. Noor No.28 Barabai/71311', '\\N', '0517-41307', '\\N', 'KPPN110@gmail.com'),
(174, 'KPPN Tanjung', 'Jl. Ahmad Yani Km. 10 No. 20 Maburai Tanjung', '\\N', '0526-2027207', '\\N', 'info.KPPNtanjung@gmail.com'),
(175, 'KPPN Kotabaru', 'Jl. Yakut No.19 Kotabaru/72116', '\\N', '0518-25320', '\\N', 'KPPN081@gmail.com; KPPN.kotabaru@depkeu.go.id'),
(176, 'KPPN Samarinda', 'Jl. Moh. Yamin No. 2 Samarinda/75123', '\\N', '0541-743491', '\\N', '\\N'),
(177, 'KPPN Balikpapan', 'Jl. Jend.A.Yani No.28 Balikpapan/76113', '\\N', '0542-731284', '\\N', '\\N'),
(178, 'KPPN Tanjungredeb', 'Jl. Milono No.2 Tanjungredeb/77311', '\\N', '0554-26818', '\\N', '\\N'),
(179, 'KPPN Tarakan', 'Jl P Diponegoro No.46 Tarakan/77114', '\\N', '0551-21953', '\\N', '\\N'),
(180, 'KPPN Nunukan', 'Jl. Ujung Dewa Sedadap Nunukan', '\\N', '0556-2025588', '\\N', '\\N'),
(181, 'KPPN Denpasar', 'GKN I Jl. Kusumaatmaja Niti Mandala Denpasar/80235', '\\N', '0361-225591', '\\N', 'denpasar.KPPN@gmail.com'),
(182, 'KPPN Singaraja', 'Jl. Udayana No.10 Singaraja/81116', '\\N', '0362-26595', '\\N', '\\N'),
(183, 'KPPN Amlapura', 'Jl. Cempaka Amlapura/80812', '\\N', '0363-22027', '\\N', 'KPPNamlapura@gmail.com'),
(184, 'KPPN Mataram', 'Jl. Langko No. 40 Mataram/83125', '\\N', '0370-633744', '\\N', '\\N'),
(185, 'KPPN Selong', 'Jl. Moh. Yamin No.43 Selong/83612', '\\N', '0376-22959', '\\N', '\\N'),
(186, 'KPPN Bima', 'Jl. Pendidikan No.16 Bima/84116 ', '\\N', '0374-43615', '\\N', '\\N'),
(187, 'KPPN Sumbawa Besar', 'Jl. Garuda No.107 Sumbawa Besar/84312', '\\N', '0371-21720', '\\N', '\\N'),
(188, 'KPPN Kupang', 'Jl. Ferans Seda, kupang/85711', '0380-823508', '0380-825122', '\\N', 'KPPNkupang@gmail.com'),
(189, 'KPPN Atambua', 'Jl.Diponegoro , Tulamalae, Atambua, Kab.Belu/85711', '0389-33638', '0389-22643', '\\N', 'KPPN172@gmail.com'),
(190, 'KPPN Larantuka', 'Jl. Jend.Sudirman No.48 Larantuka', '0383-2325092', '0383-2325091', '\\N', 'KPPN174@gmail.com'),
(191, 'KPPN Ende', 'Jl. Kelimutu No.53 Ende/86316', '0381-21268', '0381-21046', '\\N', 'kpp.ende040@gmail.com'),
(192, 'KPPN Ruteng', 'Jl. Adi Sucipto No.29 Ruteng/86518', '0385-22910,21549', '0385-21457', '\\N', 'KPPNruteng111@gmail.com'),
(193, 'KPPN Waingapu', 'Jl. Ampera No.1 Waingapu/87111', '0387-61074', '0387-61037', '\\N', 'KPPNwaingapu@gmail.com'),
(194, 'KPPN Makassar I', 'Jl. Slamet Riyadi No.5 Makssar', '\\N', '0411-325873', '\\N', '\\N'),
(195, 'KPPN Makassar Ii', 'Jl. Urip sumohardjo Km. 4 GKN I Makassar', '\\N', '0411-456958', '\\N', '\\N'),
(196, 'KPPN Pare-Pare', 'Jl. Karaeng Burane No.20 Pare-pare/91111', '\\N', '0421-21850', '\\N', '\\N'),
(197, 'KPPN Benteng', 'Jl. D.I. Panjaitan nbenteng Selayar', '\\N', '0414-22588', '\\N', '\\N'),
(198, 'KPPN Bantaeng', 'Jl. Raya Lantao No,112 Bantaeng/92411', '\\N', '0413-21119', '9', '\\N'),
(199, 'KPPN Sinjai', 'Jl. KH.Abdul Latif No.4 Sinjai/92611', '\\N', '0482-23285', '\\N', '\\N'),
(200, 'KPPN Palopo', 'Jl. Opu Tosappaile No.107 Palopo/91921', '\\N', '0471-21126', '\\N', '\\N'),
(201, 'KPPN Watampone', 'Jl. K.H.. Agus Salim No.7 Watampone/92732', '\\N', '0481-21252', '\\N', '\\N'),
(202, 'KPPN Makale', 'Jl. Pongtiku Poros Makale-Rantepao Km.13 Tana Toraja', '\\N', '0423-2810655', '\\N', '\\N'),
(203, 'KPPN Mamuju', 'Jl. A.Yani No.14 ', '\\N', '0426-2325035', '\\N', 'KPPN178@gmail.com'),
(204, 'KPPN Majene', 'Jl. Jend Sudirman No.96 majene/91412', '\\N', '0422-21026', '\\N', 'KPPNmajene@gmail.com'),
(205, 'KPPN Palu ', 'Jl. Tanjung Dako NO.11 palu 94112', '\\N', '0451-421225', '\\N', 'KPPN051@perbendaharaan.go.id'),
(206, 'KPPN Poso', 'Jl. Kalimantan No.16 Poso/94619', '\\N', '0452-21459', '\\N', 'poso.KPPN@gmail.com'),
(207, 'KPPN Luwuk', 'Jl. Jend.A.Yani No.134 Luwuk/94711', '\\N', '0461-21069', '\\N', '\\N'),
(208, 'KPPN Toli Toli', 'Jl. Mgamu No.6-8 Toli toli/94515', '\\N', '0453-21041', '\\N', 'KPPNtoli2@gmail.com'),
(209, 'KPPN Kendari', 'Jl. Mayjen Sutomo No.5 Kendari/93122', '\\N', '0401-3121542', '\\N', 'KPPN.kendari@depkeu.go.id ; KPPNkendari@gmail.com'),
(210, 'KPPN Bau Bau', 'Jl. Palagimata Bau-Bau/93717', '\\N', '0251-7535686', '\\N', 'KPPN103@gmail.com'),
(211, 'KPPN Raha', 'Jl. Kasuari No. 1 Raha', '\\N', '0403-2522916', '\\N', 'KPPN157@gmail.com'),
(212, 'KPPN Kolaka', 'Jl. Bendungan Km.6 Kolaka/93518', '\\N', '0405-2321326', '\\N', 'KPPN.156@gmail.com ; KPPNkolaka@depkeu.go.id'),
(213, 'KPPN Gorontalo', 'Jl. Jend. Sudirman No.58 Gorontalo/96128', '0435-821460', '0435-821192', '\\N', '\\N'),
(214, 'KPPN Marisa', 'Jl. Pelabuhan Marisa, Gorontalo/96266', '0443-210213', '\\N', '\\N', '\\N'),
(215, 'KPPN Manado', 'GKN Manado Lt.2; Jl. 17 Agustus Manado/95113', '\\N', '0431-869666', '\\N', '\\N'),
(216, 'KPPN Tahuna', 'Jl. Malahasa No. 29 Tahuna/95813', '\\N', '0432-21039', '\\N', 'KPPN.tahuna083@gmail.com'),
(217, 'KPPN Kotamobagu', 'Jl. Paloko No. 7 Kotamobagu', '\\N', '0434-24062', '\\N', 'KPPN.kotamobagu@gmail.com'),
(218, 'KPPN Bitung ', 'Jl. Stadion Dua Saudara Manembo-Nembo Atas, Bitung', '\\N', '0438-37472', '\\N', 'KPPNbitung179@gmail.com'),
(219, 'KPPN Ternate', 'Jl. Yos Sudarso No.6 Ternate/97711', '\\N', '0921-3121643', '\\N', '\\N'),
(220, 'KPPN Tobelo', 'Jl. Kemakmuran Tabelo', '\\N', '0924-2622567', '\\N', '\\N'),
(221, 'KPPN Ambon', 'GKN Lt.I dan II, Jl. Kapitan Ulupaha No. 1 Ambon/97124', '\\N', '0911-344364', '\\N', '\\N'),
(222, 'KPPN Tual', 'Jl. Pahlawan Revolusi Ohijang,Tual/97611', '\\N', '0916-21289', '\\N', '\\N'),
(223, 'KPPN Saumlaki', 'Jl. Sifnama Saumlaki/97664', '\\N', '0918-21489', '\\N', '\\N'),
(224, 'KPPN Masohi', 'Jl. Pattimura No.36 Masohi/97511', '\\N', '0914-22722', '\\N', '\\N'),
(225, 'KPPN Manokwari', 'Jl. Yos Sudarso No.1003 Manokwari ', '0986-211525', '\\N', '\\N', '\\N'),
(226, 'KPPN Sorong', 'Jl. Basuki Rachmat Km.7 sorong/98416', '0951-321263', '\\N', '\\N', '\\N'),
(227, 'KPPN Fak Fak', 'Jl. DPRD Fakfak/98611', '\\N', '0956-22506', '\\N', '\\N'),
(228, 'KPPN Jayapura ', 'Ruko Pasific Permai Blok D7-D8 !, Jayapura 99111', '\\N', '0967-533389', '\\N', '\\N'),
(229, 'KPPN Biak', 'Jl. Majapahit No. 1 Biak/98117', '\\N', '0981-21367', '\\N', '\\N'),
(230, 'KPPN Serui', 'Jl. Maluku Serui/98211', '\\N', '0983-31742', '\\N', '\\N'),
(231, 'KPPN Merauke', 'Jl. Prajurit No.1 Merauke', '\\N', '0971-321812', '\\N', '\\N'),
(232, 'KPPN Wamena', 'Jl. Yos Sudarso Np.26 Wamena/99502', '\\N', '0969-31324', '\\N', '\\N'),
(233, 'KPPN Nabire', 'Jl. Merdeka No.46 Nabire/98815', '\\N', '0984-22156', '\\N', '\\N'),
(234, 'KPPN Timika', 'Jl. Cenderawasih (SP II) Timika', '\\N', '0901-322926', '\\N', '\\N'),
(235, 'DPRD Provinsi Kalteng', 'Jalan S Parman 2', '05363236320', '3236329', '73112', NULL),
(236, 'Badan Pusat Statistik Provinsi Kalimantan Tengah', 'Jalan Kapten P.Tendean No 6', '05363228105', '05363221380', '73111', 'bps6200@mailhost.bps.go.id'),
(237, 'Dinas Pekerjaan Umum Pemprov Kalteng', 'Jalan Letjend S Parman No 3', '05363221150', NULL, NULL, NULL),
(238, 'Pusat LPSE Setjen Kemenkeu RI', 'Jalan Dr Wahidin Raya No 1 Jakarta', '3449230, 3512214', '0213512219', '10710', 'www.lpse.depkeu.gi.id'),
(239, 'Kementerian Hukum dan HAM Kanwil Kalimantan Tengah', 'Jalan G Obos Nomor 10 Palangka Raya', '05363221554', '05363220150', NULL, NULL),
(240, 'Pengadilan Negeri Buntok', 'Jalan Pelita Raya Nomor 20', '052521010', '052521686', '73711', 'www.pn-buntok.go.id, pn_buntok@yahoo.co.id'),
(241, 'Kejaksaan Negeri Kotawaringin Barat', NULL, NULL, NULL, NULL, NULL),
(242, 'Polres Pulang Pisau Kalimantan Tengah', 'Jalan Trans Kalimantan Km 01 Pulang Pisau ', NULL, NULL, '74811', NULL),
(243, 'Kejaksaan Negeri Pangkalan Bun', NULL, NULL, NULL, NULL, NULL),
(244, 'Surat Kabar Harian Palangka Post', 'Jalan G Obos Induk Ruko Kav i-2 (Samping Wisma DPRD)', '05363238025', '05363238025', NULL, 'redaksippos@yahoo.com, ppostiklan@yahoo.co.id'),
(245, 'PT. PLN (Persero) Rayon Palangka Raya Timur', NULL, NULL, NULL, NULL, NULL),
(246, 'IAIN Palangka Raya', NULL, NULL, NULL, NULL, NULL),
(247, 'Badan Pemeriksa Keuangan Jakarta', 'Jalan Jenderal Gatot Subroto Kav.31 Jakarta', NULL, NULL, NULL, NULL),
(248, 'Kepala Bagian Sumber Daya Manusia/SDM Jakarta', 'Gedung Prijadi Praptosuhardjo I Lantai 2 Jl. Lapangan Banteng Timur I no.2-4 Jakarta Pusat', NULL, NULL, NULL, NULL),
(249, 'Panitia Pembinaan Mental dan Kerohanian Bagi PNS Di Lingkungan Pemprov Kalteng', 'Jalan Yos Sudarso Nomor 11', '05363224129', NULL, '73111', NULL),
(250, 'PT Telekomunikasi Indonesia Kanwil Telkom Kalteng', NULL, NULL, NULL, NULL, NULL),
(251, 'Kementerian Agama RI Kanwil Kemenag Provinsi Kalteng', 'Jalan Brigjen Katamso Nomor 3 Palangka Raya', '05363221893', '05363234736', '73112', 'www.kalteng.kemenag.go.id'),
(252, 'Kantor Pelayanan Penyuluhan dan Konsultasi Perpajakan/KP2KP Kuala Kurun', NULL, NULL, NULL, NULL, NULL),
(253, 'Balai Konservasi SDA Kalteng', 'Jalan Yos Sudarso Nomor 3', '05363237034', '05363221268', 'kotak Pos 32', 'surat.bksda.kh@gmail.com'),
(254, 'Badan Pengelola Dana Perkebunan Kelapa Sawit Ditjen Perbendaharaan', 'Graha Mandiri Lantai 5 Jalan Imam Bonjol No 61 Jakarta', '02139832091-94', '02139832095', '10310', 'bpdpsawit@gmail.com'),
(255, 'KPKNL Pangkalan Bun', 'Jalan Sutan Syahrir No 46 Pangkalan Bun', '053221502', '053221834', '74111', 'kpknlpangkalanbun@gmail.com'),
(256, 'Kejaksaan Negeri Katingan', 'Jalan A Yani Komplek Perkantoran Pemda Kab Katingan', '05364043581', '05364043581', NULL, 'kn_kasongan@yahoo.com'),
(257, 'Pengadilan Negeri Kasongan', 'Jalan Ahmad Yani Komplek Perkantoran Kereng Humbang Pemkab Katingan', '05364043610', NULL, NULL, 'pn.kasongan@yahoo.co.id'),
(258, 'Dinas Pengelolaan Keuangan Dan Aset Kabupaten Gunung Mas', 'Jalan Pangeran Diponegoro Kuala Kurun (Komplek Kantor Bupati Gumas)', '053731334', '053731238', '74577', NULL),
(259, 'Badan Pusat Statistik Kabupaten Kapuas', 'Jalan Tambun Bungai No 15', NULL, '051321093', NULL, 'bps6203@bps.go.id'),
(260, 'Badan Kepegawaian Negara', NULL, NULL, NULL, NULL, NULL),
(261, 'Komisi Pemilihan Umum Kabupaten Barito Selatan', 'Jalan Melati Nomor 1 Buntok', '052522078', '052522078', '73712', NULL),
(262, 'Kalteng Pos', 'Jalan Tjilik Riwut Km 2.5', '05363224659, 3224661, 3229257', '05363224660', NULL, NULL),
(263, 'permata.ditjenperbendaharaan@gmail.com', NULL, NULL, NULL, NULL, NULL),
(264, 'KPKNL Palangkaraya', 'Jl.G.Obos', '3220047', '320048', NULL, NULL),
(265, 'KPP Pratama Palangkaraya', 'Jl.Yos Sudarso', '3235386', '3221028', NULL, NULL),
(267, 'Balai Karantina Pertanian Kelas II Palangkaraya', 'jalan G Obos Km 5.5 Palangka Raya', '05363247484, 3247485, 3247400', 'sda', '73112', 'bkp_palangkaraya@yahoo.co.id'),
(268, 'Walikota Palangka Raya', NULL, NULL, NULL, NULL, NULL),
(269, 'Stasiun Meteorologi H Asan Sampit ', 'Jalan Samekto Baamang Hulu Sampit Kabupaten Kotawaringin Timur', '053134363', '053130659', NULL, NULL),
(270, 'Biro Keuangan Sekda Provinsi Kalteng', 'Jalan RTA Milono Nomor 1 Palangka Raya', '05363221287', '05363222706', '73112', NULL),
(271, 'Stasiun Meteorologi Buntok BMKG', 'Jalan Bandara Sanggu Buntok Kalteng', '085100703419', NULL, NULL, 'bmg_buntok@yahoo.co.id'),
(272, 'KUA Kecamatan Balai Riam Kemeneg Kabupaten Sukamara', 'Jalan Pangeran Antasari Nomor 2 Balai Riam', '085249379078', NULL, '74173', NULL),
(273, 'KPU Kabupaten Kotawaringin Timur', 'Jalan HM Arsyad Nomor 54 Sampit', '053133226', '053133264', '74322', 'kpukotim@gmail.com'),
(274, 'Sekretariat Daerah Pemkot Palangka Raya', 'Jalan Tjilik Riwut Km 5.5', '053631496-31422', '053631496-31422', NULL, NULL),
(275, 'Kanwil DJKN Kalimantan Selatan dan Tengah Kemenkeu RI ', 'Jalan R O Ulin Nomor 8 Banjarbaru Kalsel', '05114780787', '05114784399', '70721', NULL),
(276, 'PDAM Pemkot Palangka Raya', 'Jalan A Yani No 7', '05363221384/3220261', '05363221384/3220261', '73111', 'pdam_plk@yahoo.com'),
(277, 'PT Konsuil (Konsul Perdana Indonesia) Wilayah Kalteng', 'Jalan Sulawesi No 17 A Palangka Raya', '05363238601', '05363238602', '73111', 'ptkpi.kalteng@yahoo.co.id'),
(279, 'Yayasan Al Amin Panti Asuhan Darul Amin', 'Jalan Yos Sudarso IX Kel Menteng RT 03/RW VI Jekan Raya Palangka Raya Kalimantan Tengah', '05363237855', NULL, '73112', NULL),
(280, 'Universitas Palangka Raya Kementerian Riset, Teknologi dan Pendidikan Tinggi', 'Kampus Unpar Tunjung Nyaho Jalan Yos Sudarso Palangka Raya', '05363221722, 3220445, 3226878, 3222646, 3229091, 3220446, 32', '05363221722, 3220445, 3226878, 3222646, 3229091, 3220446, 32', '73111', 'www.upr.ac.id'),
(281, 'Kantor Kesehatan Pelabuhan Kelas III Pangkaraya Kemenkes RI', 'Jalan Adonis Samad Palangka Raya Kalteng', '05363225371', '05363225371', '73111', 'www.kkppalangkaraya.com'),
(282, 'Badan Pemeriksa Keuangan Provinsi Kalimantan tengah', 'Jl.Yos Sudarso', NULL, NULL, NULL, NULL),
(283, 'Dinas Pengelolaan Keuangan Dan Aset Daerah Kab Kotawaringin Timur', 'Jalan Ahmad Yani Nomor 14 ', '053121302, 30393', NULL, NULL, NULL),
(284, 'Lapas Kelas IIB Muara Teweh', 'Jalan Pramuka No 113 Muara Teweh', '051921456, 21570', NULL, '73812', NULL),
(285, 'Lapas Klas IIB Pangkalan Bun', 'Jalan Jenderal Sudirman No 51 Pangkalan Bun', '053221193, 24125', '053221193, 24125', '74111', '013.01.406714.lppbun@gmail.com'),
(286, 'Sekda Kabupaten Seruyan', 'Jalan Akhmad Yani No 01 Kuala Pembuang', '05382022222-20222212', '05382022212', '74212', NULL),
(287, 'Lapas Klas IIA Palangka Raya', 'Jalan Tjilik Riwut KM 2.5 Palangka Raya', '05363221312-3221652', NULL, NULL, NULL),
(288, 'Bupati Barito Selatan', 'Jalan Pelita Raya Nomor 305 F Buntok', '052521001', '052521500', '73711', NULL),
(289, 'BPJS Kesehatan', 'Jalan Diponegoro Nomor 21 Palangka Raya', '05363222781', '05363230331', NULL, 'http://www.bpjs-kesehatan.go.id'),
(290, 'KOPANA (Koperasi Purna Karyawan Pertamina) Jakarta Timur', 'Griya Kebayoran Tengah Blok R Nomor 17 Surabaya', '0317668289', NULL, NULL, NULL),
(291, 'Dinas Pendapatan Daerah Pemkot Palangka Raya', 'Jalan Yos Sudarso Nomor 2 Palangka Raya', '05363231057', '05363231057', '73112', 'dispendakotaplk@yahoo.co.id'),
(292, 'Komando Distrik Militer 1015/Sampit Resor Militer 102/ Panju Panjung', NULL, NULL, NULL, NULL, NULL),
(293, 'PT  Kerta Gaya Pusaka', 'Jalan Mangga No 45 RT.01/VIII Pahandut Palangka Raya', NULL, NULL, NULL, NULL),
(294, 'Badan Pusat Statistik Kab Barito Selatan', 'Jalan Tugu No 24 Buntok ', '052521016', '052521016', '73711', 'bps6204@mailhost.bps.go.id'),
(295, 'Rutan Negara Kelas IIB Tamiang Layang', 'Jalan Janah Munsit Km 1,5 Tamiang Layang Kab Bartim Prov Kalteng', NULL, NULL, NULL, 'Rutantamianglayang@yahoo.co.id'),
(296, 'Satker Pengembangan Sistem Penyediaan Air Minum Kementerian PU', 'Jalan S Parman Nomor 03', '05363221806', '05363238266', '73111', 'am_kalteng@yahoo.com'),
(297, 'Kantor Pos Indonesia ', 'Jalan Imam Bonjol No 3 Palangkaraya', '05363224488/89; 05363322888', NULL, '73111', NULL),
(298, 'Rutan Klas IIA Palangka Raya', 'Jalan Tjilik Riwut Km 5', '05363231687', '05363231687', NULL, NULL),
(299, 'Kecamatan Raren Batuah Kab Bartim', 'Jalan Negara Ampah Muara Teweh Km 14 UNSUM  ', NULL, NULL, '73652', 'rarenbatuah@gmail.com'),
(300, 'SMKN 2 Palangka Raya (Program Keahlian Bisnis dan Manajemen)', 'Jalan RA Kartini', '05353221693', NULL, '73111', NULL),
(301, 'Bapas Klas II Pangkalan Bun', 'Jalan Lndak Pangkalan Bun', '053221580', '053221579', '74111', NULL),
(302, 'Para kepala KPPN lingkup  Kanwil DJPBN Prov.kalteng', NULL, NULL, NULL, NULL, NULL),
(303, 'Balai Pemantapan Kawasan Hutan Wilayah XXI', 'Jalan RTA Milono Km 1,5 No 47 Palangka Raya', '05363235158', '05363235158', NULL, 'bpkh21@gmail.com'),
(304, 'Dinas Pendapatan Daerah Pemprov Kalteng', 'Jalan RTA Milono Km 5,5', '3226869, 3226870, 3226894', '3226872', NULL, NULL),
(305, 'Bank Indonesia Perwakilan Palangka Raya', 'Jalan Diponegoro No 11', '3222500, 3222007', NULL, NULL, 'www.bi.go.id'),
(306, 'Pengadilan Agama Sampit', 'Jalan Jenderal Sudirman Km 3.5 No.7', '053121353', '053121353', '74322', 'pa_sampit@yahoo.co.id, www.pa-sampit.go.id'),
(307, 'Madrasah Tsanawiyah Negeri Sampit Kemenag Kab Kotim', 'Jalan Pelita Barat Sampit', '053121833', '053123087', NULL, 'http://www.mtsnsampit.sch.id, tsanegsa@yahoo.com'),
(308, 'Stasiun Meteorologi Tjilik Riwut Palangka Raya', 'Jalan A. Donis Samad Palangka Raya', '05363222871', '05363223588', '73111', 'bmgkalteng@yahoo.co.id'),
(309, 'Sekretariat Daerah Pemprov Kalteng', 'Jalan RTA Milono Nomor 1 Palangka Raya', '05363221716, 3224153', '21517', NULL, NULL),
(310, 'Kementerian Pemuda dan Olahraga', 'Jalan Gerbang Pemuda No 3 Senayan Jakarta', '0215738155, 5738318, 5738312', '0215738155, 5738318, 5738312', '10270', 'http://www.kemenpora.go.id'),
(311, 'Badan Pemberdayaan Masyarakat dan Desa Pemkab Seruyan Kuala Pembuang', 'Jalan Jendral Sudirman ', '05382022466', '05382022467', NULL, NULL),
(312, 'Kantor Unit Penyelenggara Bandar Udara Tumbang Samba', 'Jalan Minun Dehen Tumbang Samba Kab Katingan', NULL, NULL, NULL, 'bdr_tsb@yahoo.com'),
(313, 'BPKP Perwakilan Pengawasan Keuangan dan Pembangunan', 'Jalan Adonis Samad nomor 18Palangka Raya Kalteng', '05363225107', '05363226664', '73111', 'kalteng@bpkp.go.id'),
(314, 'Rumah Tahanan Negara Buntok', 'Jalan Pahlawan Km 5 Buntok', '052521510', NULL, NULL, NULL),
(315, 'Perwakilan Kementerian Keuangan Provinsi Kalimantan Tengah', 'Jalan Tjilik Riwut Km 1 Nomor 10 Palangka Raya', '05363221215', '05363238110', '73111', NULL),
(316, 'Dinas Sosial Tenaga Kerja dan Transmigrasi Pemkab Sukamara', 'Jalan Cilik Riwut Km 9', '05322073047', '05322073047', '74174', NULL),
(317, 'CV Yaci Karya Pratama', 'Komplek Griya Bandung Indah Blok J-1 No 53A', '02287522206', '02287522206', '40287', NULL),
(318, 'Para Ka KPPN Lingkup Kanwil Ditjen Provinsi Aceh', '', '', '', '', ''),
(319, 'BKKBN Banda Aceh', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rklasifikasi`
--

CREATE TABLE IF NOT EXISTS `rklasifikasi` (
  `kode` varchar(6) NOT NULL,
  `jenis` varchar(100) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `keamanan` varchar(30) DEFAULT NULL,
  `dasar` varchar(100) DEFAULT NULL,
  `akses` varchar(50) DEFAULT NULL,
  `keterangan` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rklasifikasi`
--

INSERT INTO `rklasifikasi` (`kode`, `jenis`, `unit`, `keamanan`, `dasar`, `akses`, `keterangan`) VALUES
('AG0', 'ANGGARAN PEMERINTAH', NULL, NULL, NULL, NULL, NULL),
('AG00', 'Penyusunan APBN/P', NULL, NULL, NULL, NULL, NULL),
('AG01', 'Perencanaan Anggaran', NULL, NULL, NULL, NULL, NULL),
('AG02', 'Perubahan Anggaran', NULL, NULL, NULL, NULL, NULL),
('AG03', 'Belanja Subsidi dan Belanja Lainnya', NULL, NULL, NULL, NULL, NULL),
('AG1', 'Dana Bagi Hasil (DBH)', NULL, NULL, NULL, NULL, NULL),
('AG10', 'DBH Minyak Bumi dan Gas', NULL, NULL, NULL, NULL, NULL),
('AG11', 'DBH Bidang Pertambangan', NULL, NULL, NULL, NULL, NULL),
('AG12', 'DBH Bidang Kehutanan', NULL, NULL, NULL, NULL, NULL),
('AG2', 'PERIMBANGAN KEUANGAN', NULL, NULL, NULL, NULL, NULL),
('AG20', 'Pengelolaan Keuangan Daerah', NULL, NULL, NULL, NULL, NULL),
('AG21', 'Dana Dekonsentrasi Daerah', NULL, NULL, NULL, NULL, NULL),
('AG22', 'Distribusi Dana Daerah', NULL, NULL, NULL, NULL, NULL),
('AG220', 'Distribusi/Transfer Dana Daerah', NULL, NULL, NULL, NULL, NULL),
('AG221', 'Penundaan Dana Daerah', NULL, NULL, NULL, NULL, NULL),
('AG23', 'Data Keuangan Daerah', NULL, NULL, NULL, NULL, NULL),
('AG24', 'Dana Darurat / Hibah Daerah', NULL, NULL, NULL, NULL, NULL),
('AG25', 'Penataan Daerah', NULL, NULL, NULL, NULL, NULL),
('AG26', 'Penguatan Keuangan Daerah', NULL, NULL, NULL, NULL, NULL),
('AG260', 'Penguatan Kapasitas Keuangan Daerah', NULL, NULL, NULL, NULL, NULL),
('AG261', 'Pengelolaan Investasi Badan Layanan Umum Daerah (BLUD)', NULL, NULL, NULL, NULL, NULL),
('AG262', 'Pengembangan Ekonomi Daerah', NULL, NULL, NULL, NULL, NULL),
('AG263', 'Investasi Penyertaan Modal Pemerintah (PMP)', NULL, NULL, NULL, NULL, NULL),
('AG27', 'Belanja Daerah', NULL, NULL, NULL, NULL, NULL),
('AG30', 'Laporan Hasil Pemeriksaan', NULL, NULL, NULL, NULL, NULL),
('AG31', 'Laporan Hasil Verifikasi', NULL, NULL, NULL, NULL, NULL),
('AG32', 'Laporan Realisasi', NULL, NULL, NULL, NULL, NULL),
('AG33', 'Laporan Akhir', NULL, NULL, NULL, NULL, NULL),
('DL00', 'Tugas Belajar', NULL, NULL, NULL, NULL, NULL),
('DL000', 'Tugas Belajar Program Diploma', NULL, NULL, NULL, NULL, NULL),
('DL001', 'Tugas Belajar Program Strata', NULL, NULL, NULL, NULL, NULL),
('DL01', 'Pendidikan di Luar Kedinasan', NULL, NULL, NULL, NULL, NULL),
('DL1', 'PELATIHAN', NULL, NULL, NULL, NULL, NULL),
('DL10', 'Perencanaan Pelatihan', NULL, NULL, NULL, NULL, NULL),
('DL11', 'Kurikulum', NULL, NULL, NULL, NULL, NULL),
('DL12', 'Pelaksanaan Pelatihan', NULL, NULL, NULL, NULL, NULL),
('DL120', 'Registrasi Peserta', NULL, NULL, NULL, NULL, NULL),
('DL121', 'Daftar Hadir', NULL, NULL, NULL, NULL, NULL),
('DL122', 'Ujian', NULL, NULL, NULL, NULL, NULL),
('DL123', 'Tugas Akhir', NULL, NULL, NULL, NULL, NULL),
('DL124', 'Sertifikat dan Penghargaan', NULL, NULL, NULL, NULL, NULL),
('DL125', 'Laporan', NULL, NULL, NULL, NULL, NULL),
('DL126', 'Evaluasi Pelatihan', NULL, NULL, NULL, NULL, NULL),
('DL2', 'SEMINAR/KONFERENSI/LOKAKARYA/SYMPOSIUM', NULL, NULL, NULL, NULL, NULL),
('DL20', 'Seminar', NULL, NULL, NULL, NULL, NULL),
('DL21', 'Konferensi', NULL, NULL, NULL, NULL, NULL),
('DL22', 'Lokakarya', NULL, NULL, NULL, NULL, NULL),
('DL23', 'Symposium', NULL, NULL, NULL, NULL, NULL),
('HM0', 'HUMAS', NULL, NULL, NULL, NULL, NULL),
('HM00', 'Hubungan Antar Lembaga', NULL, NULL, NULL, NULL, NULL),
('HM01', 'Pengumpulan, Pengolahan dan Penyajian Informasi', NULL, NULL, NULL, NULL, NULL),
('HM02', 'Pidato', NULL, NULL, NULL, NULL, NULL),
('HM03', 'Hearing', NULL, NULL, NULL, NULL, NULL),
('HM04', 'Pemberian Ucapan', NULL, NULL, NULL, NULL, NULL),
('HM10', 'Upacara', NULL, NULL, NULL, NULL, NULL),
('HM11', 'Acara', NULL, NULL, NULL, NULL, NULL),
('HM12', 'Kunjungan', NULL, NULL, NULL, NULL, NULL),
('HM2', 'PENGADUAN MASYARAKAT/HELP DESK/CALL CENTER', NULL, NULL, NULL, NULL, NULL),
('HM3', 'LAYANAN INFORMASI PUBLIK', NULL, NULL, NULL, NULL, NULL),
('HP0', 'UNDANG-UNDANG', NULL, NULL, NULL, NULL, NULL),
('HP1', 'PERATURAN', NULL, NULL, NULL, NULL, NULL),
('HP10', 'Peraturan Pemerintah', NULL, NULL, NULL, NULL, NULL),
('HP11', 'Peraturan Menteri', NULL, NULL, NULL, NULL, NULL),
('HP12', 'Peraturan Kementerian Keuangan', NULL, NULL, NULL, NULL, NULL),
('HP120', 'Anggaran', NULL, NULL, NULL, NULL, NULL),
('HP121', 'Pajak dan Fiskal', NULL, NULL, NULL, NULL, NULL),
('HP122', 'Bea Cukai', NULL, NULL, NULL, NULL, NULL),
('HP123', 'Perbendaharaan', NULL, NULL, NULL, NULL, NULL),
('HP124', 'Kekayaan Negara', NULL, NULL, NULL, NULL, NULL),
('HP125', 'Perimbangan Keuangan', NULL, NULL, NULL, NULL, NULL),
('HP127', 'Profesi dan Sektor Keuangan', NULL, NULL, NULL, NULL, NULL),
('HP128', 'Pendidikan dan Pelatihan', NULL, NULL, NULL, NULL, NULL),
('HP129', 'Organisasi dan Kepegawaian', NULL, NULL, NULL, NULL, NULL),
('HP13', 'Peraturan Daerah', NULL, NULL, NULL, NULL, NULL),
('HP2', 'KEPUTUSAN', NULL, NULL, NULL, NULL, NULL),
('HP20', 'Keputusan Pemerintah', NULL, NULL, NULL, NULL, NULL),
('HP21', 'Keputusan Menteri', NULL, NULL, NULL, NULL, NULL),
('HP22', 'Keputusan Menteri Keuangan', NULL, NULL, NULL, NULL, NULL),
('HP220', 'Anggaran', NULL, NULL, NULL, NULL, NULL),
('HP221', 'Pajak dan Fiskal', NULL, NULL, NULL, NULL, NULL),
('HP222', 'Bea Cukai', NULL, NULL, NULL, NULL, NULL),
('HP223', 'Perbendaharaan', NULL, NULL, NULL, NULL, NULL),
('HP224', 'Kekayaan Negara', NULL, NULL, NULL, NULL, NULL),
('HP225', 'Perimbangan Keuangan', NULL, NULL, NULL, NULL, NULL),
('HP226', 'Pengelolaan Utang dan Piutang Negara', NULL, NULL, NULL, NULL, NULL),
('HP227', 'Profesi dan Sektor Keuangan', NULL, NULL, NULL, NULL, NULL),
('HP228', 'Pendidikan dan Pelatihan', NULL, NULL, NULL, NULL, NULL),
('HP229', 'Organisasi dan Kepegawaian', NULL, NULL, NULL, NULL, NULL),
('HP23', 'Keputusan Pemerintah Daerah', NULL, NULL, NULL, NULL, NULL),
('HP3', 'INSTRUKSI', NULL, NULL, NULL, NULL, NULL),
('HP30', 'Instruksi Pemerintah', NULL, NULL, NULL, NULL, NULL),
('HP31', 'Instruksi Menteri', NULL, NULL, NULL, NULL, NULL),
('HP32', 'Instruksi Kementerian Keuangan', NULL, NULL, NULL, NULL, NULL),
('HP320', 'Anggaran', NULL, NULL, NULL, NULL, NULL),
('HP321', 'Pajak dan Fiskal', NULL, NULL, NULL, NULL, NULL),
('HP322', 'Bea Cukai', NULL, NULL, NULL, NULL, NULL),
('HP323', 'Perbendaharaan', NULL, NULL, NULL, NULL, NULL),
('HP324', 'Kekayaan Negara', NULL, NULL, NULL, NULL, NULL),
('HP325', 'Perimbangan Keuangan', NULL, NULL, NULL, NULL, NULL),
('HP326', 'Pengelolaan Utang dan Piutang Negara', NULL, NULL, NULL, NULL, NULL),
('HP327', 'Profesi dan Sektor Keuangan', NULL, NULL, NULL, NULL, NULL),
('HP328', 'Pendidikan dan Pelatihan', NULL, NULL, NULL, NULL, NULL),
('HP329', 'Organisasi dan Kepegawaian', NULL, NULL, NULL, NULL, NULL),
('HP33', 'Instruksi Pemerintah Daerah', NULL, NULL, NULL, NULL, NULL),
('HP4', 'SURAT EDARAN', NULL, NULL, NULL, NULL, NULL),
('HP40', 'Surat Edaran pemerintah', NULL, NULL, NULL, NULL, NULL),
('HP41', 'Surat Edaran Menteri', NULL, NULL, NULL, NULL, NULL),
('HP42', 'Surat Edaran Menteri Keuangan', NULL, NULL, NULL, NULL, NULL),
('HP420', 'Anggaran', NULL, NULL, NULL, NULL, NULL),
('HP421', 'Pajak dan Fiskal', NULL, NULL, NULL, NULL, NULL),
('HP422', 'Bea Cukai', NULL, NULL, NULL, NULL, NULL),
('HP423', 'Perbendaharaan', NULL, NULL, NULL, NULL, NULL),
('HP424', 'Kekayaan Negara', NULL, NULL, NULL, NULL, NULL),
('HP425', 'Perimbangan Keuangan', NULL, NULL, NULL, NULL, NULL),
('HP426', 'Pengelolaan Utang dan Piutang Negara', NULL, NULL, NULL, NULL, NULL),
('HP427', 'Profesi dan Sektor Keuangan', NULL, NULL, NULL, NULL, NULL),
('HP428', 'Pendidikan dan Pelatihan', NULL, NULL, NULL, NULL, NULL),
('HP429', 'Organisasi dan Kepegawaian', NULL, NULL, NULL, NULL, NULL),
('HP43', 'Surat Edaran Pemerintah Daerah', NULL, NULL, NULL, NULL, NULL),
('HP5', 'KERJA SAMA', NULL, NULL, NULL, NULL, NULL),
('HP50', 'Kerja Sama Dalam Negeri', NULL, NULL, NULL, NULL, NULL),
('HP51', 'Kerja Sama Luar Negeri', NULL, NULL, NULL, NULL, NULL),
('HP6', 'PENGAWASAN', NULL, NULL, NULL, NULL, NULL),
('HP60', 'Internal', NULL, NULL, NULL, NULL, NULL),
('HP600', 'Pengawasan Sumber Daya Manusia', NULL, NULL, NULL, NULL, NULL),
('HP601', 'Pengawasan Keuangan Tindak Lanjut', NULL, NULL, NULL, NULL, NULL),
('HP602', 'Pengawasan Keuangan Tidak Tindak Lanjut', NULL, NULL, NULL, NULL, NULL),
('HP61', 'Eksternal', NULL, NULL, NULL, NULL, NULL),
('HP610', 'Tindak Lanjut Hasil Pemeriksaan', NULL, NULL, NULL, NULL, NULL),
('HP62', 'Pengawasan Instansi Perpajakan', NULL, NULL, NULL, NULL, NULL),
('HP620', 'Analisa dan Konsultasi Bidang Pajak', NULL, NULL, NULL, NULL, NULL),
('HP621', 'Analisa dan Konsultasi Bidang Bea dan Cukai', NULL, NULL, NULL, NULL, NULL),
('HP622', 'Pencegahan dan Monitoring Bidang Pajak', NULL, NULL, NULL, NULL, NULL),
('HP623', 'Pencegahan dan Monitoring Bidang Bea dan Cukai', NULL, NULL, NULL, NULL, NULL),
('HP624', 'Pengaduan dan Verifikasi Bidang Pajak', NULL, NULL, NULL, NULL, NULL),
('HP625', 'Pengaduan dan Verifikasi Bidang Bea dan Cukai', NULL, NULL, NULL, NULL, NULL),
('HP626', 'Inventarisasi Masukan', NULL, NULL, NULL, NULL, NULL),
('HP627', 'Saran dan Rekomendasi Komite Pengawas', NULL, NULL, NULL, NULL, NULL),
('HP7', 'PEMBINAAN HUKUM', NULL, NULL, NULL, NULL, NULL),
('HP70', 'Penyuluhan Hukum', NULL, NULL, NULL, NULL, NULL),
('KN0', 'PENGELOLAAN BARANG MILIK NEGARA (BMN)', NULL, NULL, NULL, NULL, NULL),
('KN00', 'Penetapan Status BMN', NULL, NULL, NULL, NULL, NULL),
('KN000', 'Penetapan Status Tanah/Bangunan', NULL, NULL, NULL, NULL, NULL),
('PB0', 'PELAKSANAAN ANGGARAN', NULL, NULL, NULL, NULL, NULL),
('PB1', 'PENGELOLAAN KAS NEGARA', NULL, NULL, NULL, NULL, NULL),
('PB10', 'Kas Negara', NULL, NULL, NULL, NULL, NULL),
('PB11', 'Kas Umum Negara', NULL, NULL, NULL, NULL, NULL),
('PB12', 'Dana Pinjaman dan Hibah', NULL, NULL, NULL, NULL, NULL),
('PB13', 'Rekening Pemerintah Lainnya', NULL, NULL, NULL, NULL, NULL),
('PB14', 'Pengelolaan Pensiun', NULL, NULL, NULL, NULL, NULL),
('PB15', 'Pengendalian Kas Negara', NULL, NULL, NULL, NULL, NULL),
('PB2', 'PENGELOLAAN KEUANGAN BADAN LAYAN UMUM', NULL, NULL, NULL, NULL, NULL),
('PB20', 'Penilaian Badan Layanan Umum (BLU)', NULL, NULL, NULL, NULL, NULL),
('PB21', 'Monitoring dan Evaluasi (BLU)', NULL, NULL, NULL, NULL, NULL),
('PB22', 'Pembinaan Kinerja BLU', NULL, NULL, NULL, NULL, NULL),
('PB23', 'Kebijakan dan Standardisasi BLU', NULL, NULL, NULL, NULL, NULL),
('PB3', 'SISTEM MANAJEMEN INVESTASI (SMI)', NULL, NULL, NULL, NULL, NULL),
('PB30', 'Verifikasi, Setelmen, Akuntansi dan Pelaporan', NULL, NULL, NULL, NULL, NULL),
('PB31', 'Kepatuhan dan Sistem Manajemen Investasi (SMI)', NULL, NULL, NULL, NULL, NULL),
('PB32', 'Perencanaan, Kelembagaan, dan Evaluasi SMI', NULL, NULL, NULL, NULL, NULL),
('PB320', 'Pinjaman BUMN', NULL, NULL, NULL, NULL, NULL),
('PB321', 'Pinjaman PEMDA / BUMD', NULL, NULL, NULL, NULL, NULL),
('PB33', 'Pinjaman Pemerintah', NULL, NULL, NULL, NULL, NULL),
('PB34', 'Program Kredit', NULL, NULL, NULL, NULL, NULL),
('PB4', 'PERBENDAHARAAN NEGARA', NULL, NULL, NULL, NULL, NULL),
('PB40', 'Sistem Perbendaharaan dan Anggaran Negara (SPAN)', NULL, NULL, NULL, NULL, NULL),
('PB41', 'Standar Akuntansi Pemerintah (SAP)', NULL, NULL, NULL, NULL, NULL),
('PB410', 'Pengkaji SAP', NULL, NULL, NULL, NULL, NULL),
('PB411', 'Sosialisasi / Penyuluhan/ Workshop/ Bimbingan Teknis', NULL, NULL, NULL, NULL, NULL),
('PB412', 'Evaluasi Implementasi SAP', NULL, NULL, NULL, NULL, NULL),
('PB413', 'Helpdesk Akuntansi dan Pelaporan Keuangan', NULL, NULL, NULL, NULL, NULL),
('PB414', 'Program Percepatan Akuntabilitas Keuangan Pemerintah', NULL, NULL, NULL, NULL, NULL),
('PB42', 'Standar Akuntansi Pemerintah Daerah (SAPD)', NULL, NULL, NULL, NULL, NULL),
('PB43', 'Akuntansi', NULL, NULL, NULL, NULL, NULL),
('PB44', 'Konsolidasi dan Pelaporan Keuangan', NULL, NULL, NULL, NULL, NULL),
('PB45', 'Statistik dan Analisa Laporan Keuangan', NULL, NULL, NULL, NULL, NULL),
('PB5', 'PELAYANAN PERBENDAHARAAN', NULL, NULL, NULL, NULL, NULL),
('PB50', 'Pelayanan Perbendaharaan Negara', NULL, NULL, NULL, NULL, NULL),
('PB500', 'Penerimaan Surat Perintah Membayar', NULL, NULL, NULL, NULL, NULL),
('PB501', 'Pelaporan Bank/ Giro Pos', NULL, NULL, NULL, NULL, NULL),
('PB502', 'Verifkasi Akuntansi', NULL, NULL, NULL, NULL, NULL),
('PB51', 'Pelayanan Perbendaharaan Negara Khusus (Hibah Luar Negeri)', NULL, NULL, NULL, NULL, NULL),
('PB510', 'Pinjaman Hibah Luar Negeri', NULL, NULL, NULL, NULL, NULL),
('PB511', 'Verifikasi Akuntansi Terkait Penarikan Pinjaman Hibah', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rsifat`
--

CREATE TABLE IF NOT EXISTS `rsifat` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `sifat` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `rsifat`
--

INSERT INTO `rsifat` (`id`, `sifat`) VALUES
(1, 'Segera'),
(2, 'Sangat Segera'),
(3, 'Biasa'),
(4, 'Penting'),
(5, 'Rahasia'),
(6, 'Sangat Rahasia');

-- --------------------------------------------------------

--
-- Table structure for table `rstatus`
--

CREATE TABLE IF NOT EXISTS `rstatus` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rstatus`
--

INSERT INTO `rstatus` (`id`, `status`) VALUES
(1, 'Proses'),
(2, 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `sarsip`
--

CREATE TABLE IF NOT EXISTS `sarsip` (
  `id_sArsip` int(7) NOT NULL AUTO_INCREMENT,
  `tArsip` date NOT NULL,
  `jKlasifikasi` varchar(6) NOT NULL,
  `jArsip` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'AKTIF',
  `inaktif` date DEFAULT NULL,
  `bidang` varchar(6) NOT NULL,
  `rak` varchar(2) NOT NULL,
  `box` varchar(2) NOT NULL,
  `folder` varchar(2) NOT NULL,
  `baris` varchar(2) NOT NULL,
  `kolom` varchar(2) NOT NULL,
  `file` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `nArsip` varchar(15) NOT NULL,
  `periode` varchar(4) NOT NULL,
  `nUrut` int(6) NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_sArsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `skeluar`
--

CREATE TABLE IF NOT EXISTS `skeluar` (
  `id_sKeluar` int(10) NOT NULL AUTO_INCREMENT,
  `tKeluar` date NOT NULL,
  `nAgenda` int(6) NOT NULL,
  `jSurat` varchar(5) NOT NULL,
  `nKontrol` varchar(30) NOT NULL,
  `uSifat` varchar(15) NOT NULL,
  `jLampiran` varchar(20) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `kepada` text NOT NULL,
  `hal` text NOT NULL,
  `ket` text,
  `periode` varchar(10) NOT NULL,
  `nfile` varchar(100) DEFAULT NULL,
  `nArsip` varchar(15) DEFAULT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_sKeluar`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `skeluar`
--

INSERT INTO `skeluar` (`id_sKeluar`, `tKeluar`, `nAgenda`, `jSurat`, `nKontrol`, `uSifat`, `jLampiran`, `penerbit`, `kepada`, `hal`, `ket`, `periode`, `nfile`, `nArsip`, `stamp`) VALUES
(1, '2016-11-30', 1429, 'S', '/WPB.18/', 'Biasa', '2 lbr', 'Kepala Subbagian Penilaian Kinerja', ' Ka KPPN Balikpapan', 'tindak lanjut pengelolaan kinerja ', '', '2016', NULL, NULL, '2016-12-01 04:11:35'),
(2, '2016-12-01', 1430, 'S', '/WPB.18/BG.01/', 'Sangat Segera', '1 Berkas', 'Kepala Subbagian Kepegawaian', 'Kqa JKPPN Banda Aceh dan Lhokseumawe', 'Permintaan Usulan CSO dalam rangka Implementasi Layanan Bersama', '', '2016', NULL, NULL, '2016-12-01 09:11:16'),
(3, '2016-12-02', 163, 'KEP', '0', 'Penting', '1 Lbr', 'Kepala Subbagian Kepegawaian', 'Terlampir', 'SK Tim Kegiatan Rekonsiliasi Penerusan Pinjaman PDAM', '', '2016', NULL, NULL, '2016-12-02 02:48:13'),
(4, '2016-12-05', 1492, 'S', '/WPB.18/BG.01/', 'Biasa', '1 Berkas', 'Kepala Seksi Spv. Teknis Aplikasi', 'Dir Sistem Perbendaharaan jakarta', 'Laporan Monitoring dan Evaluasi Standarisasi Infrastruktur SDM Pendukung dan Pelaksanaan SPAN pada KPPN Lingkup Kanwil DJPBN Prov Aceh semester II 2016', '', '2016', NULL, NULL, '2016-12-05 08:25:43'),
(5, '2017-01-03', 1, 'PEM', '0', 'Penting', '', 'Kepala Subbagian Kepegawaian', 'KA kppn Banda Aceh', 'Kenaikan Gaji Berkala an Irwan Susanto', '', '2017', NULL, NULL, '2017-01-03 10:28:03'),
(6, '2017-01-03', 2, 'PEM', '0', 'Penting', '', 'Kepala Subbagian Kepegawaian', 'Ka KPPN Banda Aceh', 'KGB An Tarmizi', '', '2017', NULL, NULL, '2017-01-03 10:28:31'),
(7, '2017-01-03', 3, 'S', '0', 'Biasa', '2 Lbr', 'Kepala Seksi PPA II/A', 'Para Ka KPPN', 'Penelitian dan kajian Pelaksanaan Dana Desa', '', '2017', NULL, NULL, '2017-01-04 02:22:01'),
(8, '2017-01-03', 2, 'S', '0', 'Segera', '', 'Kepala Subbagian Kepegawaian', 'Para Ka KPPN', 'Penawaran Beasiswa Internal 2017', '', '2017', NULL, NULL, '2017-01-04 02:21:13'),
(9, '2017-01-03', 1, 'KEP', '0', 'Penting', '', 'Kepala Kantor', 'Daftar Terlampir', 'Tim Pengelola Pengaduan UPG UKI w Manajemen Resiko 2017', '', '2017', NULL, NULL, '2017-01-04 02:18:29'),
(10, '2017-01-03', 1, 'SI', '0', 'Biasa', '', 'Kepala Subbagian Kepegawaian', 'An Sapta Winanda', 'Ijin Melanjutkan pendidikan diluar kedinasan (AIS)', '', '2017', NULL, NULL, '2017-01-03 10:41:37'),
(11, '2017-01-03', 1, 'ND', '0', 'Penting', '', 'Kepala Subbagian Kepegawaian', 'Para Pegawai Kanwil', 'Pembuatan Penilaian Prestasi Kerja PNS Tahun 2016', '', '2017', NULL, NULL, '2017-01-03 10:44:06'),
(12, '2017-01-03', 1, 'S', '0', 'Segera', '', 'Kepala Subbagian Kepegawaian', 'Para Ka KPPN Lingkup Kanwil Ditjen Provinsi Aceh', 'Pembuatan Penilaian Prestasi Kerja PNS Tahun 2017', '', '2017', NULL, NULL, '2017-01-04 02:19:51'),
(13, '2017-01-04', 5, 'S', '0', 'Segera', '1 Berkas', 'Kepala Subbagian Kepegawaian', 'Sekditjen Perbendaharaan', 'Laporan Berita acara Pelaksanaan Survei Pemahaman Nilai - Nilai Kementerian Keuangan Direktorat Jenderal Perbendaharaan Tahun 2016', '', '2017', NULL, NULL, '2017-01-04 02:22:41'),
(14, '2017-01-04', 4, 'S', '0', 'Segera', '', 'Kepala Subbagian Kepegawaian', 'Para Ka KPPN Lingkup Kanwil Ditjen Provinsi Aceh', 'Penawaran Beasiswa Internal 2017', '', '2017', NULL, NULL, '2017-01-04 02:22:27'),
(15, '2017-01-04', 1, 'Mo', '0', 'Segera', '', 'Kepala Subbagian Kepegawaian', 'seluruh pejabat', 'Penawaran Beasiswa Internal 2017', '', '2017', NULL, NULL, '2017-01-04 02:15:59'),
(16, '2017-01-04', 2, 'ND', '0', 'Segera', '', 'Kepala Seksi PPA II/A', '', 'pelaksanaan Rekonsiliasi Outstanding Pinjaman Pemda dan BUMD posisi per 31 Desember 2016', '', '2017', NULL, NULL, '2017-01-04 02:17:20'),
(17, '2017-01-04', 1, 'ST', '0', 'Penting', '', 'Kepala Subbagian Kepegawaian', 'An Samsul Bahri dan Emil', 'Pendampingan kegiatan Protokoler di Kab Pidie Jaya', '', '2017', NULL, NULL, '2017-01-04 02:18:13'),
(18, '2017-01-04', 6, 'S', '0', 'Biasa', '', 'Kepala Seksi PSAPD', 'Dir APK', 'penyampaian Laporan kegiatan seksi PSAPD PAPK semester II', '', '2017', NULL, NULL, '2017-01-04 02:25:39'),
(22, '2017-01-04', 7, 'S', '0', 'Sangat Segera', '', 'Kepala Subbagian Kepegawaian', 'Para Ka KPPN Banda Aceh', 'Rapat Arahan Menteri Keuangan', '', '2017', NULL, NULL, '2017-01-04 03:37:25'),
(21, '2017-01-04', 1, 'UND', '0', 'Segera', '', 'Kepala Seksi PPA II/A', 'para Debitur', 'undangan', '', '2017', NULL, NULL, '2017-01-04 03:36:26'),
(23, '2017-01-04', 3, 'ND', '0', 'Penting', '', '0', 'sluruh pejabat', 'Rapat Arahan Menteri Keuangan', '', '2017', NULL, NULL, '2017-01-04 03:38:35'),
(24, '2017-01-04', 4, 'ND', '0', 'Segera', '1', 'Kepala Bidang PPA I', 'Kabu u.p Kasubag TURT', 'Permohonan Pencetakan dan Penggandaan', '', '2017', NULL, NULL, '2017-01-04 05:26:33'),
(25, '2017-01-04', 8, 'S', '0', 'Segera', '', 'Kepala Subbagian Keuangan', 'Kabag Keuangan', 'Permohonan Transfer Dana Sosial untuk 1 orng', '', '2017', NULL, NULL, '2017-01-04 10:53:10'),
(26, '2017-01-04', 9, 'S', '0', 'Segera', '', 'Kepala Bidang PAPK', 'Dir PA ', 'Laporan semester II tahun 2016 Bimbingan Sistem Akuntansi dan Pelaporan keuangan', '', '2017', NULL, NULL, '2017-01-04 10:56:26'),
(27, '2017-01-04', 10, 'S', '0', 'Segera', '', 'Kepala Seksi Spv. Proses Bisnis', 'Dir PKN', 'Rekapitulai Hasil Monitoring Penerimaan Negara pada akhir tahun anggaran 2016', '', '2017', NULL, NULL, '2017-01-04 11:04:20'),
(28, '2017-01-04', 1, 'SPK', '0', 'Penting', '', 'Kepala Subbagian Kepegawaian', '', 'Surat perintah Kerja Lembur januari', '', '2017', NULL, NULL, '2017-01-04 11:05:36'),
(29, '2017-01-04', 2, 'ST', '/WPB.01/', 'Segera', '', 'Kepala Subbagian Kepegawaian', '', 'Kegiatan Kunjungan Kerja Kementerian Keuangan', '', '2017', NULL, NULL, '2017-01-05 02:53:23'),
(30, '2017-01-05', 3, 'ST', '0', 'Penting', '', 'Kepala Subbagian Kepegawaian', 'An Terlampir', 'ST Penyiapan Tenag Pendamping Penyusunan LKKL 2016', '', '2017', NULL, NULL, '2017-01-05 07:31:18'),
(31, '2017-01-06', 11, 'S', '0', 'Penting', '1 Lbr', 'Kepala Subbagian Kepegawaian', 'An Alfian dkk', 'Surat Rekomendasi  tentang pemanggilan Peserta Diklat', '', '2017', NULL, NULL, '2017-01-06 08:29:54'),
(32, '2017-01-06', 4, 'ST', '0', 'Penting', '', 'Kepala Subbagian Kepegawaian', 'An Bakhtaruddin', 'St Peserta ministry of Finance dan executive gatring', '', '2017', NULL, NULL, '2017-01-06 10:35:18'),
(33, '2017-01-06', 1, 'PRINT', '0', 'Penting', '', 'Kepala Subbagian Kepegawaian', 'An Fauzil Amri', 'Plh Kakanwil', '', '2017', NULL, NULL, '2017-01-06 10:36:14'),
(34, '2017-01-06', 2, 'SI', '0', 'Penting', '', 'Kepala Subbagian Kepegawaian', 'An Falih Ariyanto', 'Cuti Sakit', '', '2017', NULL, NULL, '2017-01-06 10:37:37'),
(35, '2017-01-06', 2, 'PRINT', '0', 'Penting', '', 'Kepala Subbagian Kepegawaian', 'An Yopiter Agung Putra', 'Plh Ka KPPN Tapaktuan', '', '2017', NULL, NULL, '2017-01-06 10:38:22'),
(36, '2017-01-06', 3, 'PRINT', '0', 'Penting', '', 'Kepala Subbagian Kepegawaian', 'An Agus Setiawan', 'Plh ka KPPN Meulaboh', '', '2017', NULL, NULL, '2017-01-06 10:38:54'),
(37, '2017-01-06', 3, 'SI', '0', 'Penting', '', 'Kepala Subbagian Kepegawaian', 'An fathurahman', 'Cuti Tahunan', '', '2017', NULL, NULL, '2017-01-06 10:39:35'),
(39, '2017-01-06', 12, 'S', '/WPB.01/', 'Sangat Segera', '1 berkas', 'Kepala Subbagian Penilaian Kinerja', 'Para Ka KPPN Lingkup Kanwil Ditjen Provinsi Aceh', 'Permintaan Data Capaian IKU Kemenkeu-Two-Three Triwulan IV Tahun 2016', '', '2017', NULL, NULL, '2017-01-06 11:31:56'),
(40, '2017-01-06', 2, 'Mo', '/WPB.01/', 'Sangat Segera', '-', 'Kepala Subbagian Penilaian Kinerja', 'Para Kepala Bagian/Bidang lingkup Kanwil DJPB Prov. Aceh', 'Permintaan Data Capaian IKU Kemenkeu Two-Three Triw IV Tahun 2016', '', '2017', NULL, NULL, '2017-01-06 11:57:23'),
(41, '2017-01-09', 5, 'ST', '0', 'Penting', '1 lbr', 'Kepala Subbagian Kepegawaian', 'An Barry Dharmawan', 'Permintaan data NPWP ke Kantor Gubernur', '', '2017', NULL, NULL, '2017-01-09 01:10:36'),
(42, '2017-01-09', 4, 'SI', '0', 'Penting', '', 'Kepala Subbagian Kepegawaian', 'An Harry Pratama', 'Cuti Sakit', '', '2017', NULL, NULL, '2017-01-09 01:12:35'),
(43, '2017-01-09', 13, 'S', '0', 'Segera', '1 Berkas', 'Kepala Seksi PPA I/A', 'Dir PPK BLU Dir PA', 'Laporan periodik Pembinaan Pengelolaan Keuangan Satker BLU Semester II Tahun 2016', '', '2017', NULL, NULL, '2017-01-09 03:42:16'),
(44, '2017-01-09', 14, 'S', '0', 'Segera', '1 Berkas', 'Kepala Bidang PAPK', 'Dir Akuntansi dan pelaporan', 'Penyampaian Laporan perkembangan penyelesaian administrasi BRR nad nias ', '', '2017', NULL, NULL, '2017-01-09 03:45:25'),
(45, '2017-01-09', 15, 'S', '0', 'Segera', '1 Berkas', 'Kepala Bidang PPA I', 'Kanwil Agama  Kadis Prov aceh 3. Satker pengembangan Kawasan Pemukiman 4. Penyehatan Lingkungan', 'Penyampaian Peraturan Menkleu tentang perubahan Mekanisme Pelaksanaan Banrtuan Penmerintah kepada KL', '', '2017', NULL, NULL, '2017-01-09 04:18:16'),
(46, '2017-01-09', 1, 'SP', '/WPB.01/BG.01/', 'Segera', '1', 'Kepala Bagian Umum', 'KPPN Banda Aceh', 'Surat Keterangan Penghentian Pembayaran (SKPP) Gaji pindah atas nama Zanaria', 'SKPP a.n Zanaria', '2017', NULL, NULL, '2017-01-09 05:04:14'),
(47, '2017-01-09', 5, 'ND', '0', 'Segera', '', 'Kepala Subbagian Kepegawaian', 'Kurniawan dkk', 'Pembinaan dan Supervisi KPPN Banda aceh', '', '2017', NULL, NULL, '2017-01-09 09:27:35'),
(48, '2017-01-09', 5, 'SI', '0', 'Penting', '', 'Kepala Subbagian Kepegawaian', 'Anubng', 'Cuti Tahunan', '', '2017', NULL, NULL, '2017-01-09 09:28:07'),
(49, '2017-01-09', 2, 'SP', '/WPB.01/', 'Sangat Segera', '1 Berkas', 'Kepala Subbagian Kepegawaian', 'Ka KPPN Langsa', 'Pengantar surat KEP 174', '', '2017', NULL, NULL, '2017-01-09 11:00:34'),
(50, '2017-01-09', 3, 'SP', '0', 'Penting', '1 Berkas', 'Kepala Subbagian Kepegawaian', 'Ka KPPN Langsa', 'Pengantar surat KEP 168', '', '2017', NULL, NULL, '2017-01-09 09:33:51'),
(51, '2017-01-09', 6, 'ND', '0', 'Penting', '', 'Kepala Subbagian Kepegawaian', 'Terlampir', 'Rapat Persiapanj Hari bakti Perbendaharaan', '', '2017', NULL, NULL, '2017-01-09 09:48:47'),
(52, '2017-01-09', 16, 'S', '0', 'Segera', '', 'Kepala Bidang PPA II', 'Sekditjen Pbn', 'laporan kegiatan FEKK Provinsi Aceh', '', '2017', NULL, NULL, '2017-01-09 09:49:52'),
(53, '2017-01-09', 17, 'S', '/WPB.01/', 'Segera', '1', 'Kepala Subbagian Penilaian Kinerja', 'SetDit.jen Perbendaharaan', 'Laporan Capaian IKU Kemenkeu-Two Triw IV format flash report', '', '2017', NULL, NULL, '2017-01-09 10:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `skeputusan`
--

CREATE TABLE IF NOT EXISTS `skeputusan` (
  `id_skeputusan` int(10) NOT NULL AUTO_INCREMENT,
  `nsurat` varchar(11) NOT NULL,
  `kdwil` varchar(11) NOT NULL,
  `kdmas` varchar(11) NOT NULL,
  `blth` varchar(22) NOT NULL,
  `tsurat` date NOT NULL,
  `pelaksana` int(10) NOT NULL,
  `isi` text NOT NULL,
  `ket` text NOT NULL,
  `periode` int(10) NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_skeputusan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smasuk`
--

CREATE TABLE IF NOT EXISTS `smasuk` (
  `id_sMasuk` int(10) NOT NULL AUTO_INCREMENT,
  `nAgenda` varchar(6) NOT NULL,
  `jSurat` varchar(5) DEFAULT NULL,
  `uSifat` varchar(15) DEFAULT NULL,
  `nSurat` varchar(50) NOT NULL,
  `tSurat` date NOT NULL,
  `jLampiran` varchar(10) DEFAULT NULL,
  `tMasuk` date NOT NULL,
  `dari` text NOT NULL,
  `hal` text NOT NULL,
  `dispo` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `periode` varchar(10) NOT NULL,
  `nfile` varchar(100) DEFAULT NULL,
  `nArsip` varchar(16) DEFAULT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_sMasuk`,`nAgenda`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `smasuk`
--

INSERT INTO `smasuk` (`id_sMasuk`, `nAgenda`, `jSurat`, `uSifat`, `nSurat`, `tSurat`, `jLampiran`, `tMasuk`, `dari`, `hal`, `dispo`, `status`, `periode`, `nfile`, `nArsip`, `stamp`) VALUES
(1, '', '0', '0', '', '0000-00-00', '', '2016-12-05', '', '', '0', '0', '2016', NULL, NULL, '2016-12-05 07:56:17'),
(2, '000001', 'S', 'Biasa', 'S-10842', '2016-12-28', '', '2017-01-03', 'DJPB pusat', 'Permintaan data capaian IKU kemenkeu two three', '0', '0', '2017', NULL, NULL, '2017-01-03 09:45:15'),
(3, '000002', 'S', 'Sangat Segera', 'S-10853', '2016-12-28', '', '2017-01-03', 'sekditjen Pbn', 'Evaluasi Laporan ', '0', '0', '2017', NULL, NULL, '2017-01-03 09:49:27'),
(4, '000003', 'S', 'Sangat Segera', '10891', '2016-12-29', '', '2017-01-03', ' Kantor PusatDJPBN ', 'standarisasi Identifikasi Risiko dalam rangka penyusunan Profil Risiko pada Kanwil', '0', '0', '2017', NULL, NULL, '2017-01-03 10:51:42'),
(5, '000004', 'S', 'Biasa', 'no number', '0000-00-00', '', '2017-01-06', 'Daratan Samudra ', 'Proposal Kerjasama', '0', '0', '2017', NULL, NULL, '2017-01-06 00:48:23'),
(6, '000005', 'S', 'Segera', 'S-63', '2017-01-04', '', '2017-01-06', 'Direktur Jenderal Perbendaharaan', 'Pencairan dana Uang Persediaan Tahun 2017', '0', '0', '2017', 'S-63_PB_2017 PENCAIRAN DANA UP TAHUN 2017.pdf', NULL, '2017-01-06 07:51:53'),
(7, '000006', 'S', 'Biasa', 'S-10348', '2016-12-16', '', '2017-01-06', 'Direktur Sistem Perbendaharaan', 'Penyampaian Jurnal ITREV', '0', '0', '2017', NULL, NULL, '2017-01-06 08:19:23'),
(9, '000007', 'S', 'Sangat Segera', 'S-106', '2017-01-06', '', '2017-01-06', 'sekditjen', 'Permohonan menghadiri Ministry of Finance Executives Gathering', 'Kepala Bagian Umum', 'Selesai', '2017', 'S-106.pdf', NULL, '2017-01-06 10:40:17'),
(10, '000008', '0', 'Segera', 'S-9', '0000-00-00', '', '2017-01-09', '', '', '0', '0', '2017', NULL, NULL, '2017-01-09 01:08:12'),
(11, '000008', 'S', 'Segera', 'B01', '2017-01-03', '1', '2017-01-09', 'B P S Banda Aceh', 'Permintaan Data', '0', '0', '2017', NULL, NULL, '2017-01-09 01:15:32'),
(12, '000009', 'S', 'Sangat Segera', 'S-10017', '2017-01-08', '', '2017-01-09', 'Direktorat Jenderal Perbendaharaan', 'Petunjuk Lebih Lanjut Pembayaran Gaji Induk Bln januari 2017', '0', '0', '2017', NULL, NULL, '2017-01-09 03:10:59'),
(13, '000010', 'S', 'Segera', 'S-007', '2017-01-04', '1', '2017-01-09', 'KPPN Tapaktuan', 'Lap Realisasi Anggaran Lap KinerjaKPPN Tapaktuan Des TA 2016', '0', '0', '2017', NULL, NULL, '2017-01-09 03:21:24'),
(14, '000011', 'S', 'Segera', 'S-9', '2017-01-03', '1', '2017-01-09', '', '', '0', '0', '2017', NULL, NULL, '2017-01-09 03:23:32'),
(15, '000012', 'S', 'Biasa', 'HK-02.02/Menkes/652/2016', '0000-00-00', '1', '2017-01-09', '', '', '0', '0', '2017', NULL, NULL, '2017-01-09 03:31:09'),
(16, '000013', 'S', 'Segera', '800/301/1/2017', '2017-01-09', '', '2017-01-09', 'Dinas Perindustrian Perdagangan Pertambangan Kutacane', 'Permohonan Dispensasi Pengajuan SPM', '0', '0', '2017', NULL, NULL, '2017-01-09 03:57:37'),
(17, '000014', 'S', 'Segera', 'S-4/WPB.01/KP.002/2017', '2017-01-03', '1', '2017-01-09', 'KPPN Langsa', 'Laporan rekapitulasi transaksi penerimaan negara yang di reversal KPPN langsa bulan desember 2016', '0', '0', '2017', NULL, NULL, '2017-01-09 04:15:18'),
(18, '000015', 'S', 'Biasa', 'S-26', '2017-01-30', '1', '2017-01-09', 'Sekretarit Direktorat Jenderal', 'Lap Realisasi Pembayaran Uang Dana Sosial para Peg DJPB SM II TA 2016', '0', '0', '2017', NULL, NULL, '2017-01-09 04:20:18'),
(19, '000016', 'S', 'Segera', 'S-11027/PB.6/2016', '2016-01-30', '1', '2017-01-09', 'Direktorat Akutansi Dan Pelaporan Keuangan', 'penyampaian 1 bh buku Proding Rakernas Akutansi Pelaporan Keuangan Ta 2016', '0', '0', '2017', NULL, NULL, '2017-01-09 04:27:00'),
(20, '000017', 'SP', 'Biasa', 'SP-2620 /PB.14/2016', '2016-01-30', '', '2017-01-09', 'Sekretariat Direktorat Jenderal', 'Majalah Treasury Indonesia 3 macam', '0', '0', '2017', NULL, NULL, '2017-01-09 04:41:58'),
(21, '000018', 'S', 'Segera', 'S-3/WPB.01/KP.002/2017', '2017-01-03', '1', '2017-01-09', 'KPPN Langa', 'Lap Monitoring Kepatuhan Bank/Pos Persepsi Mitra Kerja KPPN Des ', '0', '0', '2017', NULL, NULL, '2017-01-09 04:45:08'),
(22, '000019', 'S', 'Segera', 'S-1/wpb.01/kp.002/2017', '2017-01-03', '2', '2017-01-09', 'KPPN Langsa', 'Lap Monitoring Penerimaan Negara akhir TA 2016', '0', '0', '2017', NULL, NULL, '2017-01-09 04:48:35'),
(23, '000020', 'S', 'Segera', 'S-1452/WPB.01/KP.002/2016', '2016-12-27', '', '2017-01-09', 'KPPN Langsa', 'Fotoegiatan akhir TA 2016', '0', '0', '2017', NULL, NULL, '2017-01-09 04:53:00'),
(24, '000021', 'KEP', 'Segera', 'KEP.02/BP3TKI-1/I/2017', '2017-01-04', '1', '2017-01-09', 'BP3TKI Banda Aceh', 'Penunjukan Pejabat Pangadaan barang/jasa dan pejabat penerima barang/jasa Daftar Isian Pelaksanaan Anggaran (DIPA) BP3TKI Banda Aceh TA 2017', '0', '0', '2017', NULL, NULL, '2017-01-09 07:54:11'),
(25, '000022', 'SP', 'Segera', 'SP-441/WKN.01/2016', '2016-12-29', '1', '2017-01-09', 'Kanwil DJKN Provinsi Aceh', 'Penetapan status penggunaan BMN Eks BRR NAD-Nias pada Mahkamah Agung RI', '0', '0', '2017', NULL, NULL, '2017-01-09 08:14:29'),
(26, '000023', 'S', 'Segera', 'S-1501/WPB.01/KP.002/2016', '2016-12-30', '-', '2017-01-09', 'KPPN Langsa', 'Permintaan legalisasi ijazah dan transkrip nilai pegawai lulusan diploma III STAN', '0', '0', '2017', NULL, NULL, '2017-01-09 08:17:39'),
(27, '000024', 'S', 'Segera', 'S-014/WPB.01/KP.074/2017', '2017-01-05', '1', '2017-01-09', 'KPPN Tapaktuan', 'Batas waktu pelaksanaan rekonsiliasi dan penyampaian LPJ Bendahara', '0', '0', '2017', NULL, NULL, '2017-01-09 08:20:06'),
(28, '000025', 'S', 'Segera', 'S-013/WPB.01/KP.074/2017', '2017-01-05', '1', '2017-01-09', 'KPPN Tapaktuan', 'Laporan pengaduan periode Tgl. 01 s/d 31 Desember 2016', '0', '0', '2017', NULL, NULL, '2017-01-09 08:23:16'),
(29, '000026', 'S', 'Biasa', 'S-011/WPB.01/KP.074/2017', '2017-01-05', '1', '2017-01-09', 'KPPN Tapak Tuan', 'Laporan hasil pemantauan pengendalian utama KPPN Tapaktuan', '0', '0', '2017', NULL, NULL, '2017-01-09 08:29:04'),
(30, '000027', 'S', 'Biasa', 'S-012/WPB.01/KP.074/2016', '2017-01-05', '1', '2017-01-09', 'KPPN Tapak Tuan', 'Laporan hasil pemantauan pengendalian utama KPPN Tapaktuan', '0', '0', '2017', NULL, NULL, '2017-01-09 08:31:07'),
(31, '000028', 'UND', 'Segera', 'Und-001/WKN.01/2017', '2017-01-09', '-', '2017-01-09', 'Kanwil DJKN Aceh', 'Undangan rapat koordinasi implementasi program layanan bersama (co-location) Kementerian Keuangan', '0', '0', '2017', NULL, NULL, '2017-01-09 08:34:31'),
(32, '000029', 'S', 'Segera', 'S-008/WPB.01/KP.105/2017', '2017-01-03', '1', '2017-01-09', 'KPPN Kutacane', 'Laporan pelaksanaan pemantauan pengendalian intern bulan des 2016', '0', '0', '2017', NULL, NULL, '2017-01-09 08:37:02'),
(33, '000030', 'S', 'Segera', 'S-11/WPB.01/KP.105/2017', '2017-01-03', '2', '2017-01-09', 'KPPN Kutacane', 'Penyampaian laporan penyerapan anggaran dan pengadaan barang/jasa oleh PPK tahun 2016', '0', '0', '2017', NULL, NULL, '2017-01-09 08:38:55'),
(34, '000031', 'SP', 'Segera', 'SP-262/WPB.01/KP.002/2016', '2016-08-23', '-', '2017-01-09', 'KPPN Langsa', 'Usulan permintaan pembuatan KARPEG dan kartu TASPEN pegawai KPPN Langsa', '0', '0', '2017', NULL, NULL, '2017-01-09 08:44:25'),
(35, '000032', 'SP', 'Biasa', 'SP-216/WPB.01/2016', '2016-12-22', '-', '2017-01-09', 'Kanwil DJPBN Provinsi Aceh', 'Berita acara serah terima bhakti sosial', '0', '0', '2017', NULL, NULL, '2017-01-09 08:50:04'),
(36, '000033', 'SP', 'Biasa', 'SP-05/WPB.01/KP.105/2017', '2017-01-03', '1', '2017-01-09', 'KPPN Kutacane', 'Daftar rekapitulasi transaksi penerimaan negara yang reversal dan laporan pelaksanaan reversal transaksi penerimaan negara des 2016', '0', '0', '2017', NULL, NULL, '2017-01-09 08:53:14'),
(37, '000034', 'SP', 'Biasa', 'SP-04/WPB.01/KP.105/2017', '2017-01-03', '1', '2017-01-09', 'KPPN Kutacane', 'Laporan tindak lanjut pengenaan dan penyelesaian denda keterlambatan pelimpahan penerimaan negara des 2016', '0', '0', '2017', NULL, NULL, '2017-01-09 08:56:31'),
(38, '000035', 'S', 'Biasa', 'S-013/WPB.01/KP.105/2017', '2017-01-03', '2', '2017-01-09', 'KPPN Kutacane', 'Laporan pengawasan penyelesaian retur dana SP2D beban RPKBUNP SPAN', '0', '0', '2017', NULL, NULL, '2017-01-09 08:58:25'),
(39, '000036', 'SP', 'Biasa', 'SP-03/WPB.01/KP.105/2017', '2017-01-03', '1', '2017-01-09', 'KPPN Kutacane', 'Daftar monitoring kepatuhan bank/pos persepsi mitra kerja KPPN Kutacane des 2016', '0', '0', '2017', NULL, NULL, '2017-01-09 09:00:43'),
(40, '000037', 'S', 'Segera', 'S-1188/WPB.01/KP.105/2016', '2016-12-30', '-', '2017-01-09', 'KPPN Kutacane', 'Perekaman data jaminan bank dan addendum kontrak dikarekan self blocking', '0', '0', '2017', NULL, NULL, '2017-01-09 09:02:42'),
(41, '000038', 'S', 'Segera', 'S-007', '2017-01-03', '1', '2017-01-09', 'KPPN Kutacane', 'Laporan bulanan pengaduan KPPN', '0', '0', '2017', NULL, NULL, '2017-01-09 09:07:19'),
(42, '000039', 'S', 'Segera', 'S-10', '2017-01-03', '1', '2017-01-09', 'KPPN Kutacane', 'Pelaporan Gratifikasi', '0', '0', '2017', NULL, NULL, '2017-01-09 09:08:42'),
(43, '000040', 'S', 'Biasa', 'S-1165', '2016-12-20', '1', '2017-01-09', 'KPPN Kutacane', 'Penyempurnaan penyusunan blueprint ditjen perbendaharaan', '0', '0', '2017', NULL, NULL, '2017-01-09 09:10:17'),
(44, '000041', 'S', 'Segera', 'S-18', '2017-01-04', '1', '2017-01-09', 'KPPN Kutacane', 'Permintaan data capaian IKU kemenkeu-three triwulan IV thn 2016', '0', '0', '2017', NULL, NULL, '2017-01-09 09:11:54'),
(45, '000042', 'S', 'Segera', 'S-00027/ WPB.01/ KP.105/2017', '2017-01-09', '1', '2017-01-09', 'KPPN Kutacane', 'Penyelesaian UP/ TUP TA 2016 yg tdk dpt dipertanggungjawaban', '0', '0', '2017', NULL, NULL, '2017-01-09 09:43:52'),
(46, '000043', 'S', 'Segera', 'S-00038/WPB.01/KP.105/2017', '2017-01-09', '1', '2017-01-09', 'KPPN Kutacane', 'Penyelesaian UP/TUP TA 2016 Dinas Peridustria,Perdag ,Pertam Kab.A.Tenggara', '0', '0', '2017', NULL, NULL, '2017-01-09 09:51:28'),
(47, '000044', 'S', 'Segera', 'S-58', '2017-01-06', '1 berkas', '2017-01-09', 'KPPN Banda Aceh', 'Laporan pemantauan pengendalian utama unit kerja akhir triwulanan IV thn 2016', '0', '0', '2017', NULL, NULL, '2017-01-09 10:22:32'),
(48, '000045', 'S', 'Segera', 'S-14', '2017-01-03', '1 berkas', '2017-01-09', 'KPPN Kutacane', 'Laporan pelaksanaan kegiatan peningkatan kapasitas internal SDM', '0', '0', '2017', NULL, NULL, '2017-01-09 10:24:31'),
(49, '000046', 'S', 'Segera', 'S-16', '2017-01-04', '1 berkas', '2017-01-09', 'KPPN Kutacane', 'Laporan loss event database', '0', '0', '2017', NULL, NULL, '2017-01-09 10:26:10'),
(50, '000047', 'S', 'Segera', 'S-17', '2017-01-04', '1 berkas', '2017-01-09', 'KPPN Kutacane', 'Laporan rekapitulasi penanganan gratifikasi', '0', '0', '2017', NULL, NULL, '2017-01-09 10:49:35'),
(51, '000048', 'S', 'Segera', 'S-021', '2017-01-04', '1 berkas', '2017-01-09', 'KPPN Kutacane', 'Checklist bulanan pengamanan BMN', '0', '0', '2017', NULL, NULL, '2017-01-09 10:51:58'),
(52, '000049', 'S', 'Segera', 'S-19', '2017-01-04', '1 berkas', '2017-01-09', 'KPPN Kutacane', 'Laporan semesteran pelaksanaan pemantauan terhadap kode etik dan disiplin pegawai', '0', '0', '2017', NULL, NULL, '2017-01-09 10:55:47'),
(53, '000050', 'S', 'Segera', 'S-20', '2017-01-04', '1 berkas', '2017-01-09', 'KPPN Kutacane', 'Laporan hasil penanganan dugaan pelanggaran kode etik', '0', '0', '2017', NULL, NULL, '2017-01-09 11:07:21'),
(54, '000051', 'S', 'Segera', 'S-009', '2017-01-03', '1 berkas', '2017-01-10', 'KPPN Kutacane', 'Laporan pelaksanaan pemantauan pengendalian intern triwulan IV thn 2016', '0', '0', '2017', NULL, NULL, '2017-01-10 01:39:10'),
(55, '000052', '0', 'Penting', '903/026', '2017-01-04', '3 eks', '2017-01-10', 'Sekretariat Daerah Aceh Besar', 'Laporan realisasi dana desa tahun 2016', '0', '0', '2017', NULL, NULL, '2017-01-10 01:46:21'),
(56, '000053', 'S', 'Penting', 'S-1498', '2016-12-29', '-', '2017-01-10', 'KPPN Langsa', 'Tindak lanjut SP2S november 2016', '0', '0', '2017', NULL, NULL, '2017-01-10 01:49:16'),
(57, '000054', 'S', 'Penting', 'S-1499', '2016-12-29', '-', '2017-01-10', 'KPPN Langsa', 'Tindak lanjut SP2S november 2016', '0', '0', '2017', NULL, NULL, '2017-01-10 01:51:20'),
(58, '000055', 'S', 'Penting', 'S-1500', '2016-12-29', '-', '2017-01-10', 'KPPN Langsa', 'Tindak lanjut SP2S november 2016', '0', '0', '2017', NULL, NULL, '2017-01-10 01:52:38'),
(59, '000056', 'S', 'Segera', 'S-1492', '2015-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 01:56:01'),
(60, '000057', 'S', 'Segera', 'S-1491/wpb.01/kp.002/2016', '2016-12-15', '', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan Pencabutan Pengenaan Sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:07:23'),
(61, '000058', 'S', 'Segera', 'S-1490/wpb.01/kp.002/2016', '2016-01-15', '', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengnaan Sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:20:20'),
(62, '000059', 'S', 'Segera', 'S-38', '2017-01-05', '1 berkas', '2017-01-10', 'KPPN Banda Aceh', 'Laporan perkembangan mengikuti pendidikan di luar kedinasan an. Tyo Widayanto', '0', '0', '2017', NULL, NULL, '2017-01-10 02:23:22'),
(63, '000060', 'S', 'Segera', 'S-1488', '2015-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:24:45'),
(64, '000061', 'S', 'Segera', 'S-1473/wpb.01/kp.002/2016', '2016-01-15', '', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan Pencabutan Pengenaan Sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:26:42'),
(65, '000062', 'S', 'Segera', 'S-1487', '2015-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:28:00'),
(66, '000063', 'S', 'Segera', 'S-1486', '2015-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:29:02'),
(67, '000064', 'S', 'Segera', 'S-1485', '2015-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:30:04'),
(68, '000065', 'S', 'Segera', 'S-1484', '2015-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:30:52'),
(69, '000066', 'S', 'Segera', 'S-1483', '2015-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:31:41'),
(70, '000067', 'S', 'Segera', 'S-1482', '2015-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:32:41'),
(71, '000068', 'S', 'Segera', 'S-1481', '2015-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:34:03'),
(72, '000069', 'S', 'Segera', 'S-1480', '2015-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:34:45'),
(73, '000070', 'S', 'Segera', 'S-1479', '2015-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:35:32'),
(74, '000071', 'S', 'Segera', 'S-1478', '2015-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:36:28'),
(75, '000072', 'S', 'Segera', 'S-1477', '2015-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:37:44'),
(76, '000073', 'S', 'Segera', 'S-1476', '2015-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:38:34'),
(77, '000074', 'S', 'Segera', 'S-1475', '2015-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:39:27'),
(78, '000075', 'S', 'Segera', 'S-1474', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:41:16'),
(79, '000076', 'S', 'Segera', 'S-1472', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:43:13'),
(80, '000077', 'S', 'Segera', 'S-1471', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:44:13'),
(81, '000078', 'S', 'Segera', 'S-1470', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:45:01'),
(82, '000079', 'S', 'Segera', 'S-1468', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:46:42'),
(83, '000080', 'S', 'Segera', 'S-1467', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:47:38'),
(84, '000081', 'S', 'Segera', 'S-1466', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:48:20'),
(85, '000082', 'S', 'Segera', 'S-1465', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:49:04'),
(86, '000083', 'S', 'Segera', 'S-1464', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:49:47'),
(87, '000084', 'S', 'Segera', 'S-1463', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:50:31'),
(88, '000085', 'S', 'Segera', 'S-1461', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:51:17'),
(89, '000086', 'S', 'Segera', 'S-1460', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:52:23'),
(90, '000087', 'S', 'Segera', 'S-1459', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:53:21'),
(91, '000088', 'S', 'Segera', 'S-1458', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:54:09'),
(92, '000089', 'S', 'Segera', 'S-1457', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:54:51'),
(93, '000090', 'S', 'Segera', 'S-1456', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:55:36'),
(94, '000091', 'S', 'Segera', 'S-1455', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:56:19'),
(95, '000092', 'S', 'Segera', 'S-1454', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:56:58'),
(96, '000093', 'S', 'Segera', 'S-1453', '2016-12-15', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:57:46'),
(97, '000094', 'S', 'Segera', 'S-1450', '2016-12-14', '-', '2017-01-10', 'KPPN Langsa', 'Surat pemberitahuan pencabutan pengenaan sanksi', '0', '0', '2017', NULL, NULL, '2017-01-10 02:58:50'),
(98, '000095', 'SP', 'Biasa', 'SP-004', '2017-01-05', '-', '2017-01-10', 'KPPN Tapaktuan', 'Laporan atas pelaksanaan transaksi retur bulan des 2016', '0', '0', '2017', NULL, NULL, '2017-01-10 03:29:58'),
(99, '000096', 'SP', 'Biasa', 'Sp-003', '2017-01-05', '-', '2017-01-10', 'KPPN Tapaktuan', 'Laporan atas monitoring kepatuhan bank/pos persepsi bulan des 2016', '0', '0', '2017', NULL, NULL, '2017-01-10 03:33:21'),
(100, '000097', 'SP', 'Biasa', 'SP-04', '2017-01-05', '-', '2017-01-10', 'KPPN Lhokseumawe', 'Laporan pemantauan rutin terhadap kepatuhan kode etik dan disiplin pegawai', '0', '0', '2017', NULL, NULL, '2017-01-10 03:36:22'),
(101, '000098', 'ST', 'Biasa', 'ST-55', '2016-12-08', '-', '2017-01-10', 'KPPN Lhokseumawe', 'Pemantauan terhadap kepatuhan kode etik dan disiplin pegawai', '0', '0', '2017', NULL, NULL, '2017-01-10 03:40:22'),
(102, '000099', 'ND', 'Biasa', 'ND-84', '2016-12-08', '1 berkas', '2017-01-10', 'KPPN Lhokseumawe', 'Pemantauan terhadap kepatuhan kode etik dan disiplin pegawai', '0', '0', '2017', NULL, NULL, '2017-01-10 03:41:44'),
(103, '000100', 'LAP', 'Biasa', 'LAP-001', '2017-01-05', '-', '2017-01-10', 'KPPN Lhokseumawe', 'Pemantauan terhadap kepatuhan kode etik dan disiplin pegawai', '0', '0', '2017', NULL, NULL, '2017-01-10 03:45:01'),
(104, '000101', 'S', 'Segera', 'S-028', '2017-01-06', '1 berkas', '2017-01-10', 'KPPN Meulaboh', 'Laporan pembina pengelola perbendaharaan ', '0', '0', '2017', NULL, NULL, '2017-01-10 03:46:11'),
(105, '000102', 'S', 'Segera', 'S-029', '2017-01-06', '1 berkas', '2017-01-10', 'KPPN Meulaboh', 'LPP tunjangan kinerja dan tunjangan tambahan bln januari 2017', '0', '0', '2017', NULL, NULL, '2017-01-10 03:47:47'),
(106, '000103', 'S', 'Biasa', 'S-030', '2017-01-09', '1 berkas', '2017-01-10', 'KPPN Meulaboh', 'Laporan penatausahan user SPAN', '0', '0', '2017', NULL, NULL, '2017-01-10 03:49:38'),
(107, '000104', 'S', 'Segera', 'S-033', '2017-01-09', '1 berkas', '2017-01-10', 'KPPN Meulaboh', 'Data pendukung IKU kemenkeu two Kanwil DJPBN Aceh', '0', '0', '2017', NULL, NULL, '2017-01-10 03:51:33'),
(108, '000105', 'S', 'Segera', 'S-026', '2017-01-05', '1 berkas', '2017-01-10', 'KPPN Meulaboh', 'Monitoring kepatuhan bank/pos persepsi', '0', '0', '2017', NULL, NULL, '2017-01-10 03:56:27'),
(109, '000106', 'S', 'Segera', 'S-027', '2017-01-05', '1 berkas', '2017-01-10', 'KPPN Meulaboh', 'Laporan triwulan IV 2016 profil anggaran KPPN Meulaboh', '0', '0', '2017', NULL, NULL, '2017-01-10 03:57:40'),
(110, '000107', 'S', 'Segera', 'S-28', '2017-01-06', '1 berkas', '2017-01-10', 'KPPN Lhokseumawe', 'Penyampaian monitoring kepatuhan bank/pos persepsi bulan des 2016', '0', '0', '2017', NULL, NULL, '2017-01-10 03:58:58'),
(111, '000108', 'S', 'Segera', 'S-29', '2017-01-06', '1 berkas', '2017-01-10', 'KPPN Lhokseumawe', 'Tata cara penyaluran dana SP2D dan SPT melalui BO I', '0', '0', '2017', NULL, NULL, '2017-01-10 04:02:51'),
(112, '000109', 'S', 'Segera', 'S-32', '2017-01-06', '1 berkas', '2017-01-10', 'KPPN Lhokseumawe', 'Laporan pengawasan penyelesaian retur SP2D', '0', '0', '2017', NULL, NULL, '2017-01-10 04:04:03'),
(113, '000110', 'SP', 'Biasa', 'SP-05', '2017-01-06', '-', '2017-01-10', 'KPP Lhokseumawe', 'Daftar rekapitulasi transaksi penerimaan negara yang reversal dan laporan pelaksanaan reversal bln nov 2016', '0', '0', '2017', NULL, NULL, '2017-01-10 04:06:24'),
(114, '000111', 'S', 'Segera', 'S-5', '2017-01-03', '1 berkas', '2017-01-10', 'KPPN Lhokseumawe', 'Penyampaian laporan pelaksanaan pemantauan pengendalian intern triw IV thn 2016', '0', '0', '2017', NULL, NULL, '2017-01-10 04:08:08'),
(115, '000112', 'SP', 'Biasa', 'SP-007', '2017-01-09', '-', '2017-01-10', 'KPPN Tapaktuan', 'Daftar tukin, setoran pajak dan LPP janurai 2017', '0', '0', '2017', NULL, NULL, '2017-01-10 04:09:41'),
(116, '000113', '0', 'Segera', 'KU.01.02/II.5/035/2017', '2017-01-09', '1 lembar', '2017-01-10', 'Badan Penelitian dan Pengembangan Kesehatan Aceh Besar', 'Pertanggungjawaban TUP 2016', '0', '0', '2017', NULL, NULL, '2017-01-10 04:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `sperintah`
--

CREATE TABLE IF NOT EXISTS `sperintah` (
  `id_sperintah` int(10) NOT NULL AUTO_INCREMENT,
  `nsurat` varchar(11) NOT NULL,
  `kdwil` varchar(11) NOT NULL,
  `kdmas` varchar(11) NOT NULL,
  `blth` varchar(22) NOT NULL,
  `tsurat` date NOT NULL,
  `pelaksana` int(10) NOT NULL,
  `isi` text NOT NULL,
  `ket` text NOT NULL,
  `periode` int(10) NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_sperintah`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(18) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`, `id_session`) VALUES
('197506021999031001', '21232f297a57a5a743894a0e4a801fc3', 'Irwan Susanto', 'irwan.sst@gmail.com', '082117808789', 'admin', 'N', 'cblb43ddgts4pvrusg50dg62n4'),
('196312311999032001', '0303536b47d601cff30d84cf54d65f18', 'Alawiyah', '', '', 'user', 'N', 'n1vpa0ic010v70otmabuav27a3'),
('199004012013101001', '7e2ece0eadf4a6b5e8995c74f692079c', 'Alfian E. Sitorus', '', '', 'user', 'Y', '7e2ece0eadf4a6b5e8995c74f692079c'),
('199208062014111002', '9d575f73e4a8e199489bb82fafbebc51', 'Anung Budi Sutantiyo', '', '', 'user', 'N', '9d575f73e4a8e199489bb82fafbebc51'),
('199104302013101001', '57aa3e7768c45afb8dcf65b69ec47eee', 'Arief Fittrian Anshari', '', '', 'user', 'Y', '57aa3e7768c45afb8dcf65b69ec47eee'),
('196303181985031001', '612147380d5f9e87ac9ecdb417e4bbea', 'Busran', '', '', 'user', 'Y', '612147380d5f9e87ac9ecdb417e4bbea'),
('197504212005012001', '91ad326bf83647e4787e2a313ad935aa', 'Cut Handriani', '', '', 'user', 'N', '2to30muktu75t33ujvdo6q58o3'),
('198011052002121001', '448cf9dabf584a6519f1a8c638cc6ce2', 'Fathur Rohman', '', '', 'user', 'Y', '448cf9dabf584a6519f1a8c638cc6ce2'),
('198308102004121001', '0c911491ee4e9c9b27ce079180bb4e80', 'Fazrul Ichsan', '', '', 'user', 'Y', '0c911491ee4e9c9b27ce079180bb4e80'),
('199211252014111001', 'd02b741d9372d5bd8d33b7028775bdf6', 'Guntur Kharisma Putra', '', '', 'user', 'Y', 'd02b741d9372d5bd8d33b7028775bdf6'),
('199106292013101002', '3be4b5b3d3f084ccb3826085a79796ff', 'Hamengkudu Tahiti Padada', '', '', 'user', 'N', '3be4b5b3d3f084ccb3826085a79796ff'),
('198401312003121001', '2173ebabd6c191c5989e034ea591dfab', 'Harry Pratama', '', '', 'user', 'Y', '2173ebabd6c191c5989e034ea591dfab'),
('196508301985031002', '431b25ffaf95073a4f890b8a5a9acf8a', 'Irwansyah', '', '', 'user', 'Y', '431b25ffaf95073a4f890b8a5a9acf8a'),
('199201292013101002', 'bf6ac041ff97aeabb63d04bc35497442', 'Ishlahul Arham', '', '', 'user', 'Y', 'bf6ac041ff97aeabb63d04bc35497442'),
('195904071982101001', 'b757979dd5523cb7138379d784fa4124', 'Muhammad Juned', '', '', 'user', 'Y', 'b757979dd5523cb7138379d784fa4124'),
('196101021999031001', '846a08ae515028827d8af01ebde84b30', 'Muhammad Zainuar', '', '', 'user', 'Y', '846a08ae515028827d8af01ebde84b30'),
('196312311985031030', '92e70cf0ad90b3f904e65b1da4bbe767', 'Mahyiddin', '', '', 'user', 'Y', '92e70cf0ad90b3f904e65b1da4bbe767'),
('198502272006021001', 'a683f0ea3fa3f97dcd1767c6f64afd47', 'Muhamad Ali Burhanudin', '', '', 'user', 'N', 'glnj4q9dqbbump92oaapmhfhf6'),
('196212311985031032', '20d162477016470bb582f5dd352a498d', 'Muhammad', '', '', 'user', 'Y', '20d162477016470bb582f5dd352a498d'),
('198407192006021002', 'd2e80a89e0f13dfa20c972dc9f9e0d8d', 'Muhammad Taufik', '', '', 'user', 'Y', 'd2e80a89e0f13dfa20c972dc9f9e0d8d'),
('197305141999031012', '0f34ddc99f241f667beb445fb1229dda', 'Nasri', '', '', 'user', 'Y', '0f34ddc99f241f667beb445fb1229dda'),
('196103101985032001', 'ad13f6d3ed458733fd1af727a6442997', 'Nurjannah', '', '', 'user', 'Y', 'ad13f6d3ed458733fd1af727a6442997'),
('196307181985032003', 'b81db334a812427c64d52afdc95c4ab4', 'Nurjannah Sulaiman', '', '', 'user', 'Y', 'b81db334a812427c64d52afdc95c4ab4'),
('199202162013101002', 'cbf354e344f190692558e86ad68426e3', 'Pery Hardi', '', '', 'user', 'Y', 'cbf354e344f190692558e86ad68426e3'),
('195906121982031003', '71360970d03adbbf162d57103b30b94d', 'Rasyim', '', '', 'user', 'Y', '71360970d03adbbf162d57103b30b94d'),
('196705042005012001', '68788030a290f9e549a8d4903233eaac', 'Rosmadewi', '', '', 'user', 'Y', '68788030a290f9e549a8d4903233eaac'),
('196409101985032003', '05414ca68e41786d68a7a50ac4ea8a63', 'Rosmaini', '', '', 'user', 'Y', '05414ca68e41786d68a7a50ac4ea8a63'),
('196610101999031001', 'be3165d39f137264442bf3cf402b3549', 'Samsul Bahri', '', '', 'user', 'Y', 'be3165d39f137264442bf3cf402b3549'),
('196801071999031002', '91d2bc2ca026a9e0d6738e01efa204da', 'Syafruddin', '', '', 'user', 'Y', '91d2bc2ca026a9e0d6738e01efa204da'),
('198006092000121002', 'b64e482c58dcb725ce5104a5036ac33c', 'Syahrial', '', '', 'user', 'Y', 'b64e482c58dcb725ce5104a5036ac33c'),
('199309162014111001', '51ad779a68efcd679edbb0fc31b537d5', 'Syaiful Danel', '', '', 'user', 'Y', '51ad779a68efcd679edbb0fc31b537d5'),
('197303051999031015', 'ffc02a4ba8abb4d578beface600ff01a', 'Tarmizi', '', '', 'user', 'Y', 'ffc02a4ba8abb4d578beface600ff01a'),
('196307051985092001', '44a72f4f944160b1801eea703d1921f3', 'Yuliar', '', '', 'user', 'Y', '44a72f4f944160b1801eea703d1921f3'),
('195812121983032002', '7997cef8cdd42d4bb7a04d07c1083601', 'Zanaria', '', '', 'user', 'Y', '7997cef8cdd42d4bb7a04d07c1083601'),
('198306272004121002', '492592a9cb88e9a6102bb93651bcb3ee', 'Sutrisno', '', '', 'user', 'Y', '492592a9cb88e9a6102bb93651bcb3ee'),
('196009191985031003', '3b274d00553047a7327897c703655df9', 'Bakhtaruddin', '', '', 'user', 'N', '3b274d00553047a7327897c703655df9'),
('196111021985091001', '31ad55f2e3b382b2a6813729dbf37bf5', 'Fauzil Amri', '', '', 'user', 'Y', '31ad55f2e3b382b2a6813729dbf37bf5'),
('197009291997031001', 'ddbf184867b76db7f68d3bf4b3725425', 'Henry Rulinson Purba', '', '', 'user', 'Y', 'ddbf184867b76db7f68d3bf4b3725425'),
('196904161996031001', '69c4c20cf824f115d147dcdeb23bda14', 'Iwan Kurniawan', '', '', 'user', 'Y', '69c4c20cf824f115d147dcdeb23bda14'),
('195910151982031003', '186bf557a3ff9e4f6ee3610b562b1b6b', 'Abdullah', '', '', 'user', 'Y', '186bf557a3ff9e4f6ee3610b562b1b6b'),
('196303091985031002', 'e6de21f97be4eb254ca0679801990947', 'Ansari', '', '', 'user', 'Y', 'e6de21f97be4eb254ca0679801990947'),
('196710101989011001', '697be023963c1a1bf4fb15f24e6418b9', 'Armansyah', '', '', 'user', 'Y', '697be023963c1a1bf4fb15f24e6418b9'),
('198501152006021003', '0f08b13c29549bea6eb927957428632d', 'Barry Dharmawan', '', '', 'user', 'N', 'l1m8lnj59ugu9t16o8trokoa73'),
('196307151985031006', '41ed014c3f89f40d3e8d7331f8298e26', 'Basron', '', '', 'user', 'Y', '41ed014c3f89f40d3e8d7331f8298e26'),
('197602032002121002', '00f3dc36625a148ee56adfe458a3d660', 'Bernard Jan Pieter', '', '', 'user', 'Y', '00f3dc36625a148ee56adfe458a3d660'),
('196006051982121001', 'bc0923f7247bfdd7dd24aa85d5efee74', 'Fakhruddin', '', '', 'user', 'Y', 'bc0923f7247bfdd7dd24aa85d5efee74'),
('196108241982091001', '2dc7ab292bcbbf14acd5e8acbed7c958', 'Fathurrahman', '', '', 'user', 'Y', '2dc7ab292bcbbf14acd5e8acbed7c958'),
('197409071999031000', 'dc0f5e0b0a7f814eff4f5174f8a346c7', 'Kurniawan', '', '', 'user', 'Y', 'dc0f5e0b0a7f814eff4f5174f8a346c7'),
('197511111996021001', 'a3333cceb88f37a5792683621c3c71f2', 'Mangappu Pasaribu', '', '', 'user', 'Y', 'a3333cceb88f37a5792683621c3c71f2'),
('196202161985031002', 'eabfb58567a325bc8793059a07097bab', 'Muchlis', '', '', 'user', 'Y', 'eabfb58567a325bc8793059a07097bab'),
('198301012003121002', '2f9b67d83ef6b54d50f9dade317592be', 'Muhammad Falih Ariyanto', '', '', 'user', 'N', '2f9b67d83ef6b54d50f9dade317592be'),
('198001072000121001', 'f8b84384a5064825536739c37dc76773', 'Syahrawi Munthe', '', '', 'user', 'Y', 'f8b84384a5064825536739c37dc76773'),
('195910081982101001', 'b13c61653ffb5bc905a544406a1d63be', 'Syarifuddinsyah', '', '', 'user', 'Y', 'b13c61653ffb5bc905a544406a1d63be'),
('197205041999031001', 'e09c727dfbd61cb95b17d363ad30d35c', 'Tommy Hansen Panjaitan', '', '', 'user', 'Y', 'e09c727dfbd61cb95b17d363ad30d35c'),
('196307301985031001', '7f0d50d20e41b7a15e250be9765dd10a', 'Viktor Lumban Tobing', '', '', 'user', 'Y', '7f0d50d20e41b7a15e250be9765dd10a');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
