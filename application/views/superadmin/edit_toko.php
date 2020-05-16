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
                        <h6 class="m-0 font-weight-bold text-info">Toko : <?= $toko['nama_toko']; ?></h6>
                    </div>
                    <form action="" method="post">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="pemilik" class="m-0 font-weight-bold text-primary">Pemilik</label>
                                        <input type="text" class="form-control" value="<?= $toko['nama']; ?>" name="nama" id="nama">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="berat" class="m-0 font-weight-bold text-primary">Tanggal Buka Toko</label>
                                        <input type="text" class="form-control" value="<?= date('d F Y', $toko['date_create']); ?>" readonly>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="form-group col-md-6">
                                    <div class="form-group">
                                        <label for="nama" class="m-0 font-weight-bold text-primary">Nama Toko</label>
                                        <input type="text" class="form-control" value="<?= $toko['nama_toko']; ?>" readonly>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <div class="form-group">
                                        <label for="no_hp" class="m-0 font-weight-bold text-primary">No HP</label>
                                        <input type="text" class="form-control" value="<?= $toko['no_hp']; ?>" name="nope" id="nope">
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <div class="form-group">
                                        <label for="nama" class="m-0 font-weight-bold text-primary">Email Toko</label>
                                        <input type="text" name="nama" id="nama" class="form-control" value="<?= $toko['email']; ?>" readonly>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <div class="form-group">
                                        <label for="no_hp" class="m-0 font-weight-bold text-primary">pasword</label>
                                        <input type="password" class="form-control" name="password" id="password">
                                    </div>
                                </div>

                            </div>


                            <div class="row">
                                <div class="form-group ml-3">
                                    <label for="nama" class="m-0 font-weight-bold text-primary">Alamat Toko</label>
                                    <textarea required class="form-control" name="alamat" id="alamat" cols="70" rows="2"><?= $toko['alamat']; ?></textarea>
                                </div>



                                <div class="form-group ml-3">
                                    <label for="nama" class="m-0 font-weight-bold text-primary">Deskripsi Toko</label>
                                    <textarea required class="form-control" name="deskripsi" id="deskripsi" cols="70" rows="10"><?= $toko['deskripsi_toko']; ?></textarea>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5">
                                    <a class="btn btn-danger" style="margin-left: 45%" href="<?= base_url('superadmin/list_toko'); ?>">Batal</a>
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