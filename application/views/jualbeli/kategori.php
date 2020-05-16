<section id="home-section" class="hero">
    <div class="home-slider owl-carousel">
        <?php foreach ($slider as $sl) : ?>
            <div class="slider-item" style=" background-image: url(<?= base_url('assets/user/'); ?>image/<?= $sl['image']; ?>);">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

                        <div class="col-md-12 ftco-animate text-center">
                            <!-- <h1 class="mb-2">We serve Fresh Vegestables &amp; Fruits</h1> -->
                            <h2 class="subheading mb-4"><?= $sl['judul']; ?></h2>
                            <!-- <a><a href="#" class="btn btn-primary">View Details</a></p> -->
                        </div>

                    </div>
                </div>
            </div>
        <?php endforeach; ?>


    </div>
</section>


<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-3 pb-3">
            <div class="col-md-12 heading-section text-center ftco-animate">
                <span class="subheading">Kategori</span>
                 <h2 class="mb-4"><?= $title['kategori']; ?></h2>

            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <?php foreach ($isiProduk as $fr) : ?>
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="product">
                        <a href="<?= base_url('jualbeli/s_view'); ?>/<?= $fr['id_produk']; ?>" class="img-prod"><img class="img-fluid" width="1000px" height="800px" src="<?= base_url('assets/image/produk') ?>/<?= $fr['image']; ?>" alt="Colorlib Template">

                            <div class="overlay"></div>
                        </a>
                        <div class="text py-3 pb-4 px-3 text-center">
                            <h3><a href="<?= base_url('jualbeli/s_view'); ?>/<?= $fr['id_produk']; ?>"><?= $fr['nama_produk']; ?></a></h3>
                            <div class="d-flex">
                                <div class="pricing">
                                    <p class="price"><span class="mr-2 price-dc"></span><span class="price-sale">Rp. <?= number_format($fr['harga']); ?></span></p>
                                </div>
                            </div>
                            <div class="bottom-area d-flex px-3">
                                <div class="m-auto d-flex">
                                    <a href="<?= base_url('jualbeli/s_view'); ?>/<?= $fr['id_produk']; ?>" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                        <span><i class="ion-ios-cart"></i></span>
                                    </a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>