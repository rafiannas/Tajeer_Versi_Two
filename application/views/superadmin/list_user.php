    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Super Admin</h1><br>
        </div>


        <div class="container-fluid">
            <?= $this->session->flashdata('message');  ?>
            <button type="button" class="btn btn-primary mb-3" data-toggle="modal" data-target="#tambahUser">
                Tambah User
            </button>

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">List User</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama</th>
                                    <th>Email</th>
                                    <th>No HP</th>
                                

                                    <th colspan="2" style="text-align: center">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1;
                                foreach ($user as $rp) : ?>
                                    <tr>

                                        <td><?= $i; ?></td>
                                        <td><?= $rp['nama']; ?></td>
                                        <td><?= $rp['email']; ?></td>
                                        <td><?= $rp['no_hp']; ?></td>
                                        <td><a class="btn btn-warning" href="<?= base_url('superadmin/s_edit_user'); ?>/<?= $rp['id']; ?>"><i class="fas fa-pencil-alt"></i></a></td>
                                        <td><a class="btn btn-danger" href="<?= base_url('superadmin/hapus_user'); ?>/<?= $rp['id']; ?>"><i class="fas fa-trash-alt"></i></a></td>

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
    <div class="modal fade" id="tambahUser" tabindex="-1" role="dialog" aria-labelledby="tambahUserLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="tambahUserLabel">Tambah User</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="" method="post">
                        <!-- Nama  -->
                        <div class="form-group">
                            <input type="text" class="form-control" id="nama" Name="nama" placeholder="Nama" required>
                        </div>
                        <!-- Email  -->
                        <div class="form-group">
                            <input type="email" class="form-control" id="email" Name="email" placeholder="Email" required>
                        </div>
                        <!-- password  -->
                        <div class="form-group">
                            <input type="password" class="form-control" id="password" Name="password" placeholder="Password" required>
                        </div>
                        <!-- No hp -->
                        <div class="form-group">
                            <input type="number" class="form-control" id="nope" Name="nope" placeholder="No Hp" required>
                        </div>
                        <!-- JK -->
                        <div class="form-group">
                            <div class="select-wrap">
                                <select name="jk" id="jk" class="form-control">
                                    <option value="">Jenis Kelamin</option>
                                    <option value="L">Laki-laki</option>
                                    <option value="P">Perempuan</option>

                                </select>
                            </div>
                        </div>

                        <!-- Alamat -->
                        <div class="form-group">
                            <textarea class="form-control" id="alamat" Name="alamat" placeholder="Alamat" cols="30" rows="10" required></textarea>
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Tambah User</button>
                </div>
            </div>
            </form>
        </div>
    </div>