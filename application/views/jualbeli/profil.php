<section class="ftco-section contact-section bg-light">
    <div class="container">
        <h2 style="text-align: center"><?= $profil['nama_toko']; ?></h2>
        <br>
        <div class="row d-flex mb-5 contact-info">
            <div class="w-100"></div>
            <div class="col-md-3 d-flex">
                <div class="info bg-white p-4">
                    <p><span>Address:</span> 198 West 21th Street, Suite 721 New York NY 10016</p>
                </div>
            </div>
            <div class="col-md-3 d-flex">
                <div class="info bg-white p-4">
                    <p><span>Phone:</span> <a href="tel://1234567920">+ 1235 2355 98</a></p>
                </div>
            </div>
            <div class="col-md-3 d-flex">
                <div class="info bg-white p-4">
                    <p><span>Email:</span> <a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
                </div>
            </div>
            <div class="col-md-3 d-flex">
                <div class="info bg-white p-4">
                    <p><span>Bergabung</span></p>
                    <p style="font-weight: bold"><span><?= date('d F Y', $profil['date_create']); ?> </span></p>

                </div>
            </div>
        </div>

    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 mb-5 text-center">
                <ul class="product-category">

                    <?php foreach ($kategori as $kat) : ?>
                        <li><a href="#" class="active"><?= $kat['kategori']; ?></a></li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>

        <div class="row">
            <?php foreach ($produk as $pr) : ?>
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="product" id="mydata">
                        <a href="<?= base_url('jualbeli/s_view'); ?>/<?= $pr['id_produk']; ?>" class="img-prod"><img class="img-fluid" width="1000px" height="800px" src="<?= base_url('assets/image/produk') ?>/<?= $pr['image']; ?>" alt="Colorlib Template">
                            <div class="text py-3 pb-4 px-3 text-center">
                                <h3><a href="<?= base_url('jualbeli/s_view'); ?>/<?= $pr['id_produk']; ?>"><?= $pr['nama_produk']; ?></a></h3>
                                <div class="d-flex">
                                    <div class="pricing">
                                        <p class="price"><span class="mr-2 price-dc"></span><span class="price-sale">Rp. <?= number_format($pr['harga']); ?></span></p>
                                    </div>
                                </div>
                                <!-- <div class="bottom-area d-flex px-3">
                                    <div class="m-auto d-flex">
                                        <a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                            <span><i class="ion-ios-menu"></i></span>
                                        </a>
                                        <a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                            <span><i class="ion-ios-cart"></i></span>
                                        </a>
                                        <a href="#" class="heart d-flex justify-content-center align-items-center ">
                                            <span><i class="ion-ios-heart"></i></span>
                                        </a>
                                    </div>
                                </div> -->
                            </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>

        <div class="row mt-5">
            <div class="col text-center">
                <div class="block-27">
                    <ul>
                        <li><a href="#">&lt;</a></li>
                        <li class="active"><span>1</span></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">&gt;</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>


<script type="text/javascript" src="<?php echo base_url() . 'assets/js/jquery.js' ?>"></script>
<script type="text/javascript" src="<?php echo base_url() . 'assets/js/bootstrap.js' ?>"></script>
<script type="text/javascript" src="<?php echo base_url() . 'assets/js/jquery.dataTables.js' ?>"></script>
<script type="text/javascript">
    $(document).ready(function() {
        tampil_data_barang();

        function tampil_data_barang() {
            $.ajax({
                type: 'GET',
                url: '<?php echo base_url() ?>index.php/jualbeli/data_barang',
                async: true,
                dataType: json,
                success: function(data) {
                    var html = '';
                    var i;
                    for (i = 0; i < data.length; i++) {
                        html += '<tr>' +
                            '<td>' + data[i].id_produk + '</td>' +
                            '</tr>';
                    }
                    $('#mydata').html(html);
                }
            });
        }
    })