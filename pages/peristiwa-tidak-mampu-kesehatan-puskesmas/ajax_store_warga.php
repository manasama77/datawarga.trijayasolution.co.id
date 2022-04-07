<?php
include('../../config/koneksi.php');
require '../constant.php';

$tanggal_pembuatan = $_POST['tanggal_pembuatan'];
$warga_id          = $_POST['warga_id_hidden'];
$no_rt_ttd         = $_POST['no_rt_ttd'];
$nama_rt_ttd       = $_POST['nama_rt_ttd'];
$no_rw_ttd         = $_POST['no_rw_ttd'];
$nama_rw_ttd       = $_POST['nama_rw_ttd'];
$nama_tksk_ttd     = $_POST['nama_tksk_ttd'];
$jabatan_ttd       = $_POST['jabatan_ttd'];
$nama_ttd          = $_POST['nama_ttd'];
$nomor_induk_ttd   = $_POST['nomor_induk_ttd'];
$no_register_camat = $_POST['no_register_camat'];
$nama_camat        = $_POST['nama_camat'];
$nip_camat         = $_POST['nip_camat'];

$sql   = "SELECT `tidak_mampu_kesehatan_puskesmas`.`sequence` FROM `tidak_mampu_kesehatan_puskesmas` ORDER BY `tidak_mampu_kesehatan_puskesmas`.`sequence` DESC";
$query = mysqli_query($db, $sql);

$sequence = 1;
$no_urut = "001";
if (mysqli_num_rows($query) > 0) {
    $row      = mysqli_fetch_assoc($query);
    $sequence = $row['sequence'] + 1;
    if ($sequence == 100) {
        $no_urut = 100;
    } elseif ($sequence >= 10 && $sequence < 100) {
        $no_urut = '0' . $sequence;
    } elseif ($sequence < 10) {
        $no_urut = '00' . $sequence;
    }
}

$nomor_surat = '140/' . $no_urut . '- ' . KODE_DESA_SURAT . '/' . date('Y');

$sql = "
INSERT INTO `tidak_mampu_kesehatan_puskesmas` 
(
    warga_id, 
    tanggal_pembuatan, 
    nomor_surat, 
    sequence, 
    no_rt_ttd, 
    nama_rt_ttd, 
    no_rw_ttd, 
    nama_rw_ttd, 
    nama_tksk_ttd, 
    jabatan_ttd, 
    nama_ttd, 
    nomor_induk_ttd,
    no_register_camat,
    nama_camat,
    nip_camat
)
VALUES
(
    '$warga_id', 
    '$tanggal_pembuatan', 
    '$nomor_surat', 
    $sequence, 
    '$no_rt_ttd', 
    '$nama_rt_ttd', 
    '$no_rw_ttd', 
    '$nama_rw_ttd', 
    '$nama_tksk_ttd', 
    '$jabatan_ttd', 
    '$nama_ttd', 
    '$nomor_induk_ttd',
    '$no_register_camat',
    '$nama_camat',
    '$nip_camat'
)
";

$query = mysqli_query($db, $sql);

$code = 500;
$msg = "Proses Simpan Data Gagal";
$id = null;
if ($query) {
    $code = 200;
    $msg  = "Proses Simpan Data Berhasil, Proses Print Dapat Dilakukan";
    $id   = mysqli_insert_id($db);
}

echo json_encode([
    'code' => $code,
    'msg'  => $msg,
    'id'   => $id,
]);
