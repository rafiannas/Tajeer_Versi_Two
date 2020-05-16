<br>
<form action="" method="post">
    <section class="ftco-section">
        <div class="container">
            <?= $this->session->flashdata('message');  ?>
            <div class="row">
                <div class="col-lg-6 mb-5 ftco-animate">

                    <a href="<?= base_url('assets/image/produk'); ?>/<?= $view['image']; ?>" class="image-popup"><img src="<?= base_url('assets/image/produk'); ?>/<?= $view['image']; ?>" class="img-fluid" alt="Colorlib Template"></a>
                </div>
                <div class="col-lg-6 product-details pl-md-5 ftco-animate">
                    <h3><?= $view['nama_produk']; ?></h3>

                    <p class="price"><span>Rp. <?= number_format($view['harga']); ?></span></p>
                    <p><?= $view['deskripsi']; ?>
                    </p>
                    <div class="row mt-4">
                        <div class="col-md-6">

                        </div>
                        <div class="w-100"></div>

                        <div class="input-group col-md-6 d-flex mb-3">
                            <span class="input-group-btn mr-2">
                                <button type="button" class="quantity-left-minus btn" data-type="minus" data-field="">
                                    <i class="ion-ios-remove"></i>
                                </button>
                            </span>
                            <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
                            <span class="input-group-btn ml-2">
                                <button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
                                    <i class="ion-ios-add"></i>
                                </button>
                            </span>
                        </div>
                        <div class="w-100"></div>
                        <div class="col-md-12">
                            <p style="color: #000;">Stok : <?= $view['stok']; ?></p>
                            <span>Berat : <strong><?= $view['berat']; ?></strong> Gram</span>
                        </div>
                    </div>
                    <button type="submit" class="btn">Add to Cart</button>
</form>
</div>
</div>
</div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-3 pb-3">
            <div class="col-md-12 heading-section text-center ftco-animate">
              
                <h2 class="mb-4">Produk Lainnya</h2>

            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <?php foreach ($other as $ot) : ?>
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="product">
                        <a href="<?= base_url('jualbeli/s_view'); ?>/<?= $ot['id_produk']; ?>" class="img-prod"><img class="img-fluid" src="<?= base_url('assets/image/produk'); ?>/<?= $ot['image']; ?>" alt="Colorlib Template">

                            <div class="overlay"></div>
                        </a>
                        <div class="text py-3 pb-4 px-3 text-center">
                            <h3><a href="#"> <?= $ot['nama_produk']; ?></a></h3>
                            <div class="d-flex">
                                <div class="pricing">
                                    <p class="price"><span class="mr-2 price-dc"></span><span class="price-sale">Rp. <?= number_format($ot['harga']); ?></span></p>
                                </div>
                            </div>
                            <div class="bottom-area d-flex px-3">
                                <div class="m-auto d-flex">

                                    <a href="<?= base_url('jualbeli/s_view'); ?>/<?= $ot['id_produk']; ?>" class="buy-now d-flex justify-content-center align-items-center mx-1">
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


<script>
    $(document).ready(function() {

        var quantitiy = 0;
        $('.quantity-right-plus').click(function(e) {

            // Stop acting like a button
            e.preventDefault();
            // Get the field name
            var quantity = parseInt($('#quantity').val());

            // If is not undefined

            $('#quantity').val(quantity + 1);


            // Increment

        });

        $('.quantity-left-minus').click(function(e) {
            // Stop acting like a button
            e.preventDefault();
            // Get the field name
            var quantity = parseInt($('#quantity').val());

            // If is not undefined

            // Increment
            if (quantity > 0) {
                $('#quantity').val(quantity - 1);
            }
        });

    });
</script>