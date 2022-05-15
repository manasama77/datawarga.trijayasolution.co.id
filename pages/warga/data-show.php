<?php
include('../../config/koneksi.php');

// ambil dari url
$get_id_warga = $_GET['id_warga'];

// ambil dari database
$query = "SELECT * FROM warga WHERE id_warga = $get_id_warga";
# $query_kk = "SELECT * FROM warga JOIN kartu_keluarga ON warga.id_warga=kartu_keluarga.id_kepala_keluarga WHERE warga.id_warga=$get_id_warga";

$hasil = mysqli_query($db, $query);

$data_warga = array();
$data_kk = array();

while ($row = mysqli_fetch_assoc($hasil)) {
  $data_warga[] = $row;
}

$sql_1   = "select * from kartu_keluarga where kartu_keluarga.id_kepala_keluarga = $get_id_warga";
$query_1 = mysqli_query($db, $sql_1);
$num_rows_1 = mysqli_num_rows($query_1);

if ($num_rows_1 > 0) {
  while ($row = mysqli_fetch_assoc($query_1)) {
    $data_kk[] = $row;
  }
} else {
  $sql_2   = "
    SELECT
    kartu_keluarga.* 
  FROM
    warga_has_kartu_keluarga 
    left join kartu_keluarga on kartu_keluarga.id_keluarga = warga_has_kartu_keluarga.id_keluarga
  WHERE
    id_warga = $get_id_warga
  ";

  $query_2    = mysqli_query($db, $sql_2);

  while ($row = mysqli_fetch_assoc($query_2)) {
    $data_kk[] = $row;
  }
}
