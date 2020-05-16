    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">List Kategori</h1><br>
        </div>


        <div class="container-fluid">
            <?= $this->session->flashdata('message');  ?>


            <button type="button" class="btn btn-primary mb-3" data-toggle="modal" data-target="#tambahKategori">
                Tambah Kategori
            </button>
            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Kategori</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Kategori</th>
                                    <th style="text-align: center" colspan="2">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1;
                                foreach ($kategori as $rp) : ?>
                                    <tr>

                                        <td><?= $i; ?></td>
                                        <td><?= $rp['kategori']; ?></td>


                                        <td><a class="btn btn-warning" href="<?= base_url('superadmin/edit_kategori') ?>/<?= $rp['id']; ?>"><i class="fas fa-pencil-alt"></i></a></td>
                                        <td><a class="btn btn-danger" href="<?= base_url('superadmin/hapus_kategori') ?>/<?= $rp['id']; ?>"><i class="fas fa-trash-alt"></i></a></td>

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

    <!-- Modal Tambah Produk-->
    <div class="modal fade" id="tambahKategori" tabindex="-1" role="dialog" aria-labelledby="tambahKategoriLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="tambahKategoriLabel">Tambah Produk</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="" method="post">
                        <!-- Nama Toko -->
                        <div class="form-group">
                            <input type="text" class="form-control" id="name" Name="name" placeholder="Nama Kategori" required>
                        </div>



                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Tambah Kategori</button>
                </div>
            </div>
            </form>
        </div>
    </div>