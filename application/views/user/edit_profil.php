<div class="row justify-content-center mb-3 pb-3">
    <div class="col-md-12 heading-section text-center ftco-animate fadeInUp ftco-animated">
        <h2 class="mb-2 mt-4">Profil</h2>
    </div>
</div>

<section class="ftco-section contact-section bg-light">
    <div class="container">
        <?= $this->session->flashdata('message');  ?>
        <div class="row d-flex mb-5 contact-info">
            <div class="w-100"></div>
            <div class="col-md-2 d-flex">
                <div class="info bg-white p-3">
                    <p style="text-align: center"><a href="<?= base_url('user/status_bayar1'); ?>" style="text-align: center"><i class="fas fa-money-bill-wave fa-4x"></i></a></p>
                    <p style="text-align: center"><span>Menunggu Pembayaran</span></p>
                </div>
            </div>
            <div class="col-md-2 d-flex">
                <div class="info bg-white p-3">
                    <p style="text-align: center"><a href="<?= base_url('user/status_bayar2'); ?>" style="text-align: center"><i class="fas fa-box-open fa-4x"></i></a></p>
                    <p style="text-align: center"><span>Barang Dikemas</span></p>
                </div>
            </div>
            <div class="col-md-2 d-flex">
                <div class="info bg-white p-3">
                    <p style="text-align: center"><a href="<?= base_url('user/status_bayar3'); ?>" style="text-align: center"><i class="fas fa-truck fa-4x"></i></a></p>
                    <p style="text-align: center"><span>Barang Dikirim</span></p>
                </div>
            </div>
            <div class="col-md-2 d-flex">
                <div class="info bg-white p-3">
                    <p style="text-align: center"><a href="<?= base_url('user/status_bayar4'); ?>" style="text-align: center"><i class="fas fa-handshake fa-4x"></i></a></p>
                    <p style="text-align: center"><span>Transaksi Selesai</span></p>
                </div>
            </div>
            <div class="col-md-2 d-flex">
                <div class="info bg-white p-3">
                    <p style="text-align: center"><a href="<?= base_url('user/status_bayar5'); ?>" style="text-align: center"><i class="fas fa-handshake-slash fa-4x"></i></a></p>
                    <p style="text-align: center"><span>Transaksi Dibatalkan</span></p>
                </div>
            </div>
            <div class="col-md-2 d-flex">
                <div class="info bg-white p-3">
                    <p style="text-align: center"><a href="<?= base_url('user/status_bayar6'); ?>" style="text-align: center"><i class="fas fa-undo fa-4x"></i></a></p>
                    <p style="text-align: center"><span>Barang Dikembalikan</span></p>
                </div>
            </div>
        </div>

        <div class="row block-9">

            <div class="col-md-6 order-md-last d-flex" style="margin-left: 30%">

                <form action="" method="post" class="bg-white p-5  contact-form ">
                    <h4 style="text-align: center" class="mb-3">Ubah Profile</h4>
                    <div class="form-group">
                        <label class="ml-2" for="nama">Nama</label>
                        <input type="text" class="form-control" name="nama" id="nama" placeholder="Nama" value="<?= $profil['nama']; ?>" required>
                    </div>
                    <div class="form-group">
                        <label class="ml-2" for="Email">Email</label>
                        <input type="email" class="form-control" placeholder="Email" readonly value="<?= $profil['email']; ?>">
                    </div>
                    <div class="form-group">
                        <label class="ml-2" for="nope">No Hp</label>
                        <input type="number" class="form-control" id="nope" name="nope" placeholder="No Hp" value="<?= $profil['no_hp']; ?>" required>
                    </div>
                    <div class="form-group">
                        <label class="ml-2" for="alamat">Alamat</label>
                        <textarea name="alamat" id="alamat" cols="30" rows="7" class="form-control" required placeholder="Alamat"><?= $profil['alamat']; ?></textarea>
                    </div>
                    <div class="form-group">
                        <button style="margin-left: 38%" type="submit" class="btn btn-primary btn-lg">Ubah</button>
                    </div>
                </form>

            </div>
        </div>
</section>