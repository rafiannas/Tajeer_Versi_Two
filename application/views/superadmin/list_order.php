    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Super Admin</h1><br>
        </div>


        <div class="container-fluid">
            <?= $this->session->flashdata('message');  ?>


            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">List Order</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th style="text-align: center">X</th>
                                    <th>No</th>
                                    <th>Tgl</th>
                                    <th>Pembeli</th>
                                    <th>Toko</th>
                                    <th>Banyak Produk</th>
                                    <th>Status Pembayaran</th>
                                    <th>Harga</th>
                                    <th>Status Barang</th>
                                    <th>Invoice</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1;
                                foreach ($order as $rp) : ?>
                                    <tr>
                                        <td> <a  class="btn btn-danger btn-circle" href="<?= base_url('superadmin/hapus_order'); ?>/<?= $rp['id']; ?>">
                                                <i class="fas fa-trash"></i>

                                            </a>
                                        </td>
                                        <td><?= $i; ?></td>
                                        <td><?= $rp['tgl']; ?></td>
                                        <td><?= $rp['nama']; ?></td>
                                        <td><?= $rp['nama_toko']; ?></td>

                                        <td><?= $rp['jmh_produk']; ?></td>

                                        <td> <a href="<?= base_url('superadmin/ubah_pembayaran') ?>/<?= $rp['id']; ?>" class="<?= $rp['warna_byr']; ?> btn-icon-split">
                                                <span class="icon text-white-50">
                                                    <i class="<?= $rp['simbol_byr']; ?>"></i>
                                                </span>
                                                <span class="text"><?= $rp['ket_bayar']; ?></span>

                                            </a>
                                        </td>

                                        <td><?= number_format($rp['harga_all']); ?></td>

                                        <td> <a href="<?= base_url('superadmin/status_barang'); ?>/<?= $rp['id']; ?>" class="<?= $rp['warna_brg']; ?> btn-icon-split">
                                                <span class="icon text-white-50">
                                                    <i class="<?= $rp['simbol_brg']; ?>"></i>
                                                </span>
                                                <span class="text"><?= $rp['ket_barang']; ?></span>

                                            </a>
                                        </td>

                                        <!-- <td><a class="btn btn-warning" href="<?= base_url('admin/edit_user') ?>"><i class="fas fa-pencil-alt"></i></a></td> -->
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
    </div>
    <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->