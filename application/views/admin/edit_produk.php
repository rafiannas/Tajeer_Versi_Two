    <!-- Begin Page Content -->
    <div class="container-fluid">
        <h1 class="h3 mb-0 text-gray-800">Edit</h1><br>

    </div>

    <!-- mulai dari sini -->
    <div class="container-fluid">
        <?= $this->session->flashdata('message');  ?>
        <!-- Page Heading -->


        <div class="row">

            <div class="col-lg-6">
                <!-- Brand Buttons -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-info"><?= $produk['nama_produk']; ?></h6>
                    </div>
                    <div class="card-body">
                        <?= form_open_multipart('admin/edit_produk'); ?>
                        <div class="form-group">
                            <label for="nama" class="m-0 font-weight-bold text-primary">Nama Produk</label>
                            <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama" value="<?= $produk['nama_produk']; ?>" required>
                        </div>

                        <div class="row">
                            <div class="col-md-6">

                                <label for="harga" class="m-0 font-weight-bold text-primary">Harga</label>
                                <input type="text" class="form-control" name="harga" id="harga" placeholder="Harga" value="<?= $produk['harga']; ?>" required>


                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="stok" class="m-0 font-weight-bold text-primary">Stok</label>
                                    <input type="text" class="form-control" id="stok" name="stok" placeholder="stok" value="<?= $produk['stok']; ?>" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="image" class="m-0 font-weight-bold text-primary">Foto</label>
                                    <div class="col-sm-10">
                                        <img src="<?= base_url('assets/image/produk/'); ?>/<?= $produk['image']; ?>" class="img-thumbnail">
                                    </div>
                                    <div class="col-sm-3">
                                        <!-- form ubah foto  -->

                                        <input type="file" class="btn btn-outline-secondary" name="image">

                                    </div>
                                    <span class="ml-3"><b>Maksimal ukuran file 1 Mb | png, jpg, jpeg</b></span>
                                </div>
                            </div>
                            <div class="col-md-6">

                            </div>
                            <div class="form-group ml-3">
                                <label for="deskripsi" class="m-0 font-weight-bold text-primary">Deskripsi</label>
                                <textarea class="form-control" name="deskripsi" id="deskripsi" cols="70" rows="10"><?= $produk['deskripsi']; ?></textarea>
                            </div>
                        </div>

                        <br>
                        <div class="row">
                            <div class="col-md-6">
                                <a href="<?= base_url('admin/my_produk'); ?>" class="btn btn-google btn-block">Batal</a>

                            </div>
                            <div class="col-md-6">

                                <button type="submit" class="btn btn-facebook btn-block">Oke</button>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>

            </div>



        </div>

    </div>

    </div>

    </div>
    <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->