<?php
session_start();
if (!isset($_SESSION['user'])) {
  // jika user belum login
  header('Location: ../login');
  exit();
}
require('../../config/koneksi.php');
require('../constant.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <meta name="description" content="Aplikasi Pendataan Warga">
  <meta name="author" content="Murti Ayu Wijayanti">
  <link rel="icon" href="../../../favicon.ico">

  <title>Aplikasi Penduduk Desa Malingping Selatan - Banten</title>

  <!-- Bootstrap core CSS -->
  <link href="../../assets/css/bootstrap.min.css" rel="stylesheet">

  <!-- Font-Awesome CSS -->
  <link href="../../assets/font-awesome/css/font-awesome.css" rel="stylesheet">
  <link href="../../assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">

  <!-- DataTable CSS -->
  <link href="../../assets/css/dataTables.bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../../assets/css/dashboard.css" rel="stylesheet">

  <!-- Custom styles for this sb-admin -->
  <!-- <link href="../../assets/sb-admin/css/sb-admin-2.min.css" rel="stylesheet"> -->

  <!-- Date Range Picker style -->
  <link href="../../assets/css/daterangepicker.css" rel="stylesheet">

  <!-- Lightbox style -->
  <link href="../../assets/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

  <!-- Bootstrap Select style-->
  <!-- <link rel="stylesheet" href="../../assets/css/bootstrap-select.min.css"> -->
  <link rel="stylesheet" href="../../assets/css/bootstrap-select.min.css">

</head>

<body>

  <?php include(dirname(__FILE__) . '/navbar.php') ?>

  <div class="container-fluid">
    <div class="row">
      <div class="sidebar col-sm-3 col-md-2 sidebar">
        <?php include(dirname(__FILE__) . '/sidebar.php') ?>
      </div>
      <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2" style="margin-top: -13px">
        <marquee width="100%" direction="left" loop="-1" class="bg-info" style="color: #428BCA; font-size: 18px;">
          Aplikasi Kependudukan Malingping Selatan Banten - <small>Kp. Lebak Lame RT. 02 RW 02 Desa Malingping Selatan Kecamatan Malingping Kab. Lebak Prov. Banten</small>
        </marquee>
      </div>

      <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">