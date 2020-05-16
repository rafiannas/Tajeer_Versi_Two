<section class="ftco-section ftco-cart">
    <div class="container">
        <?= $this->session->flashdata('message');  ?>
        <?php foreach ($cart as $ca) :
            $id_ker = $ca['id'];
            $q = "SELECT isi_keranjang.*, produk.nama_produk, produk.harga, produk.image
                  FROM isi_keranjang, produk
                  WHERE id_keranjang = $id_ker
                  AND isi_keranjang.id_produk = produk.id_produk
            ";
            $isi_ker = $this->db->query($q)->result_array();
            //var_dump($isi_ker);

        ?>
            <div class="row">
                <div class="col-md-12 ftco-animate">

                    <a href="<?= base_url('jualbeli/s_profil') ?>/<?= $ca['id_toko']; ?>" class="btn btn-secondary py-2 px-3"><?= $ca['nama_toko'] ?></a>
                    <div class="cart-list">
                        <p class="ml-3">Jumlah Produk : <?= $ca['jmh_produk']; ?></p>
                        <table class="table">
                            <thead class="thead-primary">
                                <tr class="text-center">
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                    <th>Product name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $all = 0;
                                foreach ($isi_ker as $isi) : ?>
                                    <tr class="text-center">
                                        <td class="product-remove"><a href="<?= base_url('jualbeli/dell'); ?>/<?= $isi['id']; ?>"><span class="ion-ios-close"></span></a></td>

                                        <td class="image-prod">
                                            <div class="img" style="background-image:url(<?= base_url('assets/image/produk/'); ?><?= $isi['image']; ?>);"></div>
                                        </td>

                                        <td class="product-name">
                                            <h4><?= $isi['nama_produk']; ?></h4>

                                        </td>

                                        <td>
                                            <p>Rp. <?= number_format($isi['harga']); ?></p>
                                        </td>

                                        <td class="quantity">
                                            <div class="input-group mr-2">

                                                <a href="<?= base_url('jualbeli/minus'); ?>/<?= $isi['id']; ?>" class="btn btn-primary" data-type="minus">
                                                    <i class="ion-ios-remove"></i>
                                                </a>
                                                <input type="text" id="quantity" name="quantity" class="form-control input-number" value="<?= $isi['jumlah']; ?>" readonly>

                                                <a href="<?= base_url('jualbeli/plus'); ?>/<?= $isi['id']; ?>" class="btn btn-primary" id="<?= $isi['id']; ?>" data-type="plus" onclick="plus(<?= $isi['id']; ?>)" data-field="">
                                                    <i class="ion-ios-add"></i>
                                                </a>
                                            </div>
                                        </td>
                                        <?php $ttl = $isi['harga'] * $isi['jumlah']; ?>
                                        <td>
                                            <p>Rp. <?= number_format($ttl); ?></p>
                                        </td>
                                    </tr>
                                    <?php $all += $ttl; ?>
                                <?php endforeach; ?>
                                <br>
                                <!-- END TR-->

                            </tbody>
                        </table>
                    </div>

                    <input style="font-weight: bold; font-size: 20px" class="form-control input-number" readonly value="Total = Rp. <?= number_format($all); ?>">

                    <a class="btn btn-primary px-5 py-2 mt-3" style="margin-left: 45%" href="<?= base_url('jualbeli/s_checkout'); ?>/<?= $id_ker; ?>">Bayar</a>
                </div>
            </div>
            <br> <br>
            <?php
            $upd = "UPDATE keranjang SET total_harga = $all WHERE id = $id_ker";
            $this->db->query($upd);

            ?>
        <?php endforeach; ?>


    </div>
</section>

<!-- 
<script>
  



    $(document).ready(function(id) {

        var quantitiy = 0;
        var sbl = 0;
        $('.quantity-right-plus').click(function(e) {

            // Stop acting like a button
            e.preventDefault();
            // Get the field name
            var quantity = parseInt($('#quantity').val());
            var sbl = parseInt($('#sbl').val());
            var ssd = parseInt($('#ssd').val());

            // If is not undefined

            $('#quantity').val(quantity + 1);
            $('#sbl').val(sbl + 100);
            $('#ssd').val(sbl + 100);


            // Increment

        });

        $('.quantity-left-minus').click(function(e) {
            // Stop acting like a button
            e.preventDefault();
            // Get the field name
            var quantity = parseInt($('#quantity').val());
            var sbl = parseInt($('#sbl').val());
            var ssd = parseInt($('#ssd').val());

            // If is not undefined

            // Increment
            if (quantity > 0) {
                $('#quantity').val(quantity - 1);
                $('#sbl').val(ssd - 100);
                $('#ssd').val(ssd - 100);

            }
        });

    });
</script> -->