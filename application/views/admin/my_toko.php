    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">My Toko</h1><br>

        </div>

        <!-- Content Row -->
        <div class="row">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Nama Toko</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $info['nama_toko'] ?></div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-calendar fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-success shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Jumlah Produk</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jmhProduk['jmh']; ?></div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                       

                        <button type="button" class="btn btn-primary ml-3 mb-3" data-toggle="modal" data-target="#tambahProduk">
                            Tambah Produk
                        </button>

                        <a href="<?= base_url('admin/edit_toko'); ?>" class="btn btn-warning ml-3 mb-3">
                            Edit Toko
                        </a>
                    </div>
                </div>
                <?= $this->session->flashdata('message');  ?>

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Kategori Produk</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>

                                        <th>No</th>
                                        <th>Kategori</th>
                                        <th>Detail</th>
                                        <th>Aksi</>


                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1;
                                    foreach ($kategori as $rp) : ?>
                                        <tr>

                                            <td><?= $i; ?></td>

                                            <td><?= $rp['kategori']; ?></td>
                                            <td><a href="<?= base_url('admin/s_my_produk'); ?>/<?= $rp['id']; ?>" class="btn btn-info btn-icon-split">
                                                    <span class="icon text-white-50">
                                                        <i class="fas fa-info-circle"></i>
                                                    </span>
                                                    <span class="text">Details</span>
                                                </a></td>


                                            <td><a class="btn btn-danger" href="<?= base_url('admin/hapus_kat') ?>"><i class="fas fa-trash"></i></a></td>
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
    <!-- Modal Tambah Kategori-->
    <div class="modal fade" id="tambahKatgori" tabindex="-1" role="dialog" aria-labelledby="tambahKatgoriLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="tambahKatgoriLabel">Tambah Kategori</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="<?= base_url('admin/tambah_kategori'); ?>" method="post">
                        <div class="form-group">
                            <select name="kategori" id="kategori" class="form-control">
                                <option value="">Pilih Kategori</option>
                                <?php foreach ($kategoriGlobal as $kg) : ?>
                                    <option value="<?= $kg['id'];  ?> "><?= $kg['kategori']; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Tambah</button>
                </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Modal Tambah Produk-->
    <div class="modal fade" id="tambahProduk" tabindex="-1" role="dialog" aria-labelledby="tambahProdukLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="tambahProdukLabel">Tambah Produk</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <?= form_open_multipart('admin/tambah_produk'); ?>
                    <!-- Kategori produk -->
                    <!-- <div class="form-group">
                        <select name="kat" id="kat" class="form-control" required>
                            <option value="">Pilih Kategori</option>
                            <?php foreach ($myKategori as $kg) : ?>
                                <option value="<?= $kg['id_kategori_global'];  ?> "><?= $kg['kategori']; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div> -->


                    <!-- Nama Produk -->
                    <div class="form-group">
                        <input type="text" class="form-control" id="name" Name="name" placeholder="Nama Produk" required>
                    </div>
                    <!-- Harga  Produk -->
                    <div class="form-group">
                        <input type="number" class="form-control" id="harga" Name="harga" placeholder="Harga Produk" required>
                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <!-- Stok Produk -->
                            <div class="form-group">
                                <input type="number" class="form-control" id="stok" Name="stok" placeholder="Stok Produk" required>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <!-- berat Produk -->
                            <div class="form-group">
                                <input type="number" class="form-control" id="berat" Name="berat" placeholder="Berat Produk (Gram)" required>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <p class="mt-2">Gram</p>
                        </div>
                    </div>
                    <!-- Foto Produk -->
                    <div class="form-group">
                        <input type="file" class="form-control" id="image" Name="image" placeholder="Foto Produk" required>
                        <small>Max Size 1 Mb | file : jgp, png, jpeg</small>
                    </div>
                    <!-- Deskripsi Produk -->
                    <div class="form-group">
                        <textarea class="form-control" id="deskripsi" Name="deskripsi" placeholder="Deskripsi Produk" cols="30" rows="10" required></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Tambah Produk</button>
                </div>
            </div>
            </form>
        </div>
    </div>