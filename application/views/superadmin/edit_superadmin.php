    <!-- Begin Page Content -->
    <div class="container-fluid">
        <h1 class="h3 mb-0 text-gray-800">Edit Toko</h1><br>

    </div>

    <!-- mulai dari sini -->
    <div class="container-fluid">
        <?= $this->session->flashdata('message');  ?>
        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-6">
                <!-- Brand Buttons -->
                <div class="card shadow mb-6">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-info">Edit user : <?= $editUser['nama']; ?></h6>
                    </div>
                    <form action="" method="post">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="email" class="m-0 font-weight-bold text-primary">Email</label>
                                        <input type="text" class="form-control" value="<?= $editUser['email']; ?>" readonly>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="berat" class="m-0 font-weight-bold text-primary">Nama</label>
                                        <input required type="text" id="nama" name="nama" class="form-control" value="<?= $editUser['nama']; ?>">
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="form-group col-md-6">
                                    <div class="form-group">
                                        <label for="nama" class="m-0 font-weight-bold text-primary">No Hp</label>
                                        <input required type="number" name="nope" id="nope" class="form-control" value="<?= $editUser['no_hp']; ?>">
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <div class="form-group">
                                        <label for="berat" class="m-0 font-weight-bold text-primary">Password</label>
                                        <input type="password" name="password" id="password" class="form-control">

                                    </div>
                                </div>
                                <div class="row ml-3 mb-3">
                                    <label for="role" class="m-0 font-weight-bold text-primary">Role</label>


                                    <select name="role" id="role" class="form-control">
                                        <?php foreach ($role as $st) : ?>
                                            <?php if ($st['id'] == $ubahPemb['role_id']) : ?>
                                                <option value="<?= $st['id']; ?>" selected><?= $st['role'] ?></option>
                                            <?php else : ?>
                                                <option value="<?= $st['id']; ?>"><?= $st['role'] ?></option>
                                            <?php endif; ?>
                                        <?php endforeach; ?>
                                    </select>


                                </div>

                                <div class="form-group ml-3">
                                    <label for="nama" class="m-0 font-weight-bold text-primary">Alamat</label>
                                    <textarea required class="form-control" name="alamat" id="alamat" cols="70" rows="10"><?= $editUser['alamat']; ?></textarea>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5">
                                    <a class="btn btn-danger" style="margin-left: 45%" href="<?= base_url('superadmin/list_user'); ?>">Batal</a>
                                </div>
                                <div class="col-md-6">
                                    <button type="submit" class="btn btn-primary">Simpan</button>
                                </div>
                            </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    </div>
    <!-- /.container-fluid -->
    <br><br>

    </div>
    <!-- End of Main Content -->