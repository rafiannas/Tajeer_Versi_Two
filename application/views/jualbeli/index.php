<!--<section id="home-section" class="hero">-->
<!--    <div class="home-slider owl-carousel">-->
<!--        <?php foreach ($slider as $sl) : ?>-->
<!--            <div class="slider-item" style=" background-image: url(<?= base_url('assets/user/'); ?>image/<?= $sl['image']; ?>);">-->
<!--                <div class="overlay"></div>-->
<!--                <div class="container">-->
<!--                    <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">-->

<!--                        <div class="col-md-12 ftco-animate text-center">-->
                            <!-- <h1 class="mb-2">We serve Fresh Vegestables &amp; Fruits</h1> -->
<!--                            <h2 class="subheading mb-4"><?= $sl['judul']; ?></h2>-->
                            <!-- <a><a href="#" class="btn btn-primary">View Details</a></p> -->
<!--                        </div>-->

<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->
<!--        <?php endforeach; ?>-->


<!--    </div>-->
<!--</section>-->
<!-- 
<section class="ftco-section">
    <div class="container">
        <div class="row no-gutters ftco-services">
            <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services mb-md-0 mb-4">
                    <div class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
                        <span class="flaticon-shipped"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Free Shipping</h3>
                        <span>On order over $100</span>
                    </div>
                </div>
            </div>
            <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services mb-md-0 mb-4">
                    <div class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
                        <span class="flaticon-diet"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Always Fresh</h3>
                        <span>Product well package</span>
                    </div>
                </div>
            </div>
            <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services mb-md-0 mb-4">
                    <div class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
                        <span class="flaticon-award"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Superior Quality</h3>
                        <span>Quality Products</span>
                    </div>
                </div>
            </div>
            <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services mb-md-0 mb-4">
                    <div class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
                        <span class="flaticon-customer-service"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Support</h3>
                        <span>24/7 Support</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-3 pb-3">
            <div class="col-md-12 heading-section text-center ftco-animate">
              <div class="row" >
                  <div class="col-md-5 text-center">
                      <form action="<?= base_url('jualbeli'); ?>" method="post">
                          <div class="input-group mb-3">
                              <input type="text" class="form-control" value="<?=$keyword; ?>" placeholder="Cari Produk...." name="keyword" autofocus>
                              <div class="input-group-append">
                                <input class="btn btn-secondary" type="submit" value="Cari"  name="submit">
                              </div>
                            </div>
                      </form>
                      
                  </div>
              </div>
                <h2 class="mb-4">Semua Produk</h2>
               
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <?php foreach ($front as $fr) : ?>
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
         <p style="text-align: center"><?php echo $this->pagination->create_links(); ?></p>
      
    </div>
</section>