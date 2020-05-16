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
                <h2 class="mb-5" style="text-align: center">Menunggu Pembayaran</h2>

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

                                <!-- <td><a href="#form" data-toggle="modal" class="btn btn-primary btn-circle btn-sm">
                                        <i class="fas fa-info-circle"></i>
                                    </a></td> -->


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

<!-- <script type="text/javascript">
    ambilData();

    function ambilData() {
        $.ajax({
            type: 'POST',
            url: '<?= base_url() . "index.php/user/ambilData" ?>',
            dataType: 'json',
            success: function(data) {
                var baris = '';
                for (var i = 0; i < data.length; i++) {
                    baris += '<tr>' +
                        '<td>' + data[i].id + '<td>' +
                        '<td>' + data[i].nama_toko + '<td>' +
                        '<td>' + data[i].tgl + '<td>' +
                        '<td>' + data[i].jmh_produk + '<td>' +
                        '<td>' + data[i].total_harga + '<td>' +
                        '</tr>';
                }
                $('#target').html(baris);

            }
        });
    }
</script> -->



<!-- Modal -->
<div class="modal fade-modal-xl" id="form" tabindex="-1" role="dialog" aria-labelledby="formTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered-modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="formTitle">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
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

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>