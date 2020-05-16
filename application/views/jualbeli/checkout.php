<!-- <div class="container p-5">

    <div class="input-group">
        <div class="input-group-append">
            <span class="input-group-text">Berat</span>
        </div>
        <input type="number" value="1" min="1" class="form-control" id="berat" name="berat">
        <div class="input-group-append">
            <span class="input-group-text">Kg</span>
        </div>
    </div>

    <div class="form-group">

    </div>

    <p>Lokasi Asal :</p>
    <div class="form-group">
        <select class="form-control" id="sel1">
            <option value=""> Pilih Provinsi</option>
        </select>
    </div>

    <div class="form-group">
        <select class="form-control" id="sel2" disabled>
            <option value=""> Pilih Kota</option>
        </select>
    </div>

    <p>Lokasi Tujuan :</p>


    <div class="form-group">
        <select class="form-control" id="sel11">
            <option value=""> Pilih Provinsi</option>
        </select>
    </div>

    <div class="form-group">
        <select class="form-control" id="sel22" disabled>
            <option value=""> Pilih Kota</option>
        </select>
    </div>

    <div class="form-group">
        <select class="form-control" id="kurir" disabled>
            <option value=""> Pilih Kurir</option>
            <option value="jne">JNE</option>
            <option value="tiki">TIKI</option>
            <option value="pos">POS Indonesia</option>
        </select>
    </div>

    <div id="hasil"></div>

</div>

<script type="text/javascript">
    function getLokasi() {
        var $op = $("#sel1"),
            $op1 = $("#sel11");

        $.getJSON("provinsi", function(data) {
            $.each(data, function(i, field) {

                $op.append('<option value="' + field.province_id + '">' + field.province_id + '</option>');
                $op1.append('<option value="' + field.province_id + '">' + field.province_id + '</option>');

            });

        });

    }

    getLokasi();

    $("#sel11").on("change", function(e) {
        e.preventDefault();
        var option = $('option:selected', this).val();
        $('#sel22 option:gt(0)').remove();
        $('#kurir').val('');

        if (option === '') {
            alert('null');
            $("#sel22").prop("disabled", true);
            $("#kurir").prop("disabled", true);
        } else {
            $("#sel22").prop("disabled", false);
            getKota1(option);
        }
    });


    $("#sel1").on("change", function(e) {
        e.preventDefault();
        var option = $('option:selected', this).val();
        $('#sel2 option:gt(0)').remove();
        $('#kurir').val('');

        if (option === '') {
            alert('null');
            $("#sel2").prop("disabled", true);
            $("#kurir").prop("disabled", true);
        } else {
            $("#sel2").prop("disabled", false);
            getKota(option);
        }
    });




    $("#sel22").on("change", function(e) {
        e.preventDefault();
        var option = $('option:selected', this).val();
        $('#kurir').val('');

        if (option === '') {
            alert('null');
            $("#kurir").prop("disabled", true);
        } else {
            $("#kurir").prop("disabled", false);
        }
    });


    $("#kurir").on("change", function(e) {
        e.preventDefault();
        var option = $('option:selected', this).val();
        var origin = $("#sel2").val();
        var des = $("#sel22").val();
        var qty = $("#berat").val();

        if (qty === '0' || qty === '') {
            alert('null');
        } else if (option === '') {
            alert('null');
        } else {
            getOrigin(origin, des, qty, option);
        }
    });


    function getOrigin(origin, des, qty, cour) {
        var $op = $("#hasil");
        var i, j, x = "";

        $.getJSON("tarif/" + origin + "/" + des + "/" + qty + "/" + cour, function(data) {
            $.each(data, function(i, field) {

                for (i in field.costs) {
                    x += "<p class='mb-0'><b>" + field.costs[i].service + "</b> : " + field.costs[i].description + "</p>";

                    for (j in field.costs[i].cost) {
                        x += field.costs[i].cost[j].value + "<br>" + field.costs[i].cost[j].etd + "<br>" + field.costs[i].cost[j].note;
                    }

                }

                $op.html(x);

            });
        });

    }


    function getKota1(idpro) {
        var $op = $("#sel22");

        $.getJSON("kota/" + idpro, function(data) {
            $.each(data, function(i, field) {


                $op.append('<option value="' + field.city_id + '">' + field.type + ' ' + field.city_id + '</option>');

            });

        });

    }

    function getKota(idpro) {
        var $op = $("#sel2");

        $.getJSON("kota/" + idpro, function(data) {
            $.each(data, function(i, field) {

                $op.append('<option value="' + field.city_id + '">' + field.type + ' ' + field.city_name + '</option>');

            });

        });

    }
</script>
 -->

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-7 ftco-animate">
                <div class="row">
                    <div class="col-md-8">
                        <br><br>
                        <h3 class="mb-4 billing-heading mt-4">Pengiriman</h3>
                        <div class="form-group">
                            <form action="<?= base_url('jualbeli/cekOngkir'); ?>" method="post" class="">
                                <label for="kurir">Jasa Pengiriman</label>
                                <div class="select-wrap">
                                    <!--<div class="icon"><span class="ion-ios-arrow-down"></span></div>-->
                                    <select name="kurir" id="kurir" class="form-control">
                                        <option value="0">Pilih Kurir</option>
                                        <?php foreach ($kurir as $kur) : ?>
                                            <option value="<?= $kur['id']; ?>"><?= $kur['jenis']; ?> => Rp. <?= number_format($kur['harga']); ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <p style="text-align: center"><button type="submit" class="btn btn-secondary py-3" style="margin-top: 80%; margin-right: 30%">Cek Ongkir</button></p>
                    </div>
                    </form>
                </div>

                <form action="<?= base_url('jualbeli/paid'); ?>" method="post" class="">
                    <h3 class="mb-4 billing-heading">Biodata Penerima</h3>
                    <div class="row align-items-end">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="nama">Penerima</label>
                                <input type="text" required class="form-control" placeholder="Penerima" name="nama" id="nama" value="<?= $user['nama']; ?>">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="no_hp">Nomor Hp</label>
                                <input type="text" required class="form-control" placeholder="Nomor Hp" name="no_hp" id="no_hp" value="<?= $user['no_hp']; ?>">
                            </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="no_hp">Alamat Lengkap</label>
                                <textarea name="alamat" id="alamat" cols="30" rows="7" required class="form-control" placeholder="Alamat"><?= $user['alamat']; ?></textarea>
                            </div>
                        </div>

                        <div class="w-100"></div>

                    </div>

            </div>
            <div class="col-xl-5">
                <div class="row mt-5 pt-3">
                    <div class="col-md-12 d-flex">
                        <div class="cart-detail cart-total p-3 p-md-4">
                            <h3 class="billing-heading mb-4">Catatan untuk penjual</h3>
                            <div class="form-group">

                                <textarea name="catatan" id="catatan" cols="30" rows="7" class="form-control" placeholder="Catatan untuk penjual"></textarea>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mt-5 pt-3">
                    <div class="col-md-12 d-flex mb-5">
                        <div class="cart-detail cart-total p-3 p-md-4">
                            <h3 class="billing-heading mb-4">Cart Total</h3>
                            <p class="d-flex">
                                <span>Total Berat</span>
                                <span><?= $keranjang['total_berat'] / 1000; ?> Kg</span>
                            </p>
                            <p class="d-flex">
                                <span>Pengiriman</span>
                                <span><?= $keranjang2['jenis']; ?></span>
                            </p>
                            <p class="d-flex">
                                <span>Order</span>
                                <span>Rp. <?= number_format($keranjang['total_harga']); ?> </span>
                            </p>
                            <p class="d-flex">
                                <span>Ongkir</span>
                                <span>Rp. <?= number_format($keranjang['ongkir']); ?></span>
                            </p>

                            <hr>
                            <p class="d-flex total-price">
                                <span>Total</span>
                                <span>Rp. <?= number_format($keranjang['total_harga'] + $keranjang['ongkir']); ?></span>
                            </p>
                        </div>
                    </div>
                    <?php if ($keranjang2['jenis'] != "") : ?>
                        <div class="col-md-12">
                            <p style="text-align: center"><button type="submit" class="btn btn-primary py-3 px-4">ORDER</button></p>

                        </div>
                    <?php endif; ?>
                </div>
                </form><!-- END -->
            </div> <!-- .col-md-8 -->
        </div>
    </div>
</section> <!-- .section -->