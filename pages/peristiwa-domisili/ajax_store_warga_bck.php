<?php
include('../../config/koneksi.php');
require '../constant.php';

$tanggal_pembuatan = $_POST['tanggal_pembuatan'];
$warga_id          = $_POST['warga_id_hidden'];
$lama_domisili     = $_POST['lama_domisili'];
$alamat_domisili   = trim($_POST['alamat_domisili']);
$nama_ttd          = $_POST['nama_ttd'];
$jabatan_ttd       = $_POST['jabatan_ttd'];
$nomor_induk_ttd   = $_POST['nomor_induk_ttd'];

$tgl_obj = new DateTime('now');
$tgl_obj->modify('+' . $lama_domisili . ' year');
$sampai = $tgl_obj->format('Y-m-d');

$sql   = "SELECT `domisili`.`sequence` FROM `domisili` ORDER BY sequence DESC";
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
INSERT INTO `domisili` 
(warga_id, tanggal_pembuatan, lama_domisili, alamat_domisili, sampai, nomor_surat, sequence, nama_ttd, jabatan_ttd, nomor_induk_ttd)
VALUES
($warga_id, '$tanggal_pembuatan', '$lama_domisili', '$alamat_domisili', '$sampai', '$nomor_surat', $sequence, '$nama_ttd', '$jabatan_ttd', '$nomor_induk_ttd')
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
