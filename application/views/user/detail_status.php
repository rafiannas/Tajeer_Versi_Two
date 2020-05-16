<div class="row justify-content-center mb-3 pb-3">
    <div class="col-md-12 heading-section text-center ftco-animate fadeInUp ftco-animated">
        <h2 class="mb-2 mt-4">Profil</h2>
    </div>
</div>


<section class="ftco-section contact-section bg-light">
    <div class="container">
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

    </div>
</section>


<section class="ftco-section ftco-cart">
    <div class="container">
        <div class="row">
            <div class="col-md-12 ftco-animate">
                <h2 class="mb-5" style="text-align: center"><?= $title; ?></h2>

                <table class="table">
                    <thead class="thead-primary">
                        <tr>
                            <th>Detail</th>
                            <th>Toko</th>
                            <th>Tgl</th>
                            <th>Jumlah Produk</th>
                            <th>Total harga</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php foreach ($status1 as $st) : ?>
                            <tr>
                                <td><a href="<?= base_url('user/s_detail'); ?>/<?= $st['id']; ?>" class="btn btn-primary btn-circle btn-sm">
                                        <i class="fas fa-info-circle"></i>
                                    </a></td>

                                <td class="price"><?= $st['nama_toko']; ?></td>

                                <td class="price"><?= $st['tgl']; ?></td>


                                <td class="price"><?= $st['jmh_produk']; ?></td>


                                <td class="price"><strong>Rp. <?= number_format($st['harga_all']); ?></strong></td>


                            </tr><!-- END TR-->
                        <?php endforeach; ?>


                    </tbody>
                </table>


            </div>
        </div>
</section>


<!-- DETAIL -->



<section class="ftco-section ftco-cart">
    <div class="container">
        <div class="row">
            <div class="col-md-12 ftco-animate">
                <h2 class="mb-5" style="text-align: center">Detail Pesanan</h2>
                <section class="ftco-section contact-section bg-light">
                    <div class="container">
                        <div class="row d-flex contact-info">
                            <div class="w-100"></div>
                            <div class="col-md-3 d-flex">
                                <div class="info bg-white p-4">
                                    <p><span>Alamat :</span> <?= $ker['alamat_penerima']; ?></p>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex">
                                <div class="info bg-white p-4">
                                    <p><span>Penerima :</span> <?= $ker['penerima']; ?></p>
                                    <p><span>No Hp :</span> <?= $ker['no_hp']; ?></p>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex">
                                <div class="info bg-white p-4">
                                    <p><span>Jenis Pengiriman :</span><?= $ker['jenis']; ?> </p>
                                    <p><span>Total Berat :</span><?= $ker['total_berat'] / 1000; ?> Kg</p>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex">
                                <div class="info bg-white p-4">
                                    <p><span>Catatan untuk penjual :</span> <?= $ker['catatan']; ?></p>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row d-flex contact-info">
                            <div class="w-100"></div>
                            <div class="col-md-12 d-flex">
                                <div class="info bg-white p-4">
                                    <p><span>Pembayaran :</p>
                                    <p>Please make your payment to Bank Mandiri
                                        An. YPI Al-Azhar
                                    </p>
                                    <p>Account no. 1260099013293
                                    </p>
                                    <p>And send your confirmation to
                                    </p>
                                    <p> Whatsapp: <a style="color: blue" href="https://api.whatsapp.com/send?phone=628881337312">08881337312</a>
                                    </p>
                                    <p>Or line id : @tajeer_uai</p>
                                </div>
                                <div class="info bg-white p-4">
                                    <p><span>Pesanan dikirimkan melalui :</p>
                                    <p><strong><?= $ker['resi']; ?></strong>
                                   </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <h3 class="mb-5" style="text-align: center"><?= $ker['nama_toko']; ?></h3>

                <table class="table">
                    <thead class="thead-primary">
                        <tr>
                            <th>Gambar</th>
                            <th>Barang</th>
                            <th>Jumlah</th>
                            <th>Harga</th>
                            <th>Total harga</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php foreach ($keranjang1 as $st) : ?>
                            <tr>
                                <td><img style="width:100;height:100px;border:0;" src="<?= base_url('assets/image/produk'); ?>/<?= $st['image'] ?>"></td>
                                <td class="price"><?= $st['nama_produk']; ?></td>

                                <td class="price"><?= $st['jumlah']; ?></td>


                                <td class="price">Rp. <?= number_format($st['harga']); ?></td>


                                <td class="price"><strong>Rp. <?= number_format($st['total_harga_per_produk']); ?></strong></td>


                            </tr><!-- END TR-->
                        <?php endforeach; ?>


                    </tbody>
                </table>


            </div>

            <div class="col-mf-6">
                <table>
                    <tr>
                        <td>Total Harga Belanja </td>
                        <td>Rp. <?= number_format($ker['total_harga']); ?></td>
                    </tr>
                    <tr>
                        <td>Ongkos Kirim </td>
                        <td>Rp. <?= number_format($ker['ongkir']); ?></td>
                    </tr>
                    <tr>
                        <td>Total </td>
                        <td><strong>Rp. <?= number_format($ker['harga_all']); ?></strong></td>
                    </tr>
                </table>
            </div>
            <?php if ($cek == 1) : ?>
                <div class="col-md-6">
                    <a class="btn btn-primary ml-5 mt-4" type="submit" href="<?= base_url('user/diterima'); ?>/<?= $ker['id']; ?>">Barang Diterima</a>
                </div>
            <?php endif; ?>
        </div>
</section>