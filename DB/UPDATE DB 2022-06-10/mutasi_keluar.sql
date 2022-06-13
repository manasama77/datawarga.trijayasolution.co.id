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

 Date: 12/06/2022 12:04:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;
