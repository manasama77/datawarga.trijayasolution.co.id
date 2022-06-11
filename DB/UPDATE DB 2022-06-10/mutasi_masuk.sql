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

 Date: 10/06/2022 15:16:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mutasi_masuk
-- ----------------------------
DROP TABLE IF EXISTS `mutasi_masuk`;
CREATE TABLE `mutasi_masuk`  (
  `id_mutasi_masuk` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_warga` int NOT NULL,
  `id_keluarga` int UNSIGNED NULL DEFAULT NULL,
  `alamat_asal` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_pindah` date NOT NULL,
  `alasan_pindah` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_kepindahan` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_mutasi_masuk`) USING BTREE,
  INDEX `id_warga`(`id_warga` ASC) USING BTREE,
  INDEX `id_keluarga`(`id_keluarga` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
