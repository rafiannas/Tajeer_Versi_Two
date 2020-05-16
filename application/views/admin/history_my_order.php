    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">My Order</h1><br>

        </div>
        <div class="container-fluid">
            <?= $this->session->flashdata('message');  ?>

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">DataTables My Order</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Tanggal</th>
                                    <th>Pembeli</th>
                                    <th>Jumlah Pesanan</th>
                                    <th>Status Pembayaran</th>
                                    <th>Harga</th>
                                    <th>Status Barang</th>
                                    <th>Cetak Invoice</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1;
                                foreach ($order as $rp) : ?>
                                    <tr>
                                        <td><?= $i; ?></td>
                                        <td><?= $rp['tgl']; ?></td>
                                        <td><?= $rp['nama']; ?></td>
                                        <td><?= $rp['jmh_produk']; ?></td>

                                        <td> <a href="#" class="<?= $rp['warna_byr']; ?> btn-icon-split">
                                                <span class="icon text-white-50">
                                                    <i class="<?= $rp['simbol_byr']; ?>"></i>
                                                </span>
                                                <span class="text"><?= $rp['ket_bayar']; ?></span>

                                            </a>
                                        </td>

                                        <td>Rp.<?= number_format($rp['harga_all']); ?></td>

                                        <td> <a href="<?= base_url('admin/s_status_barang'); ?>/<?= $rp['id']; ?>" class="<?= $rp['warna_brg']; ?> btn-icon-split">
                                                <span class="icon text-white-50">
                                                    <i class="<?= $rp['simbol_brg']; ?>"></i>
                                                </span>
                                                <span class="text"><?= $rp['ket_barang']; ?></span>

                                            </a>
                                        </td>
                                        <td> <a target="_blank" rel="nofollow" class="btn btn-primary btn-circle" href="<?= base_url('admin/cetak_invoice'); ?>/<?= $rp['id']; ?>">
                                                <i class="fas fa-print"></i>

                                            </a>
                                        </td>

                                    </tr>
                                <?php $i += 1;
                                endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>



        </div>


    </div> <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->