<?php include __DIR__ . '../../_partials/top.php' ?>

<?php
include('../../config/koneksi.php');

$sql = "
SELECT
    sk_izin_keluarga.id,
    sk_izin_keluarga.warga_id,
    sk_izin_keluarga.jenis_relasi,
    sk_izin_keluarga.keluarga_id,
    sk_izin_keluarga.keperluan,
    sk_izin_keluarga.tanggal_pelaporan,
    sk_izin_keluarga.nama_kepala_desa,
    sk_izin_keluarga.nrp,
    sk_izin_keluarga.nomor_surat,
    warga.nama_warga,
    warga.nik_warga,
    warga.tempat_lahir_warga,
    warga.tanggal_lahir_warga,
    warga.jenis_kelamin_warga,
    warga.negara_warga,
    warga.status_perkawinan,
    warga.agama_warga,
    warga.pekerjaan_warga,
    warga.alamat_ktp_warga,

    keluarga.nama_warga as nama_keluarga,
    keluarga.nik_warga as nik_keluarga,
    keluarga.tempat_lahir_warga as tempat_lahir_keluarga,
    keluarga.tanggal_lahir_warga as tanggal_lahir_keluarga,
    keluarga.jenis_kelamin_warga as jenis_kelamin_keluarga,
    keluarga.negara_warga as negara_keluarga,
    keluarga.status_perkawinan as status_perkawinan_keluarga,
    keluarga.agama_warga as agama_keluarga,
    keluarga.pekerjaan_warga as pekerjaan_keluarga,
    keluarga.alamat_ktp_warga as alamat_ktp_keluarga
FROM sk_izin_keluarga 
LEFT JOIN warga ON warga.id_warga = sk_izin_keluarga.warga_id
LEFT JOIN warga as keluarga ON keluarga.id_warga = sk_izin_keluarga.keluarga_id
WHERE 
    sk_izin_keluarga.id = " . $_GET['id'] . "
";

$query = mysqli_query($db, $sql);
$row = mysqli_fetch_assoc($query);

if (mysqli_num_rows($query) == 0) {
    die("ID tidak ditemukan");
}
?>

<div class="row page-header">
    <div class="col-sm-12 col-md-6">
        <h4>
            Edit Data Surat Keterangan Izin Keluarga
        </h4>
    </div>
    <div class="col-sm-12 col-md-6 text-right">
        <a href="index.php" class="btn btn-info">
            <i class="fa fa-backward"></i> Kembali
        </a>
    </div>
</div>
<div class="row">
    <form id="form">
        <div class="col-sm-12 col-md-6 col-md-offset-3">
            <div class="form-group">
                <label for="tanggal_pelaporan">Tanggal Pelaporan <span class="text-danger">*</span></label>
                <input type="date" class="form-control" id="tanggal_pelaporan" name="tanggal_pelaporan" value="<?= $row['tanggal_pelaporan']; ?>" placeholder="Tanggal Pelaporan" required />
            </div>
            <div class="form-group">
                <label for="warga_id">Warga <span class="text-danger">*</span></label>
                <select class="form-control select2" id="warga_id" name="warga_id" required>
                    <option value=""></option>
                    <option value="<?= $row['warga_id']; ?>" selected="selected"><?= $row['nama_warga']; ?></option>
                </select>
            </div>
            <div class="form-group">
                <label for="jenis_relasi">Izin Untuk <span class="text-danger">*</span></label>
                <select class="form-control" id="jenis_relasi" name="jenis_relasi" required>
                    <option value=""></option>
                    <option <?= ($row['jenis_relasi'] == "Orang Tua") ? "selected" : ""; ?> value="Orang Tua">Orang Tua</option>
                    <option <?= ($row['jenis_relasi'] == "Anak") ? "selected" : ""; ?> value="Anak">Anak</option>
                    <option <?= ($row['jenis_relasi'] == "Saudara") ? "selected" : ""; ?> value="Saudara">Saudara</option>
                    <option <?= ($row['jenis_relasi'] == "Suami") ? "selected" : ""; ?> value="Suami">Suami</option>
                    <option <?= ($row['jenis_relasi'] == "Istri") ? "selected" : ""; ?> value="Istri">Istri</option>
                </select>
            </div>
            <div class="form-group">
                <label for="keluarga_id">Keluarga <span class="text-danger">*</span></label>
                <select class="form-control select2" id="keluarga_id" name="keluarga_id" data-placeholder="Cari Keluarga" required>
                    <option value=""></option>
                    <option value="<?= $row['keluarga_id']; ?>" selected="selected"><?= $row['nama_keluarga']; ?></option>
                </select>
            </div>
            <div class=" form-group">
                <label for="keperluan">Keperluan <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="keperluan" name="keperluan" placeholder="Keperluan" value="<?= $row['keperluan']; ?>" required />
            </div>
            <hr />
            <div class="form-group">
                <label for="nama_kepala_desa">Nama Kepala Desa <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="nama_kepala_desa" name="nama_kepala_desa" placeholder="Nama Kepala Desa" value="<?= $row['nama_kepala_desa']; ?>" required />
            </div>
            <div class="form-group">
                <label for="nrp">NRP <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="nrp" name="nrp" placeholder="NRP" value="<?= $row['nrp']; ?>" required />
            </div>
            <div class="form-group">
                <hr />
                <input type="hidden" name="id_edit" value="<?= $row['id']; ?>" />
                <button type="submit" class="btn btn-success btn-block" id="btn_simpan">Simpan</button>
                <button type="button" class="btn btn-warning btn-block" id="btn_print" disabled>Print</button>
                <a href="index.php" class="btn btn-info btn-block">Kembali</a>
            </div>
        </div>
    </form>
</div>


<?php include __DIR__ . '../../_partials/bottom.php' ?>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="edit_vitamin.js"></script>