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
                    <!--<p style="text-align: center"><span><?= $one['jmh']; ?></span></p>-->
                </div>
            </div>
            <div class="col-md-2 d-flex">
                <div class="info bg-white p-3">
                    <p style="text-align: center"><a href="<?= base_url('user/status_bayar2'); ?>" style="text-align: center"><i class="fas fa-box-open fa-4x"></i></a></p>
                    <p style="text-align: center"><span>Barang Dikemas</span></p>
                      <!--<p style="text-align: center"><span><?= $two['j']; ?></span></p>-->
                </div>
            </div>
            <div class="col-md-2 d-flex">
                <div class="info bg-white p-3">
                    <p style="text-align: center"><a href="<?= base_url('user/status_bayar3'); ?>" style="text-align: center"><i class="fas fa-truck fa-4x"></i></a></p>
                    <p style="text-align: center"><span>Barang Dikirim</span></p>
                       <!--<p style="text-align: center"><span><?= $three["j"]; ?></span></p>-->
                </div>
            </div>
            <div class="col-md-2 d-flex">
                <div class="info bg-white p-3">
                    <p style="text-align: center"><a href="<?= base_url('user/status_bayar4'); ?>" style="text-align: center"><i class="fas fa-handshake fa-4x"></i></a></p>
                    <p style="text-align: center"><span>Transaksi Selesai</span></p>
                       <!--<p style="text-align: center"><span><?= $four["j"]; ?></span></p>-->
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

        <div class="row block-12">
            <div class="col-md-12 order-md-last d-flex">

                <div class="card ml-5" style="width: 18rem;">
                    <div class="card-header">
                        <h4>Nama</h4>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <h5><?= $profil['nama']; ?></h5>
                        </li>
                        <li class="list-group-item">
                            <h5><?= $profil['email']; ?></h5>
                        </li>

                    </ul>
                </div>

                <div class="card ml-5" style="width: 18rem;">
                    <div class="card-header">
                        <h4>No Hp</h4>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <h5><?= $profil['no_hp']; ?></h5>
                        </li>

                    </ul>
                </div>

                <div class="card ml-5" style="width: 22rem;">
                    <div class="card-header">
                        <h4>Alamat</h4>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <h5><?= $profil['alamat']; ?></h5>
                        </li>

                    </ul>
                </div>

                <!-- <form class="bg-white p-5 contact-form">
                 
                    <div class="form-group">
                        <a href="#" class="btn btn-primary ml-5">Ubah Profil</a>

                        <a href="#" class="btn btn-secondary ml-5">Ubah Password</a>
                    </div>
                </form> -->

            </div>


            <!-- <div class="col-md-6 d-flex">
                <div id="map" class="bg-white"></div>
            </div> -->
        </div>
        <div class="container" style="text-align: center">

            <a href="<?= base_url('user/ubah_profil'); ?>" class="btn btn-primary ml-5 mt-5 btn-lg">Ubah Profil</a>

            <a href="<?= base_url('user/ganti_pass'); ?>" class="btn btn-secondary ml-5 mt-5 btn-lg">Ubah Password</a>
        </div>
    </div>
</section>