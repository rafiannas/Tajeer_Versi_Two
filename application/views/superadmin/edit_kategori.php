    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Edit Kategori</h1><br>

        </div>

        <div class="container-fluid">
            <?= $this->session->flashdata('message');  ?>

            <!-- DataTales Example -->
            <div class="col-md-6">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary"><?= $kategori['kategori']; ?></h6>
                    </div>
                    <form action="" method="post">

                        <div class="card-body">
                            <div class="table-responsive">
                                <div class="form-group">
                                    <label for="text" class="m-0 font-weight-bold text-primary">Nama Kategori</label>
                                    <input type="text" class="form-control" value="<?= $kategori['kategori']; ?>" name="nama" id="nama">
                                </div>
                            </div>
                            <div class="row ml-2">
                                <button class="btn btn-primary" type="submit">Ubah</button>
                            </div>
                        </div>



                    </form>
                </div>
            </div>

        </div>


    </div>
    <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->