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

 Date: 08/04/2022 21:28:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
