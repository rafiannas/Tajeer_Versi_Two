    <!-- Begin Page Content -->
    <div class="container-fluid">
        <h1 class="h3 mb-0 text-gray-800">Detail Pesanan</h1><br>

    </div>

    <!-- mulai dari sini -->
    <div class="container-fluid">
        <?= $this->session->flashdata('message');  ?>
        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-7">
                <!-- Brand Buttons -->
                <div class="card shadow mb-6">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-info">ID : <?= $ubahPemb['id']; ?></h6>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Penerima" class="m-0 font-weight-bold text-primary">Pemesan</label>
                                    <input type="text" class="form-control" value="<?= $ubahPemb['nama']; ?>" readonly>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="berat" class="m-0 font-weight-bold text-primary">Tgl Pesanan</label>
                                    <input type="text" class="form-control" value="<?= $ubahPemb['tgl']; ?>" readonly>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="form-group col-md-6">
                                <div class="form-group">
                                    <label for="jmh" class="m-0 font-weight-bold text-primary">Penerima</label>
                                    <input type="text" class="form-control" value="<?= $ubahPemb['penerima']; ?>" readonly>
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <div class="form-group">
                                    <label for="no_hp" class="m-0 font-weight-bold text-primary">No HP</label>
                                    <input type="text" class="form-control" value="<?= $ubahPemb['nope']; ?>" readonly>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6">
                                <div class="form-group">
                                    <label for="no_hp" class="m-0 font-weight-bold text-primary">Alamat Penerima</label>
                                    <textarea class="form-control" readonly name="al" id="al" cols="30" rows="2"><?= $ubahPemb['alamat_penerima']; ?></textarea>
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <div class="form-group">
                                    <label for="no_hp" class="m-0 font-weight-bold text-primary">Catatan dari Pembeli</label>
                                    <textarea class="form-control" readonly name="cat" id="cat" cols="30" rows="2"><?= $ubahPemb['catatan']; ?></textarea>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="form-group col-md-6">
                                <div class="form-group">
                                    <label for="jmh" class="m-0 font-weight-bold text-primary">Jumlah Pesanan</label>
                                    <input type="text" class="form-control" value="<?= $ubahPemb['jmh_produk']; ?>" readonly>
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <div class="form-group">
                                    <label for="berat" class="m-0 font-weight-bold text-primary">Total Berat Pesanan</label>
                                    <textarea readonly class="form-control" name="" id="" cols="30" rows="1"><?= $ubahPemb['total_berat'] / 1000; ?> Kg</textarea>

                                </div>
                            </div>
                        </div>


<form action="" method="post">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label class="m-0 font-weight-bold text-primary">Harga Pesanan</label>
                                <textarea readonly class="form-control" name="" id="" cols="30" rows="1">Rp. <?= number_format($ubahPemb['total_harga']); ?></textarea>


                                <label class="m-0 font-weight-bold text-primary">Harga Ongkir</label>
                                <textarea readonly class="form-control" name="" id="" cols="30" rows="1">Rp. <?= number_format($ubahPemb['ongkir']); ?></textarea>

                                <label class="m-0 font-weight-bold text-primary">Total</label>
                                <textarea style="font-weight: bold " readonly class="form-control" name="" id="" cols="30" rows="1">Rp. <?= number_format($ubahPemb['harga_all']); ?></textarea>
                            </div>

                            <div class="col-md-6">

                                <div class="form-group">
                                    <label for="no_hp" class="m-0 font-weight-bold text-primary">No Resi dan Jenis jasa Kurir</label>
                                    <input class="form-control" name="resi" id="resi" required value="<?= $ubahPemb['resi']; ?>"></input>
                                </div>

                                <label class="m-0 font-weight-bold text-primary">Jenis Pengiriman</label>
                                <textarea readonly class="form-control" name="" id="" cols="30" rows="1"><?= $ubahPemb['jenis']; ?></textarea>
                                <br>
                                <label class="m-0 font-weight-bold text-primary">Status Barang
                                    
                                    <?php if ($ubahPemb['id_status_barang'] !=3 ): ?>
                                        <select name="status" id="status" class="form-control">
                                            <?php foreach ($status as $st) : ?>
                                                <?php if ($st['id'] == $ubahPemb['id_status_barang']) : ?>
                                                    <option value="<?= $st['id']; ?>" selected><?= $st['ket_barang'] ?></option>
                                                <?php else : ?>
                                                    <option value="<?= $st['id']; ?>"><?= $st['ket_barang'] ?></option>
                                                <?php endif; ?>
                                            <?php endforeach; ?>
                                        </select>
                                      
                                        <button class="btn btn-primary mt-2 ml-3" type="submit">
                                            Ubah
                                        </button>
                                     <?php else: ?>
                                      <select name="status" id="status" class="form-control">
                                            <option value="" selected><?= $ubahPemb['ket_barang']; ?></option>
                                             
                      
                                        </select>
                                        <?php endif; ?>
                                    </form>
                                    
                                    
                                    
                            </div>


                        </div>


                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->
    <br><br>
    <!-- Rincian -->
    <div class="container-fluid">

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Rincian Pesanan</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th style="color: blue">Gambar</th>
                                <th style="color: blue">Barang</th>
                                <th style="color: blue">Harga</th>
                                <th style="color: blue">Jumlah</th>
                                <th style="color: blue">Total Berat</th>
                                <th style="color: blue">Total Harga</th>

                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($rincian as $dk) : ?>
                                <tr>
                                    <td><img style="width:100;height:100px;border:0;" src="<?= base_url('assets/image/produk') ?>/<?= $dk['image']; ?>"></td>
                                    <td><?= $dk['nama_produk']; ?></td>
                                    <td><?= $dk['harga']; ?></td>
                                    <td><?= $dk['jumlah']; ?></td>
                                    <td><?= $dk['total_berat_per_produk'] / 1000; ?> Kg</td>
                                    <td>Rp. <?= number_format($dk['total_harga_per_produk']); ?></td>


                                </tr>
                            <?php endforeach; ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    </div>
    <!-- End of Main Content -->