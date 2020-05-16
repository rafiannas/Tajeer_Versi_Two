    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Super Admin</h1><br>
        </div>


        <div class="container-fluid">
            <?= $this->session->flashdata('message');  ?>
            <button type="button" class="btn btn-primary mb-3" data-toggle="modal" data-target="#tambahToko">
                Tambah Toko
            </button>

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">List Toko</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Pemilik</th>
                                    <th>Nama Toko</th>
                                    <th>Tgl Buka Toko</th>
                                    <th>Banyak Produk</th>
                                    <th>Status</th>
                                    <th colspan="2" style="text-align: center">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1;
                                foreach ($toko as $rp) : ?>
                                    <tr>

                                        <td><?= $i; ?></td>
                                        <td><?= $rp['nama']; ?></td>
                                        <td><?= $rp['nama_toko']; ?></td>
                                        <td><?= date('d F Y', $rp['date_create']); ?></td>
                                        <td><?= $rp['banyak_produk']; ?></td>
                                        <td><?= $rp['keterangan']; ?></td>

                                        <td><a class="btn btn-warning" href="<?= base_url('superadmin/s_edit_toko') ?>/<?= $rp['id']; ?>"><i class="fas fa-pencil-alt"></i></a></td>
                                        <td><a class="btn btn-danger" href="<?= base_url('superadmin/hapus_toko') ?>/<?= $rp['id']; ?>"><i class="fas fa-trash-alt"></i></a></td>

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
    <div class="modal fade" id="tambahToko" tabindex="-1" role="dialog" aria-labelledby="tambahTokoLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="tambahTokoLabel">Tambah Toko</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="" method="post">
                        <!-- Nama Toko -->
                        <div class="form-group">
                            <input type="text" class="form-control" id="name" Name="name" placeholder="Nama Toko" required>
                        </div>
                        <!-- Harga  Pemilik -->
                        <div class="form-group">
                            <input type="text" class="form-control" id="pemilik" Name="pemilik" placeholder="Nama Pemilik Toko" required>
                        </div>
                        <!-- Kategori Toko -->
                        <div class="form-group">
                            <select name="kat" id="kat" class="form-control" required>
                                <option value="">Pilih Kategori Toko</option>
                                <?php foreach ($kategori as $kg) : ?>
                                    <option value="<?= $kg['id'];  ?> "><?= $kg['kategori']; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <!-- email -->
                        <div class="form-group">
                            <input type="email" class="form-control" id="email" Name="email" placeholder="Email Pemilik Toko" required>
                        </div>

                        <!-- Passworrd -->
                        <div class="form-group">
                            <input type="password" class="form-control" id="password" Name="password" placeholder="Password" required>
                        </div>

                        <!-- No_HP -->
                        <div class="row">


                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="number" class="form-control" id="nope" Name="nope" placeholder="No Hp Pemilik Toko" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="select-wrap">
                                        <select name="jk" id="jk" class="form-control">
                                            <option value="">Jenis Kelamin</option>
                                            <option value="L">Laki-laki</option>
                                            <option value="P">Perempuan</option>

                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Alamat-->
                        <div class="form-group">
                            <input type="text" class="form-control" id="alamat" Name="alamat" placeholder="Alamat Pemilik Toko" required>
                        </div>


                        <!-- Deskripsi Produk -->
                        <div class="form-group">
                            <textarea class="form-control" id="deskripsi" Name="deskripsi" placeholder="Deskripsi Toko" cols="30" rows="10" required></textarea>
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Tambah Toko</button>
                </div>
            </div>
            </form>
        </div>
    </div>