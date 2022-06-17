<?php
include('../../config/koneksi.php');

// ambil dari url
$get_id_warga = $_GET['id_warga'];

// ambil dari database
$query = "SELECT * FROM warga WHERE id_warga = $get_id_warga";
# $query_kk = "SELECT * FROM warga JOIN kartu_keluarga ON warga.id_warga=kartu_keluarga.id_kepala_keluarga WHERE warga.id_warga=$get_id_warga";

$query_kk = "SELECT * FROM warga left JOIN warga_has_kartu_keluarga ON warga_has_kartu_keluarga.id_warga=warga.id_warga JOIN kartu_keluarga on kartu_keluarga.id_keluarga=warga_has_kartu_keluarga.id_keluarga WHERE warga.id_warga = $get_id_warga";

#$query_kk = "SELECT * FROM warga left JOIN warga_has_kartu_keluarga ON warga_has_kartu_keluarga.id_warga=warga.id_warga WHERE warga.id_warga=$get_id_warga";

$hasil    = mysqli_query($db, $query);
$hasil_kk = mysqli_query($db, $query_kk);

$data_warga = array();
$data_kk = array();

while ($row = mysqli_fetch_assoc($hasil)) {
  $data_warga[] = $row;
}

$row_count_kk = mysqli_num_rows($hasil_kk);

if ($row_count_kk == 0) {
  $query_kepala_keluarga = "SELECT * FROM warga LEFT JOIN kartu_keluarga on kartu_keluarga.id_kepala_keluarga = warga.id_warga WHERE warga.id_warga = $get_id_warga";
  $hasil_kepala_kk = mysqli_query($db, $query_kepala_keluarga);
  while ($row_kepala_kk = mysqli_fetch_assoc($hasil_kepala_kk)) {
    $data_kk[] = $row_kepala_kk;
  }
} else {
  while ($row = mysqli_fetch_assoc($hasil_kk)) {
    $data_kk[] = $row;
  }
}

/**
 * UPDATE BY: ADAM PM
 * DATE: 2022-03-06
 */

// LABEL START
$sql_rt   = "SELECT DISTINCT warga.rt_warga as rt FROM warga WHERE warga.rt_warga IS NOT NULL AND warga.rt_warga != ''";
$query_rt = mysqli_query($db, $sql_rt);

while ($row_rt = mysqli_fetch_assoc($query_rt)) {
  $arr_rt[] = $row_rt['rt'];
}

$sql_rw   = "SELECT DISTINCT warga.rw_warga as rw FROM warga WHERE warga.rw_warga IS NOT NULL AND warga.rw_warga != ''";
$query_rw = mysqli_query($db, $sql_rw);

while ($row_rw = mysqli_fetch_assoc($query_rw)) {
  $arr_rw[] = $row_rw['rw'];
}
// LABEL END
