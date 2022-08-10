/*
 Navicat Premium Data Transfer

 Source Server         : MySql Local
 Source Server Type    : MySQL
 Source Server Version : 100421
 Source Host           : localhost:3306
 Source Schema         : u2774448_datawargagsm

 Target Server Type    : MySQL
 Target Server Version : 100421
 File Encoding         : 65001

 Date: 03/08/2022 14:55:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bekerja_luar_negeri_kota
-- ----------------------------
DROP TABLE IF EXISTS `bekerja_luar_negeri_kota`;
CREATE TABLE `bekerja_luar_negeri_kota`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `warga_id` int NULL DEFAULT NULL,
  `tujuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sejak` date NULL DEFAULT NULL,
  `sampai` date NULL DEFAULT NULL,
  `pekerjaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pelapor_id` int NULL DEFAULT NULL,
  `hubungan_pelapor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_pembuatan` date NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sequence` int UNSIGNED NULL DEFAULT NULL,
  `nama_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_induk_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bekerja_luar_negeri_kota
-- ----------------------------
INSERT INTO `bekerja_luar_negeri_kota` VALUES (1, 1, 'jakarta', '2022-04-06', '2022-04-08', 'Konsultant IT', 36, 'Suami', '2022-04-09', '140/001- Pemdes.Gbng.Rya/2022', 1, 'Sonny Sontana', 'Ketua RT', '3670000503850011');

-- ----------------------------
-- Table structure for belum_bekerja
-- ----------------------------
DROP TABLE IF EXISTS `belum_bekerja`;
CREATE TABLE `belum_bekerja`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `warga_id` int UNSIGNED NULL DEFAULT NULL,
  `tanggal_pembuatan` date NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sequence` int NULL DEFAULT NULL,
  `nama_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_induk_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of belum_bekerja
-- ----------------------------
INSERT INTO `belum_bekerja` VALUES (1, 60, '2022-04-09', '140/001- Pemdes.Gbng.Rya/2022', 1, 'Sonny Sontana', 'Ketua RT', '3670000503850011');

-- ----------------------------
-- Table structure for belum_mempunyai_rumah
-- ----------------------------
DROP TABLE IF EXISTS `belum_mempunyai_rumah`;
CREATE TABLE `belum_mempunyai_rumah`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `warga_id` int UNSIGNED NULL DEFAULT NULL,
  `tanggal_pembuatan` date NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sequence` int NULL DEFAULT NULL,
  `nama_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_induk_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of belum_mempunyai_rumah
-- ----------------------------

-- ----------------------------
-- Table structure for belum_menikah
-- ----------------------------
DROP TABLE IF EXISTS `belum_menikah`;
CREATE TABLE `belum_menikah`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `warga_id` int NULL DEFAULT NULL,
  `tanggal_pembuatan` date NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sequence` int UNSIGNED NULL DEFAULT NULL,
  `nama_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_induk_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `saksi_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `saksi_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `saksi_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of belum_menikah
-- ----------------------------

-- ----------------------------
-- Table structure for domisili
-- ----------------------------
DROP TABLE IF EXISTS `domisili`;
CREATE TABLE `domisili`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sequence` int UNSIGNED NULL DEFAULT NULL,
  `tanggal_pembuatan` date NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `jenis_kelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `agama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_perkawinan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pekerjaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lama_domisili` date NULL DEFAULT NULL,
  `alamat_domisili` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_ktp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_induk_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of domisili
-- ----------------------------

-- ----------------------------
-- Table structure for domisili_bck
-- ----------------------------
DROP TABLE IF EXISTS `domisili_bck`;
CREATE TABLE `domisili_bck`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `warga_id` int NULL DEFAULT NULL,
  `tanggal_pembuatan` date NULL DEFAULT NULL,
  `lama_domisili` int UNSIGNED NULL DEFAULT NULL,
  `sampai` date NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sequence` int UNSIGNED NULL DEFAULT NULL,
  `nama_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_induk_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of domisili_bck
-- ----------------------------

-- ----------------------------
-- Table structure for kartu_keluarga
-- ----------------------------
DROP TABLE IF EXISTS `kartu_keluarga`;
CREATE TABLE `kartu_keluarga`  (
  `id_keluarga` int NOT NULL AUTO_INCREMENT,
  `nomor_keluarga` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_kepala_keluarga` int NOT NULL,
  `alamat_keluarga` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dusun_keluarga` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desa_kelurahan_keluarga` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kecamatan_keluarga` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kabupaten_kota_keluarga` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `provinsi_keluarga` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `negara_keluarga` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rt_keluarga` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rw_keluarga` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_pos_keluarga` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_user` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_keluarga`) USING BTREE,
  UNIQUE INDEX `FK_keluarga_penduduk`(`id_kepala_keluarga` ASC) USING BTREE,
  UNIQUE INDEX `id_kepala_keluarga`(`id_kepala_keluarga` ASC) USING BTREE,
  INDEX `id_user`(`id_user` ASC) USING BTREE,
  CONSTRAINT `kartu_keluarga_ibfk_1` FOREIGN KEY (`id_kepala_keluarga`) REFERENCES `warga` (`id_warga`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `kartu_keluarga_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kartu_keluarga
-- ----------------------------
INSERT INTO `kartu_keluarga` VALUES (11, '10', 2, 'Kuningan', '', 'kng', 'kng', 'kng', 'jabar', 'Indonesia', '01', '08', '45515', 13, '2021-12-10 21:17:22', '2016-09-15 19:59:41');
INSERT INTO `kartu_keluarga` VALUES (20, '13', 9, 'Ciawi', '', 'Dukuhdalem', 'Ciawigebang', 'Kuningan', 'Jawa Barat', 'Indonesia', '01', '08', '4555', 11, '2021-12-10 21:17:22', '2017-12-18 01:41:23');
INSERT INTO `kartu_keluarga` VALUES (22, '14', 5, 'Kuningan', '', 'Dukuhdalem', 'Ciawigebang', 'Kuningan', 'Jawa Barat', 'Indonesia', '01', '08', '45515', 11, '2021-12-10 21:17:22', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (30, '16', 30, '-', '', '-', '-', '-', '-', '-', '-', '-', '-', 13, '2018-01-04 02:15:18', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (31, '320809160198004', 34, 'Windujanten', '', '-', '-', '-', '-', '-', '-', '-', '-', 13, '2018-01-18 00:51:56', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (32, '3208091601700015', 35, 'Cijoho', '', '-', '-', '-', '-', '-', '-', '-', '-', 13, '2018-01-18 00:53:06', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (34, '3671080509140002', 4, 'Kp.Sangiang', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2021-12-11 19:52:44', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (35, '3671082307180002', 38, 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2022-03-23 09:09:23', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (36, '3671082809070225', 50, 'JL.Bunga Raya III Blok C.4 No.3', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2022-03-23 09:14:22', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (37, '3671082908070222', 48, 'Griya Sangiangmas Jl.Melati Blok A4 No.09', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2022-03-23 09:23:52', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (38, '3671081811210001', 1, 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2022-03-23 09:30:35', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (39, '3671082909100025', 95, 'Griya Sangiang Mas Blok C4 No.3', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2022-03-23 10:13:45', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (40, '3671082809070242', 101, 'Griya Sangiang Mas Blok A4 No.7', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2022-03-23 10:51:16', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (41, '3671080905160005', 98, 'Griya Sangiang Mas Blok C4 No.4', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2022-03-23 10:54:10', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (42, '3671080210070189', 103, 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.7', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2022-03-23 11:02:30', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (43, '3671082809070213', 106, 'Griya Sangiang Mas Blok A4 No.1', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2022-03-23 11:10:13', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (44, '3671082809070198', 17, 'Griya Sangiang Mas Blok D4 No.5', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2022-03-23 21:06:06', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (45, '3671083108890002', 66, 'Griya Sangiang Mas Jl.Melati Blok A.3 No.2-3', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2022-05-15 20:00:16', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (46, '367108120007', 68, 'Griya Sangiang Mas Jl. Melati II Blok A4 N0.6', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2022-05-15 20:04:41', '2022-05-15 20:04:41');
INSERT INTO `kartu_keluarga` VALUES (47, '3671082809070226', 61, 'Griya Sangiang Mas Blok D.4 No.2', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2022-05-15 20:18:18', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (48, '3671082809070211', 71, 'Griya Sangiang Mas Jl.Melati II No.6', '', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '01', '08', '15132', 1, '2022-05-15 20:38:04', '0000-00-00 00:00:00');
INSERT INTO `kartu_keluarga` VALUES (49, '367108280907021', 73, 'Griya Sangiang Mas Jl.Melati II No.4', '', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '1', '8', '15132', 1, '2022-05-15 20:42:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for kelahiran
-- ----------------------------
DROP TABLE IF EXISTS `kelahiran`;
CREATE TABLE `kelahiran`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `warga_id` int NULL DEFAULT NULL,
  `hari` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_kelahiran` date NULL DEFAULT NULL,
  `jam_kelahiran` time NULL DEFAULT NULL,
  `tempat_kelahiran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `anak_ke` int UNSIGNED NULL DEFAULT NULL,
  `ibu_id` int NULL DEFAULT NULL,
  `ayah_id` int NULL DEFAULT NULL,
  `pelapor_id` int NULL DEFAULT NULL,
  `hubungan_pelapor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_pembuatan` date NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sequence` int UNSIGNED NULL DEFAULT NULL,
  `nama_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_induk_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kelahiran
-- ----------------------------
INSERT INTO `kelahiran` VALUES (2, 138, 'Senin', '2022-06-13', '05:56:00', 'test', 1, 1, 1, 1, 'test', '2022-06-13', '140/001- Pemdes.Gbng.Rya/2022', 1, 'test', 'test', 'test');
INSERT INTO `kelahiran` VALUES (3, 139, 'Senin', '2022-06-13', '09:00:00', 'test', 2, 3, 1, 1, 'test', '2022-06-13', '140-Pemdes.Gbng.Rya/001/06/2022', 1, 'test', 'test', 'test');
INSERT INTO `kelahiran` VALUES (4, 140, 'Senin', '2022-06-13', '09:01:00', 'test', 3, 3, 1, 1, 'test', '2022-06-13', '140-Pemdes.Gbng.Rya/002/06/2022', 2, 'test', 'test', 'test');

-- ----------------------------
-- Table structure for kematian
-- ----------------------------
DROP TABLE IF EXISTS `kematian`;
CREATE TABLE `kematian`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `warga_id` int NULL DEFAULT NULL,
  `hari` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_kematian` date NULL DEFAULT NULL,
  `jam_kematian` time NULL DEFAULT NULL,
  `penyebab_kematian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempat_kematian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pelapor_id` int NULL DEFAULT NULL,
  `hubungan_pelapor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_pembuatan` date NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sequence` int UNSIGNED NULL DEFAULT NULL,
  `nama_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_induk_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kematian
-- ----------------------------
INSERT INTO `kematian` VALUES (1, 89, 'Minggu', '2022-04-10', '02:43:00', 'test a', 'test b', 1, 'test c', '2022-04-10', '140/001- Pemdes.Gbng.Rya/2022', 1, 'a', 'b', 'c');
INSERT INTO `kematian` VALUES (2, 1, 'Senin', '2022-06-13', '09:04:00', 'TEST', 'TEST', 1, 'TEST', '2022-06-13', '140-Pemdes.Gbng.Rya/003/06/2022', 3, 'TEST', 'TEST', 'TEST');

-- ----------------------------
-- Table structure for keterangan_usaha
-- ----------------------------
DROP TABLE IF EXISTS `keterangan_usaha`;
CREATE TABLE `keterangan_usaha`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `warga_id` int UNSIGNED NULL DEFAULT NULL,
  `tanggal_pembuatan` date NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sequence` int NULL DEFAULT NULL,
  `alamat_usaha` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `bidang_usaha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis_usaha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lama_usaha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_induk_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of keterangan_usaha
-- ----------------------------
INSERT INTO `keterangan_usaha` VALUES (1, 1, '2022-04-09', '140/001- Pemdes.Gbng.Rya/2022', 1, 'GSA', 'IT', 'Konsultant IT Hardware dan Software', '10 Tahun', 'Sonny Sontana', 'Ketua RT', '3670000503850011');
INSERT INTO `keterangan_usaha` VALUES (2, 36, '2022-04-09', '140/002- Pemdes.Gbng.Rya/2022', 2, 'GSM', 'iT', 'Konsultant IT Hardware dan Software', '10 Tahun', 'Sonny Sontana', 'Ketua RT', '3670000503850011');

-- ----------------------------
-- Table structure for mutasi_keluar
-- ----------------------------
DROP TABLE IF EXISTS `mutasi_keluar`;
CREATE TABLE `mutasi_keluar`  (
  `id_mutasi_keluar` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_warga` int UNSIGNED NOT NULL,
  `tanggal_pindah` date NOT NULL,
  `alasan_pindah` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_tujuan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rt_tujuan` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rw_tujuan` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `desa_kelurahan_tujuan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kecamatan_tujuan` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kabupaten_kota_tujuan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `provinsi_tujuan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `negara_tujuan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_mutasi_keluar`) USING BTREE,
  INDEX `id_warga`(`id_warga` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mutasi_keluar
-- ----------------------------

-- ----------------------------
-- Table structure for mutasi_masuk
-- ----------------------------
DROP TABLE IF EXISTS `mutasi_masuk`;
CREATE TABLE `mutasi_masuk`  (
  `id_mutasi_masuk` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_warga` int NOT NULL,
  `id_keluarga` int UNSIGNED NULL DEFAULT NULL,
  `alamat_asal` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_tujuan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_pindah` date NOT NULL,
  `alasan_pindah` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_kepindahan` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `agama_warga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pendidikan_terakhir_warga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pekerjaan_warga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rt_warga` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rw_warga` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desa_kelurahan_warga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kecamatan_warga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kabupaten_kota_warga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `provinsi_warga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_mutasi_masuk`) USING BTREE,
  INDEX `id_warga`(`id_warga` ASC) USING BTREE,
  INDEX `id_keluarga`(`id_keluarga` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mutasi_masuk
-- ----------------------------

-- ----------------------------
-- Table structure for permohonan_perubahan_data_penduduk
-- ----------------------------
DROP TABLE IF EXISTS `permohonan_perubahan_data_penduduk`;
CREATE TABLE `permohonan_perubahan_data_penduduk`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `warga_id` int NULL DEFAULT NULL,
  `nama_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nik_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempat_lahir_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_lahir_from` date NULL DEFAULT NULL,
  `jenis_kelamin_from` enum('Laki-laki','Perempuan') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warganegara_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_perkawinan_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `agama_from` enum('Islam','Katolik','Protestan','Hindu','Budha','Konghucu') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pekerjaan_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_from` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nama_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nik_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempat_lahir_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_lahir_to` date NULL DEFAULT NULL,
  `jenis_kelamin_to` enum('Laki-laki','Perempuan') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warganegara_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_perkawinan_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `agama_to` enum('Islam','Katolik','Protestan','Hindu','Budha','Konghucu') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pekerjaan_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_to` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nama_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nrpdes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_pembuatan` date NULL DEFAULT NULL,
  `acuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permohonan_perubahan_data_penduduk
-- ----------------------------

-- ----------------------------
-- Table structure for surat_pengantar
-- ----------------------------
DROP TABLE IF EXISTS `surat_pengantar`;
CREATE TABLE `surat_pengantar`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `warga_id` int NULL DEFAULT NULL,
  `tanggal_pembuatan` date NULL DEFAULT NULL,
  `kepentingan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tujuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sequence` int UNSIGNED NULL DEFAULT NULL,
  `nama_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_induk_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of surat_pengantar
-- ----------------------------

-- ----------------------------
-- Table structure for surat_sequences
-- ----------------------------
DROP TABLE IF EXISTS `surat_sequences`;
CREATE TABLE `surat_sequences`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `sequence` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of surat_sequences
-- ----------------------------
INSERT INTO `surat_sequences` VALUES (1, '2022-06-13', 5);

-- ----------------------------
-- Table structure for tbl_kelahiran
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kelahiran`;
CREATE TABLE `tbl_kelahiran`  (
  `id_kelahiran` int NOT NULL AUTO_INCREMENT,
  `tgl_kelahiran` datetime NOT NULL,
  `nama_bayi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jk` enum('L','P') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `berat_bayi` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `panjang_bayi` int NULL DEFAULT NULL,
  `nama_ayah` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_ibu` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lokasi_lahir` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tempat_lahir` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_keluarga` int NULL DEFAULT NULL,
  `penolong` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_warga` int NULL DEFAULT NULL,
  `id_surat` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_kelahiran`) USING BTREE,
  INDEX `id_surat`(`id_surat` ASC) USING BTREE,
  INDEX `id_warga`(`id_warga` ASC) USING BTREE,
  INDEX `id_keluarga`(`id_keluarga` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kelahiran
-- ----------------------------
INSERT INTO `tbl_kelahiran` VALUES (2, '2017-12-21 00:00:00', 'Dejan Kecil', 'L', '3', 55, 'Dejan', 'Entah', 'Rumah Bersalin', 'Kuningan', 11, 'Bidan cantik', 10, NULL);
INSERT INTO `tbl_kelahiran` VALUES (3, '2017-12-22 00:00:00', 'Cihiro', 'P', '2,5', 55, 'Dejan', 'Entah', 'Bidan', 'Kuningan', 22, '', NULL, NULL);
INSERT INTO `tbl_kelahiran` VALUES (27, '2018-01-02 00:00:00', 'Yoshino', 'L', '3', 50, 'DD', 'MM', 'Bukan Rumah Bersalin', 'kuningan', 14, 'Entah', 12, 0);
INSERT INTO `tbl_kelahiran` VALUES (28, '2018-01-02 00:00:00', 'Yoshino', 'L', '3', 50, 'DD', 'MM', 'Bukan Rumah Bersalin', 'kuningan', 12, 'Entah', 13, 0);
INSERT INTO `tbl_kelahiran` VALUES (29, '2018-01-02 00:00:00', 'Yoshino yosuke', 'L', '3', 55, 'DD', 'DDD', 'Bukan Rumah Bersalin', 'kuningan', 14, 'Bidan cantik', 14, 0);
INSERT INTO `tbl_kelahiran` VALUES (30, '2018-01-02 00:00:00', 'Yoshino yosuke 2', 'L', '3', 55, 'DD', 'DDD', 'Bukan Rumah Bersalin', 'kuningan', 10, 'Bidan cantik', 15, 0);
INSERT INTO `tbl_kelahiran` VALUES (31, '2018-01-03 00:00:00', 'suryani', 'L', '3', 50, 'dejan', 'entah', 'Rumah Bersalin', 'kuningan', 14, 'Bidan cantik', 16, 0);
INSERT INTO `tbl_kelahiran` VALUES (32, '2018-01-04 00:00:00', 'Yani Suryani', 'L', '4', 55, 'Dejan', 'Duka', 'Rumah Bersalin', 'Kuningan', 10, 'Bidan cantik', 31, 0);
INSERT INTO `tbl_kelahiran` VALUES (33, '2017-01-11 00:00:00', 'muhammad Al-khalifi Zikri Hadi', 'L', '15', 120, 'Argan', 'Sin Putriani', 'Bukan Rumah Bersalin', 'Tangerang', 10, 'Suster Ngesot', 36, 0);

-- ----------------------------
-- Table structure for tbl_meninggal
-- ----------------------------
DROP TABLE IF EXISTS `tbl_meninggal`;
CREATE TABLE `tbl_meninggal`  (
  `id_meninggal` int NOT NULL AUTO_INCREMENT,
  `tgl_meninggal` datetime NOT NULL,
  `sebab` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_warga` int NULL DEFAULT NULL,
  `tempat_kematian` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_pelapor` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hubungan_pelapor` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_surat` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_meninggal`) USING BTREE,
  INDEX `id_surat`(`id_surat` ASC) USING BTREE,
  INDEX `id_warga`(`id_warga` ASC) USING BTREE,
  CONSTRAINT `tbl_meninggal_ibfk_1` FOREIGN KEY (`id_warga`) REFERENCES `warga` (`id_warga`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_meninggal
-- ----------------------------
INSERT INTO `tbl_meninggal` VALUES (1, '2017-12-27 00:00:00', '-', 1, 'RS', 'Amin', 'Saudara', NULL);
INSERT INTO `tbl_meninggal` VALUES (6, '2018-01-02 00:00:00', 'Sakit', 11, 'RS', 'pelapor', 'Duka', 0);
INSERT INTO `tbl_meninggal` VALUES (7, '2018-01-02 00:00:00', 'Sakit', 13, '-', 'pelapor', 'Duka', 0);
INSERT INTO `tbl_meninggal` VALUES (8, '2021-03-05 00:00:00', 'Covid 19', 1, 'Rumah Sakit', 'pelapor', 'Keluarga ', 0);

-- ----------------------------
-- Table structure for tidak_mampu_kesehatan_puskesmas
-- ----------------------------
DROP TABLE IF EXISTS `tidak_mampu_kesehatan_puskesmas`;
CREATE TABLE `tidak_mampu_kesehatan_puskesmas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `warga_id` int UNSIGNED NULL DEFAULT NULL,
  `tanggal_pembuatan` date NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sequence` int NULL DEFAULT NULL,
  `no_rt_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_rt_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_rw_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_rw_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_tksk_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_induk_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_register_camat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_camat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nip_camat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tidak_mampu_kesehatan_puskesmas
-- ----------------------------

-- ----------------------------
-- Table structure for tidak_mampu_kesehatan_rsud
-- ----------------------------
DROP TABLE IF EXISTS `tidak_mampu_kesehatan_rsud`;
CREATE TABLE `tidak_mampu_kesehatan_rsud`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `warga_id` int UNSIGNED NULL DEFAULT NULL,
  `tanggal_pembuatan` date NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sequence` int NULL DEFAULT NULL,
  `jabatan_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_induk_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_register_camat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_camat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nip_camat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tidak_mampu_kesehatan_rsud
-- ----------------------------
INSERT INTO `tidak_mampu_kesehatan_rsud` VALUES (2, 36, '2022-04-09', '140/001- Pemdes.Gbng.Rya/2022', 1, 'Ketua RT', 'Sonny Sontana', '3670000503850011', '1234................................................', 'arif', '1234455');

-- ----------------------------
-- Table structure for tidak_mampu_sekolah
-- ----------------------------
DROP TABLE IF EXISTS `tidak_mampu_sekolah`;
CREATE TABLE `tidak_mampu_sekolah`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `warga_id` int NULL DEFAULT NULL,
  `tujuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pelapor_id` int NULL DEFAULT NULL,
  `tanggal_pembuatan` date NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sequence` int UNSIGNED NULL DEFAULT NULL,
  `nama_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_induk_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tidak_mampu_sekolah
-- ----------------------------
INSERT INTO `tidak_mampu_sekolah` VALUES (2, 59, 'Sekolah SD', 1, '2022-04-09', '140/001- Pemdes.Gbng.Rya/2022', 1, 'Argan', 'Kelurahan Gebang Raya', '3670000503850011');

-- ----------------------------
-- Table structure for tidak_mampu_umum
-- ----------------------------
DROP TABLE IF EXISTS `tidak_mampu_umum`;
CREATE TABLE `tidak_mampu_umum`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `warga_id` int NULL DEFAULT NULL,
  `tanggal_pembuatan` date NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sequence` int UNSIGNED NULL DEFAULT NULL,
  `nama_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_induk_ttd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tidak_mampu_umum
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username_user` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password_user` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan_user` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status_user` enum('Admin','Kasi_Pemerintahan') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `desa_kelurahan_user` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kecamatan_user` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kabupaten_kota_user` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `provinsi_user` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `negara_user` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rt_user` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rw_user` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Argan', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin di aplikasi pendataan warga', 'Admin', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '001', '002', '2021-03-24 20:44:14', '2021-03-24 20:44:14');
INSERT INTO `user` VALUES (11, 'Sonny Sontana', 'Admin', '1f6decc3bfb430d86a26f2c8fb0c2257', '', 'Admin', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '-', '-', '2021-03-05 10:27:00', '2021-03-05 10:27:00');
INSERT INTO `user` VALUES (13, 'Kasi Pemerintahan', 'kasi_pemerintahan', '17131d43d1c41721e4daf4a9a6c85cda', 'Kasi Pemerintahan', 'Kasi_Pemerintahan', 'Dukuhdalem', 'Ciawigebang', 'Kuningan', 'Jawa Barat', 'Indonesia', '', '', '2018-01-02 14:57:52', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for warga
-- ----------------------------
DROP TABLE IF EXISTS `warga`;
CREATE TABLE `warga`  (
  `id_warga` int NOT NULL AUTO_INCREMENT,
  `nik_warga` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_warga` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_lahir_warga` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_lahir_warga` date NOT NULL,
  `jenis_kelamin_warga` enum('L','P') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_ktp_warga` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_warga` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `desa_kelurahan_warga` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kecamatan_warga` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kabupaten_kota_warga` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `provinsi_warga` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `negara_warga` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dusun_warga` enum('Periuk') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rt_warga` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rw_warga` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `agama_warga` enum('Islam','Protestan','Katolik','Hindu','Budha','Konghucu') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pendidikan_terakhir_warga` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pekerjaan_warga` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status_warga` enum('Tinggal Tetap','Kontrak','Meninggal','Pindah Datang','Pindah Keluar') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status_perkawinan` enum('Belum Kawin','Kawin','Cerai Hidup','Cerai Mati') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_user` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_warga`) USING BTREE,
  INDEX `id_user`(`id_user` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warga
-- ----------------------------
INSERT INTO `warga` VALUES (1, '3671000050385001', 'argantrian Jayawijya', 'Sukabumi', '1985-03-15', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', 'Periuk', '01', '08', 'Islam', 'S1', 'IT', 'Pindah Keluar', NULL, 1, '2022-06-12 10:30:11', '2022-05-15 21:02:38');
INSERT INTO `warga` VALUES (2, '3671080507510001', 'Abed Bedjonyono', 'Solo', '1951-07-05', 'L', 'Griya Sangiangmas Jl.Melati Blok A4 No.11 ', 'Griya Sangiangmas Jl.Melati Blok A4 No.11 ', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawwan Swasta', 'Pindah Keluar', NULL, 11, '2022-06-12 11:18:14', '2021-12-10 21:22:02');
INSERT INTO `warga` VALUES (3, '3671085007580001', 'SRIE WAHYUNI', 'GARUT', '1967-07-07', 'P', 'Griya Sangiangmas Jl.Melati Blok A4 No.11', 'Griya Sangiangmas Jl.Melati Blok A4 No.11', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMP', 'Ibu Rumah Tangga', 'Pindah Keluar', NULL, 11, '2022-06-12 11:20:37', '2021-12-10 21:25:50');
INSERT INTO `warga` VALUES (4, '1804170507890005', 'PAHROZI', 'NGARAS', '1989-07-05', 'L', 'Kp Sangiang Jaya ', 'Kp Sangiang Jaya ', 'Sangiang Jaya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Wirausaha', 'Pindah Datang', NULL, 11, '2021-12-22 21:28:06', '2021-12-19 11:27:10');
INSERT INTO `warga` VALUES (5, '1804177011900002', 'Yurnawati', 'Jambatan', '1990-11-30', 'P', 'Kp.Sangiang', 'Jl.Melati', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Pindah Datang', NULL, 11, '2021-12-22 21:28:06', '2021-12-11 19:50:26');
INSERT INTO `warga` VALUES (7, '3602010507860011', 'Paiji', 'lebak', '1996-07-05', 'L', 'Griya Sangiang Mas Jl.Melati 1 Blok D.4 No.10', 'Griya Sangiang Mas Jl.Melati 1 Blok D.4 No.10', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Pindah Datang', NULL, 11, '2021-12-22 21:28:06', '2021-12-11 20:05:52');
INSERT INTO `warga` VALUES (9, '321225500920001', 'TITIN Ratnasari', 'Tegal', '1992-06-10', 'P', 'Griya Sangiang Mas Jl.Melati I Blok D.4 No.10', 'Griya Sangiang Mas Jl.Melati I Blok D.4 No.10', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Pindah Datang', NULL, 11, '2021-12-22 21:28:06', '2021-12-11 20:17:14');
INSERT INTO `warga` VALUES (10, '3671081112830002', 'Riki Ardinsyah', 'Jakarta', '1986-06-12', 'L', 'Bambu Larangan Pegadungan Kalideres', 'Jl.Melati', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Meninggal', NULL, 11, '2021-12-22 21:28:06', '2021-12-11 20:22:34');
INSERT INTO `warga` VALUES (11, '3602092802950002', 'IMAN', 'LEBAK', '1997-11-13', 'L', 'KP KERTA KEL.KERTA KEC.BNJARSARI KAB.LEBAK BANTEN', 'Jl.Melati Raya', 'Gebang Raya', 'Periuk', 'Kuningan', 'Banten', 'INDONESIA', '', '01', '08', 'Islam', 'SMP', 'Karyawan Swasta', 'Pindah Datang', NULL, 0, '2021-12-22 21:28:06', '2021-12-18 23:13:01');
INSERT INTO `warga` VALUES (12, '3602014912940002', 'Elis', 'lebak', '1994-12-09', 'P', 'Kp. Kerta Rt 002/003 kel.Kerta Kec.Banjarsari Kab.Lebak Banten', 'Jl.Melai Raya', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'INDONESIA', '', '01', '05', 'Islam', 'SD', 'Ibu Rumah Tangga', 'Pindah Datang', NULL, 0, '2021-12-18 23:16:46', '2021-12-18 23:16:46');
INSERT INTO `warga` VALUES (13, '3671080407840002', 'Topan Cristian Panjaitan', 'P.brandan', '1984-07-04', 'L', 'Jl.Merpati Blok D18 No.7kel.Gebang Raya Kec.Periuk Tangerang Banten', 'Jl.Merpati Blok D18 No.7kel.Gebang Raya Kec.Periuk Tangerang Banten', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'INDONESIA', '', '01', '08', '', 'D1', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 0, '2021-12-22 21:28:06', '2021-12-18 23:21:02');
INSERT INTO `warga` VALUES (14, '3671080704510001', 'H.Muhammad Sumbali', 'Tangerang', '1968-07-15', 'L', 'Griya Sangiang Mas Blok C.4 No.2 Kel.Gebang RayaKec.Periuk Kota Tangerang Banten', 'Griya Sangiang Mas Blok C.4 No.2 Kel.Gebang RayaKec.Periuk Kota Tangerang Banten', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'INDONESIA', '', '01', '05', 'Islam', 'SMP', 'Pensiunan', 'Tinggal Tetap', NULL, 0, '2021-12-18 23:24:26', '2021-12-18 23:24:26');
INSERT INTO `warga` VALUES (15, '3767108040751000', 'M.Syarifudin', 'Tangerang', '1968-07-04', 'L', 'Griya Sangiang Mas Jl.Raya Bunga Raya 3 Blok C.4 No.8 Kel.Gebang Raya Kc.Periuk', 'Griya Sangiang Mas Jl.Raya Bunga Raya 3 Blok C.4 No.8 Kel.Gebang Raya Kc.Periuk', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'INDONESIA', '', '01', '02', 'Islam', 'SMP', 'Pensiunan', 'Tinggal Tetap', NULL, 0, '2021-12-18 23:33:39', '2021-12-18 23:33:39');
INSERT INTO `warga` VALUES (16, '3671084407530001', 'Siti Saodah', 'Tangerang', '1968-07-04', 'P', 'Griya Sangiang Mas Blok C.4 No.2 Kel.Gebang RayaKec.Periuk Kota Tangerang Banten', 'Griya Sangiang Mas Blok C.4 No.2 Kel.Gebang RayaKec.Periuk Kota Tangerang Banten', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'INDONESIA', '', '01', '05', 'Islam', 'SMP', 'Ibu Rumah Tangga', 'Tinggal Tetap', NULL, 0, '2021-12-19 11:26:40', '2021-12-19 11:26:40');
INSERT INTO `warga` VALUES (17, '3671080306620003', 'H.Hajarul Alamtara', 'Jakarta', '1968-05-03', 'L', 'Griya Sangiang Mas Rt 01/08 Blok D.4 No.5 Kel.Gebang Raya Kec.Periuk Kota Tangerang Banten', 'Griya Sangiang Mas Rt 01/08 Blok D.4 No.5 Kel.Gebang Raya Kec.Periuk Kota Tangerang Banten', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'D3', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 13, '2021-12-22 21:28:06', '2021-12-19 11:44:37');
INSERT INTO `warga` VALUES (28, '3671084407650001', 'HJ.Chandra Malabar', 'Gorontalo', '1968-07-04', 'L', 'Griya Sangiang Mas Blok D.4 No.5 Rt 001Rw 008 Kel.Gebang Raya Kec.Periuk Kota Tangerang', 'Griya Sangiang Mas Blok D.4 No.5 Rt 001Rw 008 Kel.Gebang Raya Kec.Periuk Kota Tangerang', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', NULL, 13, '2021-12-22 21:28:06', '2021-12-19 11:30:27');
INSERT INTO `warga` VALUES (29, '3671084308960003', 'Ghoniah Aulia Karamah', 'Tangerang', '1996-08-03', 'P', 'Griya Sangiang Mas Rt 01/08 Blok D.4 No.5 Kel.Gebang RayaKec.Periuk Kota Tangerang Banten', 'Griya Sangiang Mas Rt 01/08 Blok D.4 No.5 Kel.Gebang RayaKec.Periuk Kota Tangerang Banten', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SD', 'Belum Bekerja', 'Tinggal Tetap', NULL, 13, '2021-12-22 21:28:06', '2021-12-19 11:33:47');
INSERT INTO `warga` VALUES (30, '3671080107640007', 'Ujang Kusnadi', 'Jakarta', '1964-07-01', 'L', 'Griya Sangiangmas Jl.Melati Blok A4 No.10', 'Griya Sangiangmas Jl.Melati Blok A4 No.10', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 13, '2021-12-22 21:28:06', '2021-12-19 12:39:58');
INSERT INTO `warga` VALUES (31, '3671084403670001', 'Elyana', 'Bogor', '1967-03-04', 'P', 'Griya Sangiangmas Jl.Melati Blok A4 No.10', 'Griya Sangiangmas Jl.Melati Blok A4 No.10', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'INDONESIA', '', '01', '08', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', NULL, 0, '2021-12-22 21:28:06', '2021-12-19 12:41:57');
INSERT INTO `warga` VALUES (34, '3208090511780005', 'Darmawan', 'Kuningan', '1970-01-13', 'L', 'Windujanten', 'Windujanten', 'Dukuhdalem', 'Ciawigebang', 'Kuningan', 'Jawa Barat', 'Indonesia', '', '02', '08', 'Islam', 'SMP', 'Wiraswasta', 'Pindah Datang', NULL, 13, '2021-12-22 21:28:06', '2018-01-18 00:55:18');
INSERT INTO `warga` VALUES (35, '3671084108990003', 'irma Fauziah', 'Jakarta', '1999-08-01', 'P', 'Griya Sangiangmas Jl.Melati Blok A4 No.11 ', 'Griya Sangiangmas Jl.Melati Blok A4 No.11 ', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 13, '2021-12-22 21:28:06', '2021-12-19 12:49:09');
INSERT INTO `warga` VALUES (36, '3671084212870001', 'Sin Putriani', 'Jakarta', '1987-12-02', 'P', 'Griya Sangiangmas Jl.Melati Blok A4 No.5', 'Griya Sangiangmas Jl.Melati Blok A4 No.5', 'Gebang Raya', 'Periuk', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'D3', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-05-15 21:03:11', '2022-05-15 21:03:11');
INSERT INTO `warga` VALUES (37, '3671081903000002', 'Ryan Kharisma', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiangmas Jl.Melati Blok A4 No.10a', 'Griya Sangiangmas Jl.Melati Blok A4 No.10a', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Pindah Datang', NULL, 1, '2021-12-22 21:28:06', '2021-12-19 13:10:26');
INSERT INTO `warga` VALUES (38, '3211182309840005', 'Taufik Hidayat', 'Sumedang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'D3', 'PNS', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (39, '3671085811860002', 'Gina Indhira Pratiwi', 'jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'D3', 'Bidan', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (40, '3671081109130002', 'Muhammad Zain Alamsyah', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SD', 'Belum Bekerja', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (41, '3211181611160003', 'Ali Zavier Alamsyah', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'Tidak Sekolah', 'Belum Bekerja', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (42, '3671081405180004', 'Zameer dhirgam Alamsyah', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Griya Sangiang Mas Jl.Melati Raya Blok D4 No.05 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'Tidak Sekolah', 'Belum Bekerja', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (43, '3671081605650001', 'Suroso', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (44, '3671086004660002', 'Nurhasanah', 'Garut', '0000-00-00', 'L', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (45, '3671085507920002', 'Sovie Az Zahra', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'D3', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (46, '3671087010010003', 'Sarah Azzukhruf', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Griya Sangiang Mas Jl. Melati Raya blok D4 No.9 RT001 RW008 Kel. Gebang Raya Kec. Periuk tangerang\r\n', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Belum Bekerja', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (47, '367108440470004', 'Ellia', 'Bogor', '0000-00-00', 'L', 'Griya Sangiangmas Jl.Melati Blok A4 No.09', 'Griya Sangiangmas Jl.Melati Blok A4 No.09', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Budha', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', NULL, 1, '2021-12-22 21:28:06', '2021-12-19 21:42:11');
INSERT INTO `warga` VALUES (48, '3671082710630002', 'Happy', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiangmas Jl.Melati Blok A4 No.09', 'Griya Sangiangmas Jl.Melati Blok A4 No.09', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Budha', 'SMA', 'Wiraswasta', 'Tinggal Tetap', NULL, 1, '2021-12-22 21:28:06', '2021-12-19 21:41:55');
INSERT INTO `warga` VALUES (49, '367108531170005', 'Verania Wijaya', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiangmas Jl.Melati Blok A4 No.09', 'Griya Sangiangmas Jl.Melati Blok A4 No.09', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Budha', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (50, '3671080810580003', 'I WAYAN DANA', 'Bali', '0000-00-00', 'L', 'JL.Bunga Raya III Blok C.4 No.3 ', 'JL.Bunga Raya III Blok C.4 No.3 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Tentara', 'Tinggal Tetap', NULL, 1, '2021-12-22 21:28:06', '2021-12-19 21:49:55');
INSERT INTO `warga` VALUES (51, '3671084611620002', 'Sukarni', 'Wonogiri', '0000-00-00', 'L', 'Jl.Bunga RAya III Blok C.4 No.3', 'Jl.Bunga RAya III Blok C.4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (52, '3671082509950004', 'I Made Sukresna', 'Tangerang', '0000-00-00', 'L', 'Jl.Bunga RAya III Blok C.4 No.3', 'Jl.Bunga RAya III Blok C.4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawwan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (53, '3671081507580001', 'Fauzan', 'Pekalongan', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D4 No.4 ', 'Griya Sangiang Mas Blok D4 No.4 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'S1', 'Karyawan Swasta', 'Meninggal', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (54, '3671085607650004', 'Sri Hombayuningsih Hombas', 'Bogor', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D4 No.4 ', 'Griya Sangiang Mas Blok D4 No.4 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (55, '3671085404890007', 'Annisa Rezky Fauzy', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D4 No.4 ', 'Griya Sangiang Mas Blok D4 No.4 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'D3', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (56, '3671082808900004', 'Faizal', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D4 No.4 ', 'Griya Sangiang Mas Blok D4 No.4 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (57, '3671080606960005', 'Fakhri mauludi', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D4 No.4 ', 'Griya Sangiang Mas Blok D4 No.4 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (58, '3671085311010005', 'Fairus', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D4 No.4 ', 'Griya Sangiang Mas Blok D4 No.4 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMP', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (59, '3603236906160001', 'Aisyah Ayudia Inara', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SD', 'Belum Bekerja', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (60, '3603231101180002', 'Muhammad AlKhalifi Dzikri Hadi', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'Tidak Sekolah', 'Belum Bekerja', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (61, '3671082004650002', 'Dory Suryanto Raisan', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D.4 No.2', 'Griya Sangiang Mas Blok D.4 No.2', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', '', 'SMA', 'Pensiunan', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (62, '3671086409660002', 'Tan Gut Beng', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D.4 No.2', 'Griya Sangiang Mas Blok D.4 No.2', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', '', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (63, '3671082105930003', 'Andreas', '3671082105930003', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D.4 No.2', 'Griya Sangiang Mas Blok D.4 No.2', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (64, '3671082708940001', 'Denis Trisaputra', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D.4 No.2', 'Griya Sangiang Mas Blok D.4 No.2', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', '', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (65, '3671082206980003', 'Jonathan', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok D.4 No.2', 'Griya Sangiang Mas Blok D.4 No.2', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', '', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (66, '3671084704620001', 'HJ.Dedeh Kurniasih', 'Bogor', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati Blok A.3 No.2-3 ', 'Griya Sangiang Mas Jl.Melati Blok A.3 No.2-3 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMP', 'Ibu Rumah Tangga', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (67, '3671083108890002', 'Deddy Gustiawan', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati Blok A.3 No.2-3 ', 'Griya Sangiang Mas Jl.Melati Blok A.3 No.2-3 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'S1', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (68, '3671081210820007', 'Tommy Nuryaman', 'Bengkulu', '0000-00-00', 'L', 'Griya Sangiang Mas Jl. Melati II Blok A4 N0.6', 'Griya Sangiang Mas Jl. Melati II Blok A4 N0.6', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '01', 'Islam', 'S1', 'Karyawan Swasta', 'Pindah Datang', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (69, '3671084202830003', 'Rovica Puspitasari ', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Jl. Melati II Blok A4 N0.6', 'Griya Sangiang Mas Jl. Melati II Blok A4 N0.6', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '01', 'Islam', 'S1', 'Ibu Rumah Tangga', 'Pindah Datang', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (70, '3671084704170006', 'Keinarra Nur Ar Razzaqu', 'Tangerang', '2022-05-15', 'L', 'Griya Sangiang Mas Jl. Melati II Blok A4 N0.6', 'Griya Sangiang Mas Jl. Melati II Blok A4 N0.6', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'Tidak Sekolah', 'Belum Bekerja', 'Pindah Datang', NULL, 1, '2022-05-15 20:26:29', '2022-05-15 20:26:29');
INSERT INTO `warga` VALUES (71, '3671080302560001', 'Dicky', 'Lampung', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II No.6', 'Griya Sangiang Mas Jl.Melati II No.6', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (72, '3671084710590001', 'Rohila', 'Tanjung Karang', '1959-10-07', 'L', 'Griya Sangiang Mas Jl.Melati II No.6', 'Griya Sangiang Mas Jl.Melati II No.6', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', NULL, 1, '2022-05-15 21:08:36', '2022-05-15 21:08:36');
INSERT INTO `warga` VALUES (73, '3671080111510001', 'Arifin Husein', 'Ambon', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II No.4', 'Griya Sangiang Mas Jl.Melati II No.4', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Pensiunan', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (74, '3671086309620002', 'Murniati', 'Bengkuu', '1962-09-23', 'P', 'Griya Sangiang Mas Jl.Melati II No.4', 'Griya Sangiang Mas Jl.Melati II No.4', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '01', '08', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', NULL, 1, '2022-05-15 21:05:03', '2022-05-15 21:05:03');
INSERT INTO `warga` VALUES (75, '3671081307770002', 'Rustandi', 'Sukanumi', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'D3', 'Karyawan Swasta', 'Pindah Keluar', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (76, '3671084810760004', 'Rosila Octavia', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'D3', 'Ibu Rumah Tangga', 'Pindah Keluar', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (77, '3671084707050003', 'Raissa Edra Zahra ', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMP', 'Pelajar', 'Pindah Keluar', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (78, '3671080705070003', 'Rassya Ramiro Fawwaz', 'Tangerang', '0000-00-00', '', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMP', 'Pelajar', 'Pindah Keluar', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (79, '3671682805630001', 'Karnadi', 'Tegal', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A3 No.9', 'Griya Sangiang Mas Jl.Melati II Blok A3 No.9', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (80, '3671084505650007', 'Sri Suryatun', 'Magelang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A3 No.9', 'Griya Sangiang Mas Jl.Melati II Blok A3 No.9', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Ibu Rumah Tangga', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (81, '3671082806020003', 'Muhammad Zuhdi Al Qosim Karnadi Yahya', 'Magelang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A3 No.9', 'Griya Sangiang Mas Jl.Melati II Blok A3 No.9', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (82, '3671080205780006', 'Rosid', 'Kuningan', '0000-00-00', 'L', 'Jl.Melati Raya Blok D4 No.1', 'Jl.Melati Raya Blok D4 No.1', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SD', 'Wirausaha', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (83, '3671085204840003', 'Cicih', 'Kuningan', '0000-00-00', '', 'Jl.Melati Raya Blok D4 No.1', 'Jl.Melati Raya Blok D4 No.1', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SD', 'Wirausaha', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (84, '3671082308030002', 'Rizki Wibowo', 'Kuningan', '0000-00-00', 'L', 'Jl.Melati Raya Blok D4 No.1', 'Jl.Melati Raya Blok D4 No.1', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMP', 'Karyawwan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (85, '3671084406120001', 'Risma Putri Amalia', 'Tangerang', '0000-00-00', 'L', 'Jl.Melati Raya Blok D.4 No.1', 'Jl.Melati Raya Blok D.4 No.1', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SD', 'Pelajar', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (86, '3671083112530002', 'Yusrizal Hasan', 'Payakumbuh', '0000-00-00', 'L', 'Griya Sangiang Mas Bok C.4 No.4', 'Griya Sangiang Mas Bok C.4 No.4', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Pensiunan', 'Meninggal', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (87, '3671085108580001', 'Indrawati', 'Payakumbuh', '0000-00-00', 'L', 'Griya Sangiang Mas Bok C.4 No.4', 'Griya Sangiang Mas Bok C.4 No.4', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Wirausaha', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (88, '1212002109970001', 'Lyon Heart Sirait', 'Parapat', '0000-00-00', 'L', 'Griya Sangiangmas Jl.Melati Blok A4 No.9', 'Griya Sangiangmas Jl.Melati Blok A4 No.10', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Budha', 'SMA', 'Karyawwan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (89, '3671082611120006', 'Harry Setyo Budhi', 'Pontianak', '0000-00-00', 'L', 'Jl.Bunga Raya III Blok C.4 No.3', 'Jl.Bunga Raya III Blok C.4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'D1', 'Karyawwan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (90, '3671086108560003', 'Ni Wayan Sufina', 'Tangerang', '0000-00-00', 'L', 'Jl.Bunga Raya III Blok C.4 No.3', 'Jl.Bunga Raya III Blok C.4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'D3', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (91, '3671082903130006', 'Julian Pasha Harfiandra', 'jakarta', '0000-00-00', '', 'Jl.Bunga Raya III Blok C.4 No.3', 'Jl.Bunga Raya III Blok C.4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SD', 'Pelajar', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (92, '3671062706150004', 'Ramadhian Farrel Harfiandra', 'Tangerang Selatan', '0000-00-00', 'L', 'Jl.Bunga Raya III Blok C.4 No.3', 'Jl.Bunga Raya III Blok C.4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'Tidak Sekolah', 'Belum Bekerja', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (93, '3671036906600000', 'Ratnawati', 'Rangkas Bitung', '0000-00-00', 'L', 'Griya Sangiang Mas Blok A4 No.8', 'Griya Sangiang Mas Blok A4 No.8', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'D3', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (94, '3671081405860005', 'Mukti Wahid', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Blok A4 No.8', 'Griya Sangiang Mas Blok A4 No.8', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (95, '3671082802880004', 'Abung Indrra Permana', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Blok C4 No.8', 'Griya Sangiang Mas Blok C4 No.8', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (96, '3671084708080001', 'Ika Nursyafitri', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Blok C4 No.3', 'Griya Sangiang Mas Blok C4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMP', 'Pelajar', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (97, '3671085207120002', 'Syadiah Andini', 'Serang', '0000-00-00', 'L', 'Griya Sangiang Mas Blok C4 No.3', 'Griya Sangiang Mas Blok C4 No.3', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SD', 'Pelajar', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (98, '3671072211860000', 'Suhardi', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok C4 No.4', 'Griya Sangiang Mas Blok C4 No.4', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (99, '3671084510900001', 'Ita Purnamasari', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok C4 No.4', 'Griya Sangiang Mas Blok C4 No.4', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (100, '3671080903180001', 'Kiano Azema Suhardi', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Blok C4 No.4', 'Griya Sangiang Mas Blok C4 No.4', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '9', 'Islam', 'SD', 'Pelajar', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (101, '3671082708610001', 'Amir Hamzah', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok A4 No.7', 'Griya Sangiang Mas Blok A4 No.7', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Karyawan Swasta', 'Kontrak', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (102, '3671085510670004', 'Supriati', 'jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok A4 No.7', 'Griya Sangiang Mas Blok A4 No.7', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SD', 'Ibu Rumah Tangga', 'Kontrak', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (103, '3671081707760004', 'Heru', 'Majenang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.7', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.7', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Wirausaha', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (104, '3671086809790002', 'Rumisih', 'Pati', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.7', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.7', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMP', 'Ibu Rumah Tangga', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (105, '3671080410010001', 'Rangga Herlambang', 'Pati', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.7', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.7', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SD', 'Wirausaha', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (106, '3671081012540002', 'Karyadi', 'Solo', '0000-00-00', 'L', 'Griya Sangiang Mas Blok A4 No.1', 'Griya Sangiang Mas Blok A4 No.1', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Wirausaha', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (107, '3671085909570001', 'Siti Bariah', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Blok A4 No.1', 'Griya Sangiang Mas Blok A4 No.1', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMP', 'Ibu Rumah Tangga', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (108, '3671085212800003', 'Debby Karolina', 'Jakarta', '0000-00-00', '', 'Griya Sangiang Mas Blok A4 No.1', 'Griya Sangiang Mas Blok A4 No.1', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'D3', 'Karyawan Swasta', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (109, '3671080704780001', 'Iwan Karyadi', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.1', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.1', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SMA', 'Wirausaha', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (110, '3671084801790007', 'Kholisoh', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Blok A4 No.1', 'Griya Sangiang Mas Blok A4 No.1', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'D3', 'Karyawan Swasta', 'Pindah Keluar', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (111, '3671082112100003', 'Rivaldy Fanany', 'Jakarta', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Bok A4 No.1 ', 'Griya Sangiang Mas Jl.Melati II Bok A4 No.1 ', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'SD', 'Pelajar', 'Tinggal Tetap', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (112, '3671087012170001', 'Ayra Nadheera', 'Tangerang', '0000-00-00', 'L', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.1', 'Griya Sangiang Mas Jl.Melati II Blok A4 No.1', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', '', '1', '8', 'Islam', 'Tidak Sekolah', 'Belum Bekerja', 'Pindah Keluar', NULL, 1, '2022-06-07 14:03:05', '2022-06-07 14:03:05');
INSERT INTO `warga` VALUES (136, '123456', 'test', 'test', '2022-06-10', 'L', 'test', 'test', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', NULL, '01', '02', 'Islam', 'Tidak Sekolah', 'test', 'Pindah Datang', NULL, 1, '2022-06-10 15:14:28', NULL);
INSERT INTO `warga` VALUES (137, '123456789', 'test', 'test', '2022-06-11', 'L', 'test', 'test', 'Periuk', 'Gebang Raya', 'Tangerang', 'Banten', 'Indonesia', NULL, '001', '002', 'Islam', 'Tidak Sekolah', 'test', 'Pindah Datang', NULL, 1, '2022-06-11 15:20:16', NULL);
INSERT INTO `warga` VALUES (138, '-', 'test', 'test', '2022-06-13', 'L', '-', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', 'Gebang Raya', 'Periuk', 'Kota Tangerang', 'Kota Tangerang', 'Banten', '', '01', '08', 'Islam', '-', '-', 'Tinggal Tetap', NULL, 1, '2022-06-13 00:57:24', '2022-06-13 00:57:24');
INSERT INTO `warga` VALUES (139, '-', 'test', 'test', '2022-06-13', 'L', '-', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', 'Gebang Raya', 'Periuk', 'Kota Tangerang', 'Kota Tangerang', 'Banten', '', '01', '08', 'Islam', '-', '-', 'Tinggal Tetap', NULL, 1, '2022-06-13 04:00:47', '2022-06-13 04:00:47');
INSERT INTO `warga` VALUES (140, '-', 'test', 'test', '2022-06-13', 'P', '-', 'Griya Sangiang Mas Jl.Melati II Blok A.4 No.5', 'Gebang Raya', 'Periuk', 'Kota Tangerang', 'Kota Tangerang', 'Banten', '', '01', '08', 'Islam', '-', '-', 'Tinggal Tetap', NULL, 1, '2022-06-13 04:01:45', '2022-06-13 04:01:45');

-- ----------------------------
-- Table structure for warga_has_kartu_keluarga
-- ----------------------------
DROP TABLE IF EXISTS `warga_has_kartu_keluarga`;
CREATE TABLE `warga_has_kartu_keluarga`  (
  `id_warga` int NOT NULL,
  `id_keluarga` int NOT NULL,
  UNIQUE INDEX `id_warga`(`id_warga` ASC) USING BTREE,
  INDEX `id_penduduk`(`id_warga` ASC, `id_keluarga` ASC) USING BTREE,
  INDEX `warga_has_kartu_keluarga_ibfk_2`(`id_keluarga` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warga_has_kartu_keluarga
-- ----------------------------
INSERT INTO `warga_has_kartu_keluarga` VALUES (9, 11);
INSERT INTO `warga_has_kartu_keluarga` VALUES (12, 11);
INSERT INTO `warga_has_kartu_keluarga` VALUES (15, 11);
INSERT INTO `warga_has_kartu_keluarga` VALUES (31, 11);
INSERT INTO `warga_has_kartu_keluarga` VALUES (7, 20);
INSERT INTO `warga_has_kartu_keluarga` VALUES (10, 20);
INSERT INTO `warga_has_kartu_keluarga` VALUES (13, 21);
INSERT INTO `warga_has_kartu_keluarga` VALUES (14, 22);
INSERT INTO `warga_has_kartu_keluarga` VALUES (16, 22);
INSERT INTO `warga_has_kartu_keluarga` VALUES (39, 35);
INSERT INTO `warga_has_kartu_keluarga` VALUES (40, 35);
INSERT INTO `warga_has_kartu_keluarga` VALUES (41, 35);
INSERT INTO `warga_has_kartu_keluarga` VALUES (42, 35);
INSERT INTO `warga_has_kartu_keluarga` VALUES (51, 36);
INSERT INTO `warga_has_kartu_keluarga` VALUES (52, 36);
INSERT INTO `warga_has_kartu_keluarga` VALUES (47, 37);
INSERT INTO `warga_has_kartu_keluarga` VALUES (49, 37);
INSERT INTO `warga_has_kartu_keluarga` VALUES (36, 38);
INSERT INTO `warga_has_kartu_keluarga` VALUES (59, 38);
INSERT INTO `warga_has_kartu_keluarga` VALUES (60, 38);
INSERT INTO `warga_has_kartu_keluarga` VALUES (136, 38);
INSERT INTO `warga_has_kartu_keluarga` VALUES (138, 38);
INSERT INTO `warga_has_kartu_keluarga` VALUES (139, 38);
INSERT INTO `warga_has_kartu_keluarga` VALUES (140, 38);
INSERT INTO `warga_has_kartu_keluarga` VALUES (102, 40);
INSERT INTO `warga_has_kartu_keluarga` VALUES (99, 41);
INSERT INTO `warga_has_kartu_keluarga` VALUES (100, 41);
INSERT INTO `warga_has_kartu_keluarga` VALUES (104, 42);
INSERT INTO `warga_has_kartu_keluarga` VALUES (105, 42);
INSERT INTO `warga_has_kartu_keluarga` VALUES (107, 43);
INSERT INTO `warga_has_kartu_keluarga` VALUES (108, 43);
INSERT INTO `warga_has_kartu_keluarga` VALUES (28, 44);
INSERT INTO `warga_has_kartu_keluarga` VALUES (29, 44);
INSERT INTO `warga_has_kartu_keluarga` VALUES (67, 45);
INSERT INTO `warga_has_kartu_keluarga` VALUES (69, 46);
INSERT INTO `warga_has_kartu_keluarga` VALUES (70, 46);
INSERT INTO `warga_has_kartu_keluarga` VALUES (62, 47);
INSERT INTO `warga_has_kartu_keluarga` VALUES (63, 47);
INSERT INTO `warga_has_kartu_keluarga` VALUES (64, 47);
INSERT INTO `warga_has_kartu_keluarga` VALUES (65, 47);
INSERT INTO `warga_has_kartu_keluarga` VALUES (72, 48);
INSERT INTO `warga_has_kartu_keluarga` VALUES (74, 49);

SET FOREIGN_KEY_CHECKS = 1;
