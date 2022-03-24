-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 23, 2022 at 04:01 AM
-- Server version: 10.5.13-MariaDB-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u2774448_datawargagsm`
--

-- --------------------------------------------------------

--
-- Table structure for table `kartu_keluarga`
--

CREATE TABLE `kartu_keluarga` (
  `id_keluarga` int(11) NOT NULL,
  `nomor_keluarga` varchar(16) NOT NULL,
  `id_kepala_keluarga` int(11) DEFAULT NULL,
  `alamat_keluarga` text NOT NULL,
  `dusun_keluarga` varchar(20) NOT NULL,
  `desa_kelurahan_keluarga` varchar(30) NOT NULL,
  `kecamatan_keluarga` varchar(30) NOT NULL,
  `kabupaten_kota_keluarga` varchar(30) NOT NULL,
  `provinsi_keluarga` varchar(30) NOT NULL,
  `negara_keluarga` varchar(30) NOT NULL,
  `rt_keluarga` varchar(3) NOT NULL,
  `rw_keluarga` varchar(3) NOT NULL,
  `kode_pos_keluarga` varchar(5) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kartu_keluarga`
--

INSERT INTO `kartu_keluarga` (`id_keluarga`, `nomor_keluarga`, `id_kepala_keluarga`, `alamat_keluarga`, `dusun_keluarga`, `desa_kelurahan_keluarga`, `kecamatan_keluarga`, `kabupaten_kota_keluarga`, `provinsi_keluarga`, `negara_keluarga`, `rt_keluarga`, `rw_keluarga`, `kode_pos_keluarga`, `id_user`, `created_at`, `updated_at`) VALUES
(11, '10', 2, 'Kuningan', '', 'kng', 'kng', 'kng', 'jabar', 'Indonesia', '01', '08', '45515', 13, '2021-12-10 14:17:22', '2016-09-15 12:59:41'),
(20, '13', 9, 'Ciawi', '', 'Dukuhdalem', 'Ciawigebang', 'Kuningan', 'Jawa Barat', 'Indonesia', '01', '08', '4555', 11, '2021-12-10 14:17:22', '2017-12-17 18:41:23'),
(21, '12', 3, 'Kuningan', '', 'Dukuhdalem', 'Ciawigebang', 'Kuningan', 'Jawa Barat', 'Indonesia', '01', '08', '45515', 11, '2021-12-10 14:17:22', '2017-12-17 18:40:10'),
(22, '14', 5, 'Kuningan', '', 'Dukuhdalem', 'Ciawigebang', 'Kuningan', 'Jawa Barat', 'Indonesia', '01', '08', '45515', 11, '2021-12-10 14:17:22', '0000-00-00 00:00:00'),
(30, '16', 30, '-', '', '-', '-', '-', '-', '-', '-', '-', '-', 13, '2018-01-03 19:15:18', '0000-00-00 00:00:00'),
(31, '320809160198004', 34, 'Windujanten', '', '-', '-', '-', '-', '-', '-', '-', '-', 13, '2018-01-17 17:51:56', '0000-00-00 00:00:00'),
(32, '3208091601700015', 35, 'Cijoho', '', '-', '-', '-', '-', '-', '-', '-', '-', 13, '2018-01-17 17:53:06', '0000-00-00 00:00:00'),
(33, '3671111503850011', 36, 'Tangerang', '', '-', '-', '-', '-', '-', '-', '-', '-', 1, '2021-03-05 03:30:48', '0000-00-00 00:00:00'),
(34, '3671080509140002', 4, 'Kp.Sangiang', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2021-12-11 12:52:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_keluar`
--

CREATE TABLE `mutasi_keluar` (
  `id_mutasi` int(11) NOT NULL,
  `id_warga` int(11) NOT NULL,
  `alamat_mutasi` text NOT NULL,
  `desa_kelurahan_mutasi` varchar(20) NOT NULL,
  `kabupaten_kota_mutasi` varchar(20) NOT NULL,
  `provinsi_mutasi` varchar(20) NOT NULL,
  `negara_mutasi` varchar(20) NOT NULL,
  `dusun_mutasi` varchar(30) NOT NULL,
  `rt_mutasi` varchar(3) NOT NULL,
  `rw_mutasi` varchar(3) NOT NULL,
  `kode_pos_mutasi` varchar(10) NOT NULL,
  `tanggal_pindah` date NOT NULL,
  `alasan_pindah` varchar(20) NOT NULL,
  `jenis_pindah` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `kecamatan_mutasi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mutasi_keluar`
--

INSERT INTO `mutasi_keluar` (`id_mutasi`, `id_warga`, `alamat_mutasi`, `desa_kelurahan_mutasi`, `kabupaten_kota_mutasi`, `provinsi_mutasi`, `negara_mutasi`, `dusun_mutasi`, `rt_mutasi`, `rw_mutasi`, `kode_pos_mutasi`, `tanggal_pindah`, `alasan_pindah`, `jenis_pindah`, `created_at`, `updated_at`, `kecamatan_mutasi`) VALUES
(10, 16, '-', '-', '-', '-', '-', '-', '-', '-', '-', '2018-01-03', 'Kesehatan', 'Anggota Keluarga', '2018-01-03 14:08:57', '0000-00-00 00:00:00', '-');

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_masuk`
--

CREATE TABLE `mutasi_masuk` (
  `id_mutasi_masuk` int(11) NOT NULL,
  `id_warga` int(11) NOT NULL,
  `id_keluarga` int(11) NOT NULL,
  `dusun_masuk` varchar(30) NOT NULL,
  `rt_masuk` varchar(3) NOT NULL,
  `rw_masuk` varchar(3) NOT NULL,
  `alamat_asal` text NOT NULL,
  `tanggal_pindah` date NOT NULL,
  `alasan_pindah` varchar(20) NOT NULL,
  `jenis_kepindahan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mutasi_masuk`
--

INSERT INTO `mutasi_masuk` (`id_mutasi_masuk`, `id_warga`, `id_keluarga`, `dusun_masuk`, `rt_masuk`, `rw_masuk`, `alamat_asal`, `tanggal_pindah`, `alasan_pindah`, `jenis_kepindahan`) VALUES
(15, 18, 23, 'Tarikolot', '05', '01', '-', '2018-01-04', 'Perumahan', 'Anggota Keluarga'),
(16, 18, 23, 'Tarikolot', '05', '01', '-', '2018-01-04', 'Perumahan', 'Anggota Keluarga'),
(17, 30, 23, 'Tarikolot', '01', '01', '-', '2018-01-04', 'Keluarga', 'Anggota Keluarga'),
(24, 32, 31, 'Tarikolot', '02', '01', 'Windujanten', '2018-01-18', 'Keluarga', 'Anggota Keluarga'),
(25, 34, 31, 'Tarikolot', '02', '01', 'Windujanten', '2018-01-18', 'Keluarga', 'Anggota Keluarga'),
(26, 35, 32, 'Dukuh', '06', '01', 'Cijoho', '2018-01-18', 'Keluarga', 'Anggota Keluarga'),
(27, 36, 33, 'Dukuh', '02', '01', 'Tangerang', '2021-03-05', 'Pekerjaan', 'Anggota Keluarga');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelahiran`
--

CREATE TABLE `tbl_kelahiran` (
  `id_kelahiran` int(11) NOT NULL,
  `tgl_kelahiran` datetime NOT NULL,
  `nama_bayi` varchar(50) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `berat_bayi` varchar(10) DEFAULT NULL,
  `panjang_bayi` int(10) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `lokasi_lahir` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `id_keluarga` int(11) DEFAULT NULL,
  `penolong` varchar(25) NOT NULL,
  `id_warga` int(11) DEFAULT NULL,
  `id_surat` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelahiran`
--

INSERT INTO `tbl_kelahiran` (`id_kelahiran`, `tgl_kelahiran`, `nama_bayi`, `jk`, `berat_bayi`, `panjang_bayi`, `nama_ayah`, `nama_ibu`, `lokasi_lahir`, `tempat_lahir`, `id_keluarga`, `penolong`, `id_warga`, `id_surat`) VALUES
(2, '2017-12-21 00:00:00', 'Dejan Kecil', 'L', '3', 55, 'Dejan', 'Entah', 'Rumah Bersalin', 'Kuningan', 11, 'Bidan cantik', 10, NULL),
(3, '2017-12-22 00:00:00', 'Cihiro', 'P', '2,5', 55, 'Dejan', 'Entah', 'Bidan', 'Kuningan', 22, '', NULL, NULL),
(27, '2018-01-02 00:00:00', 'Yoshino', 'L', '3', 50, 'DD', 'MM', 'Bukan Rumah Bersalin', 'kuningan', 14, 'Entah', 12, 0),
(28, '2018-01-02 00:00:00', 'Yoshino', 'L', '3', 50, 'DD', 'MM', 'Bukan Rumah Bersalin', 'kuningan', 12, 'Entah', 13, 0),
(29, '2018-01-02 00:00:00', 'Yoshino yosuke', 'L', '3', 55, 'DD', 'DDD', 'Bukan Rumah Bersalin', 'kuningan', 14, 'Bidan cantik', 14, 0),
(30, '2018-01-02 00:00:00', 'Yoshino yosuke 2', 'L', '3', 55, 'DD', 'DDD', 'Bukan Rumah Bersalin', 'kuningan', 10, 'Bidan cantik', 15, 0),
(31, '2018-01-03 00:00:00', 'suryani', 'L', '3', 50, 'dejan', 'entah', 'Rumah Bersalin', 'kuningan', 14, 'Bidan cantik', 16, 0),
(32, '2018-01-04 00:00:00', 'Yani Suryani', 'L', '4', 55, 'Dejan', 'Duka', 'Rumah Bersalin', 'Kuningan', 10, 'Bidan cantik', 31, 0),
(33, '2017-01-11 00:00:00', 'muhammad Al-khalifi Zikri Hadi', 'L', '15', 120, 'Argan', 'Sin Putriani', 'Bukan Rumah Bersalin', 'Tangerang', 10, 'Suster Ngesot', 36, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_meninggal`
--

CREATE TABLE `tbl_meninggal` (
  `id_meninggal` int(11) NOT NULL,
  `tgl_meninggal` datetime NOT NULL,
  `sebab` varchar(50) DEFAULT NULL,
  `id_warga` int(11) DEFAULT NULL,
  `tempat_kematian` varchar(100) DEFAULT NULL,
  `nama_pelapor` varchar(100) DEFAULT NULL,
  `hubungan_pelapor` varchar(100) DEFAULT NULL,
  `id_surat` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_meninggal`
--

INSERT INTO `tbl_meninggal` (`id_meninggal`, `tgl_meninggal`, `sebab`, `id_warga`, `tempat_kematian`, `nama_pelapor`, `hubungan_pelapor`, `id_surat`) VALUES
(1, '2017-12-27 00:00:00', '-', 1, 'RS', 'Amin', 'Saudara', NULL),
(6, '2018-01-02 00:00:00', 'Sakit', 11, 'RS', 'pelapor', 'Duka', 0),
(7, '2018-01-02 00:00:00', 'Sakit', 13, '-', 'pelapor', 'Duka', 0),
(8, '2021-03-05 00:00:00', 'Covid 19', 1, 'Rumah Sakit', 'pelapor', 'Keluarga ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(45) NOT NULL,
  `username_user` varchar(20) NOT NULL,
  `password_user` varchar(32) NOT NULL,
  `keterangan_user` text NOT NULL,
  `status_user` enum('Admin','Kasi_Pemerintahan') NOT NULL,
  `desa_kelurahan_user` varchar(30) NOT NULL,
  `kecamatan_user` varchar(30) NOT NULL,
  `kabupaten_kota_user` varchar(30) NOT NULL,
  `provinsi_user` varchar(30) NOT NULL,
  `negara_user` varchar(30) NOT NULL,
  `rt_user` varchar(3) NOT NULL,
  `rw_user` varchar(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username_user`, `password_user`, `keterangan_user`, `status_user`, `desa_kelurahan_user`, `kecamatan_user`, `kabupaten_kota_user`, `provinsi_user`, `negara_user`, `rt_user`, `rw_user`, `created_at`, `updated_at`) VALUES
(1, 'Argan', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin di aplikasi pendataan warga', 'Admin', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '001', '002', '2021-03-24 13:44:14', '2021-03-24 13:44:14'),
(11, 'Sonny Sontana', 'Admin', '1f6decc3bfb430d86a26f2c8fb0c2257', '', 'Admin', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '-', '-', '2021-03-05 03:27:00', '2021-03-05 03:27:00'),
(13, 'Kasi Pemerintahan', 'kasi_pemerintahan', '17131d43d1c41721e4daf4a9a6c85cda', 'Kasi Pemerintahan', 'Kasi_Pemerintahan', 'Dukuhdalem', 'Ciawigebang', 'Kuningan', 'Jawa Barat', 'Indonesia', '', '', '2018-01-02 07:57:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `warga`
--

CREATE TABLE `warga` (
  `id_warga` int(11) NOT NULL,
  `nik_warga` varchar(16) NOT NULL,
  `nama_warga` varchar(45) NOT NULL,
  `tempat_lahir_warga` varchar(30) NOT NULL,
  `tanggal_lahir_warga` date NOT NULL,
  `jenis_kelamin_warga` enum('L','P') NOT NULL,
  `alamat_ktp_warga` text NOT NULL,
  `alamat_warga` text NOT NULL,
  `desa_kelurahan_warga` varchar(30) NOT NULL,
  `kecamatan_warga` varchar(30) NOT NULL,
  `kabupaten_kota_warga` varchar(30) NOT NULL,
  `provinsi_warga` varchar(30) NOT NULL,
  `negara_warga` varchar(30) NOT NULL,
  `dusun_warga` enum('Periuk') NOT NULL,
  `rt_warga` varchar(3) NOT NULL,
  `rw_warga` varchar(3) NOT NULL,
  `agama_warga` enum('Islam','Kristen','Katholik','Hindu','Budha','Konghucu') NOT NULL,
  `pendidikan_terakhir_warga` varchar(20) NOT NULL,
  `pekerjaan_warga` varchar(20) NOT NULL,
  `status_warga` enum('Tinggal Tetap','Kontrak','Meninggal','Pindah Datang','Pindah Keluar') NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warga`
--

INSERT INTO `warga` (`id_warga`, `nik_warga`, `nama_warga`, `tempat_lahir_warga`, `tanggal_lahir_warga`, `jenis_kelamin_warga`, `alamat_ktp_warga`, `alamat_warga`, `desa_kelurahan_warga`, `kecamatan_warga`, `kabupaten_kota_warga`, `provinsi_warga`, `negara_warga`, `dusun_warga`, `rt_warga`, `rw_warga`, `agama_warga`, `pendidikan_terakhir_warga`, `pekerjaan_warga`, `status_warga`, `id_user`, `created_at`, `updated_at`) VALUES
(1, '3671081811210001', 'Argantrian', 'Sukabumi', '1985-03-15', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', 'Periuk', '001', '008', 'Islam', 'S1', 'IT', 'Tinggal Tetap', 1, '2021-12-22 12:57:55', '2021-12-22 12:57:55'),
(2, '3671080507510001', 'Abed Bedjonyono', 'Solo', '1951-07-05', 'L', 'Griya Sangiangmas Jl.Melati Blok A4 No.11 ', 'Griya Sangiangmas Jl.Melati Blok A4 No.11 ', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawwan Swasta', 'Tinggal Tetap', 11, '2021-12-18 16:46:01', '2021-12-10 14:22:02'),
(3, '3671085007580001', 'SRIE WAHYUNI', 'GARUT', '1967-07-07', 'P', 'Griya Sangiangmas Jl.Melati Blok A4 No.11', 'Griya Sangiangmas Jl.Melati Blok A4 No.11', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMP', 'Ibu Rumah Tangga', 'Tinggal Tetap', 11, '2021-12-18 16:54:56', '2021-12-10 14:25:50'),
(4, '1804170507890005', 'PAHROZI', 'NGARAS', '1989-07-05', 'L', 'Kp Sangiang Jaya ', 'Kp Sangiang Jaya ', 'Sangiang Jaya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Wirausaha', 'Pindah Datang', 11, '2021-12-22 14:28:06', '2021-12-19 04:27:10'),
(5, '1804177011900002', 'Yurnawati', 'Jambatan', '1990-11-30', 'P', 'Kp.Sangiang', 'Jl.Melati', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Pindah Datang', 11, '2021-12-22 14:28:06', '2021-12-11 12:50:26'),
(7, '3602010507860011', 'Paiji', 'lebak', '1996-07-05', 'L', 'Griya Sangiang Mas Jl.Melati 1 Blok D.4 No.10', 'Griya Sangiang Mas Jl.Melati 1 Blok D.4 No.10', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Pindah Datang', 11, '2021-12-22 14:28:06', '2021-12-11 13:05:52'),
(9, '321225500920001', 'TITIN Ratnasari', 'Tegal', '1992-06-10', 'P', 'Griya Sangiang Mas Jl.Melati I Blok D.4 No.10', 'Griya Sangiang Mas Jl.Melati I Blok D.4 No.10', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Pindah Datang', 11, '2021-12-22 14:28:06', '2021-12-11 13:17:14'),
(10, '3671081112830002', 'Riki Ardinsyah', 'Jakarta', '1986-06-12', 'L', 'Bambu Larangan Pegadungan Kalideres', 'Jl.Melati', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Meninggal', 11, '2021-12-22 14:28:06', '2021-12-11 13:22:34'),
(11, '3602092802950002', 'IMAN', 'LEBAK', '1997-11-13', 'L', 'KP KERTA KEL.KERTA KEC.BNJARSARI KAB.LEBAK BANTEN', 'Jl.Melati Raya', 'Gebang Raya', 'Periuk', 'Kuningan', 'Banten', 'INDONESIA', '', '01', '08', 'Islam', 'SMP', 'Karyawan Swasta', 'Pindah Datang', 0, '2021-12-22 14:28:06', '2021-12-18 16:13:01'),
(12, '3602014912940002', 'Elis', 'lebak', '1994-12-09', 'P', 'Kp. Kerta Rt 002/003 kel.Kerta Kec.Banjarsari Kab.Lebak Banten', 'Jl.Melai Raya', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'INDONESIA', '', '01', '05', 'Islam', 'SD', 'Ibu Rumah Tangga', 'Pindah Datang', 0, '2021-12-18 16:16:46', '2021-12-18 16:16:46'),
(13, '3671080407840002', 'Topan Cristian Panjaitan', 'P.brandan', '1984-07-04', 'L', 'Jl.Merpati Blok D18 No.7kel.Gebang Raya Kec.Periuk Tangerang Banten', 'Jl.Merpati Blok D18 No.7kel.Gebang Raya Kec.Periuk Tangerang Banten', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'INDONESIA', '', '01', '08', 'Kristen', 'D1', 'Karyawan Swasta', 'Tinggal Tetap', 0, '2021-12-22 14:28:06', '2021-12-18 16:21:02'),
(14, '3671080704510001', 'H.Muhammad Sumbali', 'Tangerang', '1968-07-15', 'L', 'Griya Sangiang Mas Blok C.4 No.2 Kel.Gebang RayaKec.Periuk Kota Tangerang Banten', 'Griya Sangiang Mas Blok C.4 No.2 Kel.Gebang RayaKec.Periuk Kota Tangerang Banten', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'INDONESIA', '', '01', '05', 'Islam', 'SMP', 'Pensiunan', 'Tinggal Tetap', 0, '2021-12-18 16:24:26', '2021-12-18 16:24:26'),
(15, '3767108040751000', 'M.Syarifudin', 'Tangerang', '1968-07-04', 'L', 'Griya Sangiang Mas Jl.Raya Bunga Raya 3 Blok C.4 No.8 Kel.Gebang Raya Kc.Periuk', 'Griya Sangiang Mas Jl.Raya Bunga Raya 3 Blok C.4 No.8 Kel.Gebang Raya Kc.Periuk', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'INDONESIA', '', '01', '02', 'Islam', 'SMP', 'Pensiunan', 'Tinggal Tetap', 0, '2021-12-18 16:33:39', '2021-12-18 16:33:39'),
(16, '3671084407530001', 'Siti Saodah', 'Tangerang', '1968-07-04', 'P', 'Griya Sangiang Mas Blok C.4 No.2 Kel.Gebang RayaKec.Periuk Kota Tangerang Banten', 'Griya Sangiang Mas Blok C.4 No.2 Kel.Gebang RayaKec.Periuk Kota Tangerang Banten', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'INDONESIA', '', '01', '05', 'Islam', 'SMP', 'Ibu Rumah Tangga', 'Tinggal Tetap', 0, '2021-12-19 04:26:40', '2021-12-19 04:26:40'),
(17, '3671080306620003', 'H.Hajarul Alamtara', 'Jakarta', '1968-05-03', 'L', 'Griya Sangiang Mas Rt 01/08 Blok D.4 No.5 Kel.Gebang Raya Kec.Periuk Kota Tangerang Banten', 'Griya Sangiang Mas Rt 01/08 Blok D.4 No.5 Kel.Gebang Raya Kec.Periuk Kota Tangerang Banten', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'D3', 'Karyawan Swasta', 'Tinggal Tetap', 13, '2021-12-22 14:28:06', '2021-12-19 04:44:37'),
(28, '3671084407650001', 'HJ.Chandra Malabar', 'Gorontalo', '1968-07-04', 'L', 'Griya Sangiang Mas Blok D.4 No.5 Rt 001Rw 008 Kel.Gebang Raya Kec.Periuk Kota Tangerang', 'Griya Sangiang Mas Blok D.4 No.5 Rt 001Rw 008 Kel.Gebang Raya Kec.Periuk Kota Tangerang', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', 13, '2021-12-22 14:28:06', '2021-12-19 04:30:27'),
(29, '3671084308960003', 'Ghoniah Aulia Karamah', 'Tangerang', '1996-08-03', 'P', 'Griya Sangiang Mas Rt 01/08 Blok D.4 No.5 Kel.Gebang RayaKec.Periuk Kota Tangerang Banten', 'Griya Sangiang Mas Rt 01/08 Blok D.4 No.5 Kel.Gebang RayaKec.Periuk Kota Tangerang Banten', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SD', 'Belum Bekerja', 'Tinggal Tetap', 13, '2021-12-22 14:28:06', '2021-12-19 04:33:47'),
(30, '3671080107640007', 'Ujang Kusnadi', 'Jakarta', '1964-07-01', 'L', 'Griya Sangiangmas Jl.Melati Blok A4 No.10', 'Griya Sangiangmas Jl.Melati Blok A4 No.10', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', 13, '2021-12-22 14:28:06', '2021-12-19 05:39:58'),
(31, '3671084403670001', 'Elyana', 'Bogor', '1967-03-04', 'P', 'Griya Sangiangmas Jl.Melati Blok A4 No.10', 'Griya Sangiangmas Jl.Melati Blok A4 No.10', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'INDONESIA', '', '01', '08', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', 0, '2021-12-22 14:28:06', '2021-12-19 05:41:57'),
(34, '3208090511780005', 'Darmawan', 'Kuningan', '1970-01-13', 'L', 'Windujanten', 'Windujanten', 'Dukuhdalem', 'Ciawigebang', 'Kuningan', 'Jawa Barat', 'Indonesia', '', '02', '08', 'Islam', 'SMP', 'Wiraswasta', 'Pindah Datang', 13, '2021-12-22 14:28:06', '2018-01-17 17:55:18'),
(35, '3671084108990003', 'irma Fauziah', 'Jakarta', '1999-08-01', 'P', 'Griya Sangiangmas Jl.Melati Blok A4 No.11 ', 'Griya Sangiangmas Jl.Melati Blok A4 No.11 ', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', 13, '2021-12-22 14:28:06', '2021-12-19 05:49:09'),
(36, '3671084212870001', 'Sin Putriani', 'Jakarta', '1987-12-02', 'L', 'Griya Sangiangmas Jl.Melati Blok A4 No.5', 'Griya Sangiangmas Jl.Melati Blok A4 No.5', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'D3', 'Karyawan Swasta', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '2021-12-19 14:32:40'),
(37, '3671081903000002', 'Ryan Kharisma', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiangmas Jl.Melati Blok A4 No.10a', 'Griya Sangiangmas Jl.Melati Blok A4 No.10a', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Pindah Datang', 1, '2021-12-22 14:28:06', '2021-12-19 06:10:26'),
(38, '3211182309840005', 'Taufik Hidayat', 'Sumedang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'D3', 'PNS', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(39, '3671085811860002', 'Gina Indhira Pratiwi', 'jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'D3', 'Bidan', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(40, '3671081109130002', 'Muhammad Zain Alamsyah', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SD', 'Belum Bekerja', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(41, '3211181611160003', 'Ali Zavier Alamsyah', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'Tidak Sekolah', 'Belum Bekerja', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(42, '3671081405180004', 'Zameer dhirgam Alamsyah', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'Tidak Sekolah', 'Belum Bekerja', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(43, '3671081605650001', 'Suroso', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(44, '3671086004660002', 'Nurhasanah', 'Garut', '0000-00-00', 'L', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(45, '3671085507920002', 'Sovie Az Zahra', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'D3', 'Karyawan Swasta', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(46, '3671087010010003', 'Sarah Azzukhruf', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Belum Bekerja', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(47, '367108440470004', 'Ellia', 'Bogor', '0000-00-00', 'L', 'Griya Sangiangmas Jl.Melati Blok A4 No.09', 'Griya Sangiangmas Jl.Melati Blok A4 No.09', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Budha', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '2021-12-19 14:42:11'),
(48, '3671082710630002', 'Happy', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiangmas Jl.Melati Blok A4 No.09', 'Griya Sangiangmas Jl.Melati Blok A4 No.09', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Budha', 'SMA', 'Wiraswasta', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '2021-12-19 14:41:55'),
(49, '367108531170005', 'Verania Wijaya', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiangmas Jl.Melati Blok A4 No.09', 'Griya Sangiangmas Jl.Melati Blok A4 No.09', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Budha', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(50, '3671080810580003', 'I WAYAN DANA', 'Bali', '0000-00-00', 'L', 'JL.Bunga Raya III Blok C.4 No.3 ', 'JL.Bunga Raya III Blok C.4 No.3 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Tentara', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '2021-12-19 14:49:55'),
(51, '3671084611620002', 'Sukarni', 'Wonogiri', '0000-00-00', 'L', 'Jl.Bunga RAya III Blok C.4 No.3', 'Jl.Bunga RAya III Blok C.4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(52, '3671082509950004', 'I Made Sukresna', 'Tangerang', '0000-00-00', 'L', 'Jl.Bunga RAya III Blok C.4 No.3', 'Jl.Bunga RAya III Blok C.4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawwan Swasta', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(53, '3671081507580001', 'Fauzan', 'Pekalongan', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D4 No.4 ', 'Griya Sangiang Mas Blok D4 No.4 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'S1', 'Karyawan Swasta', 'Meninggal', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(54, '3671085607650004', 'Sri Hombayuningsih Hombas', 'Bogor', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D4 No.4 ', 'Griya Sangiang Mas Blok D4 No.4 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(55, '3671085404890007', 'Annisa Rezky Fauzy', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D4 No.4 ', 'Griya Sangiang Mas Blok D4 No.4 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'D3', 'Karyawan Swasta', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(56, '3671082808900004', 'Faizal', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D4 No.4 ', 'Griya Sangiang Mas Blok D4 No.4 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(57, '3671080606960005', 'Fakhri mauludi', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D4 No.4 ', 'Griya Sangiang Mas Blok D4 No.4 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(58, '3671085311010005', 'Fairus', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D4 No.4 ', 'Griya Sangiang Mas Blok D4 No.4 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMP', 'Karyawan Swasta', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(59, '3603236906160001', 'Aisyah Ayudia Inara', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SD', 'Belum Bekerja', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(60, '3603231101180002', 'Muhammad AlKhalifi Dzikri Hadi', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'Tidak Sekolah', 'Belum Bekerja', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(61, '3671082004650002', 'Dory Suryanto Raisan', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D.4 No.2', 'Griya Sangiang Mas Blok D.4 No.2', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Katholik', 'SMA', 'Pensiunan', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(62, '3671086409660002', 'Tan Gut Beng', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D.4 No.2', 'Griya Sangiang Mas Blok D.4 No.2', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Katholik', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(63, '3671082105930003', 'Andreas', '3671082105930003', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D.4 No.2', 'Griya Sangiang Mas Blok D.4 No.2', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(64, '3671082708940001', 'Denis Trisaputra', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D.4 No.2', 'Griya Sangiang Mas Blok D.4 No.2', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Katholik', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(65, '3671082206980003', 'Jonathan', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D.4 No.2', 'Griya Sangiang Mas Blok D.4 No.2', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Katholik', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(66, '3671084704620001', 'HJ.Dedeh Kurniasih', 'Bogor', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati Blok A.3 No.2-3 ', 'Griya Sangiang Mas Jl.Melati Blok A.3 No.2-3 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMP', 'Ibu Rumah Tangga', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(67, '3671083108890002', 'Deddy Gustiawan', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati Blok A.3 No.2-3 ', 'Griya Sangiang Mas Jl.Melati Blok A.3 No.2-3 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'S1', 'Karyawan Swasta', 'Tinggal Tetap', 1, '2021-12-22 14:28:06', '0000-00-00 00:00:00'),
(68, '3671081210820007', 'Tommy Nuryaman', 'Bengkulu', '0000-00-00', 'L', 'Griya Sangiang Mas Jl. Melati II Blok A4 N0.6', 'Griya Sangiang Mas Jl. Melati II Blok A4 N0.6', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '01', 'Islam', 'S1', 'Karyawan Swasta', 'Pindah Datang', 1, '2021-12-22 14:38:04', '0000-00-00 00:00:00'),
(69, '3671084202830003', 'Rovica Puspitasari ', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Jl. Melati II Blok A4 N0.6', 'Griya Sangiang Mas Jl. Melati II Blok A4 N0.6', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '01', 'Islam', 'S1', 'Ibu Rumah Tangga', 'Pindah Datang', 1, '2021-12-22 14:40:21', '0000-00-00 00:00:00'),
(70, '3671084704170006', 'Keinarra Nur Ar Razzaqu', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl. Melati II Blok A4 N0.6', 'Griya Sangiang Mas Jl. Melati II Blok A4 N0.6', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '01', 'Islam', 'Tidak Sekolah', 'Belum Bekerja', 'Pindah Datang', 1, '2021-12-22 14:41:54', '0000-00-00 00:00:00'),
(71, '3671080302560001', 'Dicky', 'Lampung', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II No.6', 'Griya Sangiang Mas Jl.Melati II No.6', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', 1, '2022-03-21 13:54:42', '0000-00-00 00:00:00'),
(72, '3671084710590001', 'Rohila', 'Tanjung Karang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II No.6', 'Griya Sangiang Mas Jl.Melati II No.6', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', 1, '2022-03-21 13:58:59', '0000-00-00 00:00:00'),
(73, '3671080111510001', 'Arifin Husein', 'Ambon', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II No.4', 'Griya Sangiang Mas Jl.Melati II No.4', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Pensiunan', 'Tinggal Tetap', 1, '2022-03-21 14:01:14', '0000-00-00 00:00:00'),
(74, '3671086309620002', 'Murniati', 'Bengkuu', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II No.4', 'Griya Sangiang Mas Jl.Melati II No.4', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', 1, '2022-03-21 14:03:54', '0000-00-00 00:00:00'),
(75, '3671081307770002', 'Rustandi', 'Sukanumi', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'D3', 'Karyawan Swasta', 'Pindah Keluar', 1, '2022-03-21 14:05:53', '0000-00-00 00:00:00'),
(76, '3671084810760004', 'Rosila Octavia', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'D3', 'Ibu Rumah Tangga', 'Pindah Keluar', 1, '2022-03-21 14:08:15', '0000-00-00 00:00:00'),
(77, '3671084707050003', 'Raissa Edra Zahra ', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMP', 'Pelajar', 'Pindah Keluar', 1, '2022-03-21 14:10:12', '0000-00-00 00:00:00'),
(78, '3671080705070003', 'Rassya Ramiro Fawwaz', 'Tangerang', '0000-00-00', '', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMP', 'Pelajar', 'Pindah Keluar', 1, '2022-03-21 14:11:44', '0000-00-00 00:00:00'),
(79, '3671682805630001', 'Karnadi', 'Tegal', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A3 No.9', 'Griya Sangiang Mas Jl.Melati II Blok A3 No.9', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', 1, '2022-03-21 14:27:19', '0000-00-00 00:00:00'),
(80, '3671084505650007', 'Sri Suryatun', 'Magelang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A3 No.9', 'Griya Sangiang Mas Jl.Melati II Blok A3 No.9', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', 1, '2022-03-21 14:29:25', '0000-00-00 00:00:00'),
(81, '3671082806020003', 'Muhammad Zuhdi Al Qosim Karnadi Yahya', 'Magelang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A3 No.9', 'Griya Sangiang Mas Jl.Melati II Blok A3 No.9', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', 1, '2022-03-21 14:32:51', '0000-00-00 00:00:00'),
(82, '3671080205780006', 'Rosid', 'Kuningan', '0000-00-00', 'L', 'Jl.Melati Raya Blok D4 No.1', 'Jl.Melati Raya Blok D4 No.1', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SD', 'Wirausaha', 'Tinggal Tetap', 1, '2022-03-21 14:35:48', '0000-00-00 00:00:00'),
(83, '3671085204840003', 'Cicih', 'Kuningan', '0000-00-00', '', 'Jl.Melati Raya Blok D4 No.1', 'Jl.Melati Raya Blok D4 No.1', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SD', 'Wirausaha', 'Tinggal Tetap', 1, '2022-03-21 14:37:33', '0000-00-00 00:00:00'),
(84, '3671082308030002', 'Rizki Wibowo', 'Kuningan', '0000-00-00', 'L', 'Jl.Melati Raya Blok D4 No.1', 'Jl.Melati Raya Blok D4 No.1', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMP', 'Karyawwan Swasta', 'Tinggal Tetap', 1, '2022-03-21 14:39:33', '0000-00-00 00:00:00'),
(85, '3671084406120001', 'Risma Putri Amalia', 'Tangerang', '0000-00-00', 'L', 'Jl.Melati Raya Blok D.4 No.1', 'Jl.Melati Raya Blok D.4 No.1', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SD', 'Pelajar', 'Tinggal Tetap', 1, '2022-03-21 14:47:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `warga_has_kartu_keluarga`
--

CREATE TABLE `warga_has_kartu_keluarga` (
  `id_warga` int(11) NOT NULL,
  `id_keluarga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warga_has_kartu_keluarga`
--

INSERT INTO `warga_has_kartu_keluarga` (`id_warga`, `id_keluarga`) VALUES
(1, 11),
(9, 11),
(12, 11),
(15, 11),
(31, 11),
(36, 11),
(7, 20),
(10, 20),
(3, 21),
(13, 21),
(14, 22),
(16, 22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  ADD PRIMARY KEY (`id_keluarga`),
  ADD UNIQUE KEY `FK_keluarga_penduduk` (`id_kepala_keluarga`) USING BTREE,
  ADD UNIQUE KEY `id_kepala_keluarga` (`id_kepala_keluarga`) USING BTREE,
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `mutasi_keluar`
--
ALTER TABLE `mutasi_keluar`
  ADD PRIMARY KEY (`id_mutasi`),
  ADD KEY `id_warga` (`id_warga`);

--
-- Indexes for table `mutasi_masuk`
--
ALTER TABLE `mutasi_masuk`
  ADD PRIMARY KEY (`id_mutasi_masuk`),
  ADD KEY `id_warga` (`id_warga`),
  ADD KEY `id_keluarga` (`id_keluarga`);

--
-- Indexes for table `tbl_kelahiran`
--
ALTER TABLE `tbl_kelahiran`
  ADD PRIMARY KEY (`id_kelahiran`),
  ADD KEY `id_surat` (`id_surat`),
  ADD KEY `id_warga` (`id_warga`),
  ADD KEY `id_keluarga` (`id_keluarga`);

--
-- Indexes for table `tbl_meninggal`
--
ALTER TABLE `tbl_meninggal`
  ADD PRIMARY KEY (`id_meninggal`),
  ADD KEY `id_surat` (`id_surat`),
  ADD KEY `id_warga` (`id_warga`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `warga`
--
ALTER TABLE `warga`
  ADD PRIMARY KEY (`id_warga`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `warga_has_kartu_keluarga`
--
ALTER TABLE `warga_has_kartu_keluarga`
  ADD UNIQUE KEY `id_warga` (`id_warga`),
  ADD KEY `id_penduduk` (`id_warga`,`id_keluarga`),
  ADD KEY `warga_has_kartu_keluarga_ibfk_2` (`id_keluarga`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  MODIFY `id_keluarga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `mutasi_keluar`
--
ALTER TABLE `mutasi_keluar`
  MODIFY `id_mutasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mutasi_masuk`
--
ALTER TABLE `mutasi_masuk`
  MODIFY `id_mutasi_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_kelahiran`
--
ALTER TABLE `tbl_kelahiran`
  MODIFY `id_kelahiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_meninggal`
--
ALTER TABLE `tbl_meninggal`
  MODIFY `id_meninggal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `warga`
--
ALTER TABLE `warga`
  MODIFY `id_warga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  ADD CONSTRAINT `kartu_keluarga_ibfk_1` FOREIGN KEY (`id_kepala_keluarga`) REFERENCES `warga` (`id_warga`),
  ADD CONSTRAINT `kartu_keluarga_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `tbl_meninggal`
--
ALTER TABLE `tbl_meninggal`
  ADD CONSTRAINT `tbl_meninggal_ibfk_1` FOREIGN KEY (`id_warga`) REFERENCES `warga` (`id_warga`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
