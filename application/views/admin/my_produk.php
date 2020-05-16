    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">My Produk</h1><br>
        </div>



        <div class="container-fluid">
            <?= $this->session->flashdata('message');  ?>

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Kategori <?= $kat['kategori']; ?> </h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Image</th>
                                    <th>Nama Produk</th>
                                    <th>Stok</th>
                                    <th>Harga</th>
                                    <th>Deskripsi</th>
                                    <th colspan="2" style="text-align: center">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1;
                                foreach ($myProduk as $rp) : ?>
                                    <?php $kalimat = $rp['deskripsi'];
                                    $potong = 50;
                                    $cetak = substr($kalimat, 0, $potong);

                                    ?>
                                    <tr>

                                        <td><?= $i; ?></td>
                                        <td><img style="width:100;height:100px;border:0;" src="<?= base_url('assets/image/produk/') . $rp['image']; ?>"></td>

                                        <td><?= $rp['nama_produk']; ?></td>
                                        <td><?= $rp['stok']; ?></td>
                                        <td><?= $rp['harga']; ?></td>
                                        <td><?= $cetak; ?></td>



                                        <td><a class="btn btn-warning" href="<?= base_url('admin/s_edit'); ?>/<?= $rp['id_produk']; ?>"><i class="fas fa-pencil-alt"></i></a></td>

                                        <td><a class="btn btn-danger" href="<?= base_url('admin/hapus_produk') ?>/<?= $rp['id_produk']; ?>"><i class="fas fa-trash"></i></a></td>

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