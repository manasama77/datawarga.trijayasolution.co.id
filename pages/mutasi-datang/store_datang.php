<?php
session_start();
if (!isset($_SESSION['user'])) {
	// jika user belum login
	header('Location: ../login');
	exit();
}

include('../../config/koneksi.php');

// ambil data dari form
$nomor_keluarga            = htmlspecialchars($_POST['nomor_keluarga']);
$nik_kepala_keluarga       = htmlspecialchars($_POST['nik_kepala_keluarga']);
$nama_kepala_keluarga      = htmlspecialchars($_POST['nama_kepala_keluarga']);
$tempat_lahir_warga        = htmlspecialchars($_POST['tempat_lahir_warga']);
$tanggal_lahir_warga       = htmlspecialchars($_POST['tanggal_lahir_warga']);
$jenis_kelamin_warga       = htmlspecialchars($_POST['jk']);
$agama_warga               = htmlspecialchars($_POST['agama_warga']);
$pendidikan_terakhir_warga = htmlspecialchars($_POST['pendidikan_terakhir_warga']);
$pekerjaan_warga           = htmlspecialchars($_POST['pekerjaan_warga']);

$rt_warga  = htmlspecialchars($_POST['rt_warga']);
$rw_warga  = htmlspecialchars($_POST['rw_warga']);
$kelurahan = htmlspecialchars($_POST['kelurahan']);
$kecamatan = htmlspecialchars($_POST['kecamatan']);
$kokab     = htmlspecialchars($_POST['kokab']);
$provinsi  = htmlspecialchars($_POST['provinsi']);
$negara    = htmlspecialchars($_POST['negara']);

$alamat_asal      = htmlspecialchars($_POST['alamat_asal']);
$alamat_tujuan    = htmlspecialchars($_POST['alamat_tujuan']);
$tanggal_pindah   = htmlspecialchars($_POST['tanggal_pindah']);
$alasan_pindah    = htmlspecialchars($_POST['alasan_pindah']);
$jenis_kepindahan = htmlspecialchars($_POST['jenis_kepindahan']);
$nik_sementara    = uniqid();
$id_user          = $_SESSION['user']['id_user'];
$status_warga     = 'Pindah Datang';

$sql_cek_kk = "SELECT nomor_keluarga from kartu_keluarga where nomor_keluarga = $nomor_keluarga";
$row_cek_kk = mysqli_num_rows(mysqli_query($db, $sql_cek_kk));
if ($row_cek_kk > 0) {
	echo "<script>window.alert('Tambah warga gagal!, No. KK " . $nomor_keluarga . " sudah digunakan !'); history.back()</script>";
	exit;
} else {
	$sql_warga = "
		INSERT INTO warga 
		(
			nik_warga, nama_warga, tempat_lahir_warga, tanggal_lahir_warga, jenis_kelamin_warga, alamat_ktp_warga, alamat_warga, desa_kelurahan_warga, kecamatan_warga, kabupaten_kota_warga, provinsi_warga, negara_warga, dusun_warga, rt_warga, rw_warga, agama_warga, pendidikan_terakhir_warga, pekerjaan_warga, status_warga, id_user, 
			created_at, updated_at
		) 
		VALUES 
		(
			'" . $nik_kepala_keluarga . "', '" . $nama_kepala_keluarga . "', '" . $tempat_lahir_warga . "', '" . $tanggal_lahir_warga . "', '" . $jenis_kelamin_warga . "', '" . $alamat_asal . "', '" . $alamat_tujuan . "', '" . $kelurahan . "', '" . $kecamatan . "', '" . $kokab . "', '" . $provinsi . "', '" . $negara . "', null, '" . $rt_warga . "', '" . $rw_warga . "', '" . $agama_warga . "', '" . $pendidikan_terakhir_warga . "', '" . $pekerjaan_warga . "', '" . $status_warga . "',  '" . $id_user . "', CURRENT_TIMESTAMP,  null
		)
	";
	$query_warga = mysqli_query($db, $sql_warga);
	$id_warga = mysqli_insert_id($db);

	$sql_kk = "INSERT INTO kartu_keluarga 
	(nomor_keluarga, id_kepala_keluarga, alamat_keluarga, desa_kelurahan_keluarga, kecamatan_keluarga, kabupaten_kota_keluarga, provinsi_keluarga, negara_keluarga, rt_keluarga, rw_keluarga, kode_pos_keluarga, id_user, created_at, updated_at) 
	VALUES ('" . $nomor_keluarga . "', '" . $id_warga . "', '" . $alamat_asal . "', '" . $kelurahan . "', '" . $kecamatan . "', '" . $kokab . "', '" . $provinsi . "', '" . $negara . "', '" . $rt_warga . "', '" . $rw_warga . "', '-', '" . $id_user . "', CURRENT_TIMESTAMP, null);";
	$query_kk = mysqli_query($db, $sql_kk);
	$id_keluarga = mysqli_insert_id($db);

	$sql_mutasi = "INSERT INTO mutasi_masuk 
	(id_warga, id_keluarga, dusun_masuk, rt_masuk, rw_masuk, alamat_asal, tanggal_pindah, alasan_pindah, jenis_kepindahan) 
	VALUES
	('" . $id_warga . "','" . $id_keluarga . "', null, '" . $rt_warga . "','" . $rw_warga . "','" . $alamat_asal . "','" . $tanggal_pindah . "','" . $alasan_pindah . "','" . $jenis_kepindahan . "');";
	$query_mutasi = mysqli_query($db, $sql_mutasi);

	//cek keberhasilan pendambahan data
	if ($query_mutasi) {
		header("Location: index.php");
		exit();

		// echo "<script>window.alert('Tambah mutasi berhasil'); window.location.href='../mutasi-datang/index.php'</script>";
		# echo "<script>window.alert('Tambah mutasi berhasil');</script>";
	} else {
		echo "<script>window.alert('Tambah mutasi gagal!'); history.back()</script>";
		#  echo "<script>window.alert('Tambah mutasi gagal!');</script>";
		#echo mysqli_error($db);
	}
}
