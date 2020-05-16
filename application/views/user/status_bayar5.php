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
                <div class="cart-list">
                    <table class="table">
                        <thead class="thead-primary">
                            <tr class="text-center">
                                <th>Toko</th>
                                <th>Tgl</th>
                                <th>Jumlah Produk</th>
                                <th>Total harga</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="text-center">
                                <td class="product-remove"><a href="#"><span class="ion-ios-close"></span></a></td>

                                <td class="image-prod">
                                    <div class="img" style="background-image:url(images/product-1.jpg);"></div>
                                </td>

                                <td class="product-name">
                                    <h3>Bell Pepper</h3>
                                    <p>Far far away, behind the word mountains, far from the countries</p>
                                </td>

                                <td class="price">$4.90</td>

                            </tr><!-- END TR-->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>