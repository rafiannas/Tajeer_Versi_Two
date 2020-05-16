<!DOCTYPE html>
<html lang="en">

<head>
    <title>Tajeer</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<?= base_url('assets/user') ?>/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/user') ?>/css/animate.css">

    <link rel="stylesheet" href="<?= base_url('assets/user') ?>/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/user') ?>/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/user') ?>/css/magnific-popup.css">

    <link rel="stylesheet" href="<?= base_url('assets/user') ?>/css/aos.css">

    <link rel="stylesheet" href="<?= base_url('assets/user') ?>/css/ionicons.min.css">

    <link rel="stylesheet" href="<?= base_url('assets/user') ?>/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="<?= base_url('assets/user') ?>/css/jquery.timepicker.css">


    <link rel="stylesheet" href="<?= base_url('assets/user') ?>/css/flaticon.css">
    <link rel="stylesheet" href="<?= base_url('assets/user') ?>/css/icomoon.css">
    <link rel="stylesheet" href="<?= base_url('assets/user') ?>/css/style.css">

    <!-- Get Bootstrap -->
    <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">-->

    <!--<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>-->
    <!--<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>-->
    <!--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>-->







    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css" />

    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    <script src="https://kit.fontawesome.com/ee8defba15.js" crossorigin="anonymous"></script>

    <script type="text/javascript" src="<?= base_url() . 'assets/jquery-3.5.0.min.js' ?>"></script>
</head>

<body class="goto-here">
    <div class="py-2 bg-primary">
        <div class="container">
            <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
                <div class="col-lg-12 d-block">
                    <div class="row d-flex">
                        <div class="col-md pr-4 d-flex topper align-items-center">
                            <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
                            <span class="text">+62-888-133-7312</span>
                        </div>
                        <div class="col-md pr-4 d-flex topper align-items-center">
                            <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
                            <?php $id_user = $this->session->userdata('id_user');
                            $infoUser = $this->db->get_where('user', ['id' => $id_user])->row_array();
                            ?>
                            <?php if ($infoUser['role_id'] == 3) { ?>
                                <span class="text"><a style="color: white; font-weight: bold" href="">BUKA TOKO</a></span>
                            <?php } else if ($infoUser['role_id'] == 2) { ?>
                                <?php $infoToko = $this->db->get_where('toko', ['owner' => $id_user])->row_array(); ?>
                                <span class="text"><a style="color: white; font-weight: bold" href="<?= base_url('jualbeli/s_profil'); ?>/<?= $infoToko['id']; ?>"><?= $infoToko['nama_toko']; ?></a></span>
                            <?php } ?>
                        </div>
                        <?php $me = $this->session->userdata('nama_user');
                        $id_user =  $this->session->userdata('id_user');
                        if (!$me) :
                        ?>
                            <div class="col-md-4 pr-4 d-flex topper align-items-right text-lg-right">
                                <div class="col-md-2">
                                    <a style="color: white" href="<?= base_url('user/login'); ?>"><strong>MASUK</strong></a>
                                </div>
                                <div class="col-md-2">
                                    <a style="color: BLACK" href="<?= base_url('user/register'); ?>"><strong>DAFTAR</strong></a>
                                </div>
                            </div>
                        <?php else : ?>
                            <div class="col-md-5 pr-4 d-flex topper align-items-right text-lg-right">
                                <div class="col-md-4">
                                    <a style="color: black" href="<?= base_url('user/my_profil'); ?>"><strong>HALO <?= $me; ?></strong> </a>
                                    <!-- <p style="color: black"><?= $id_user ?></p> -->
                                </div>
                                <div class="col-md-1">
                                    <a style="color: white" href="<?= base_url('user/logout'); ?>"><strong>Logout</strong></a>
                                </div>
                            </div>
                        <?php endif; ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- <nav class="navbar navbar-expand-lg navbar-light ftco_navbar bg-light ftco-navbar-light" id="ftco-navbar"> -->
    <nav class="navbar navbar-expand-lg navbar-light ftco_navbar bg-light ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a href="<?= base_url('jualbeli/home'); ?>"><img style=" height: 100px; width: 150px;" src="<?= base_url('assets/logo_tajeer.jpg') ?>" class="rounded mx-auto d-block"></a>

            <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span style="color: blue;" class="oi oi-menu">Menu</span>
            </button>

            <div class="navbar-collapse collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" style="color: blue;" href="<?= base_url('jualbeli'); ?>" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><strong>Jual Beli</strong></a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <?php foreach ($produk as $ab) : ?>
                                <a class="dropdown-item" style="color: blue;" href="<?= base_url('jualbeli/s_kategori'); ?>/<?= $ab['id']; ?>"><?= $ab['kategori']; ?></a>
                            <?php endforeach; ?>
                        </div>
                    </li>


                    <?php foreach ($nav as $nv) : ?>
                        <li class="nav-item active"><a style="color: blue;" href="<?= base_url() ?><?= $nv['url']; ?>" class="nav-link"><strong><?= $nv['nama']; ?></strong></a></li>

                    <?php endforeach; ?>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" style="color: blue;" href="<?= base_url('about'); ?>" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><strong>About Us</strong></a>
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <?php foreach ($about as $ab) : ?>
                                <a class="dropdown-item" style="color: blue;" href="<?= base_url() ?><?= $ab['url']; ?>"><?= $ab['nama']; ?></a>
                            <?php endforeach; ?>
                        </div>
                    </li>
                    <?php
                    $id_user = $this->session->userdata('id_user');
                    if ($id_user) :
                        $q = "SELECT COUNT(id) as jmh FROM keranjang
                                  WHERE `user_id` = $id_user
                                  AND id_status_bayar = 1
                             ";
                        $ini = $this->db->query($q)->row_array();

                    ?>
                        <li class="nav-item cta cta-colored"><a href="<?= base_url('jualbeli/cart'); ?>" class="nav-link"><span class="icon-shopping_cart"></span>[<?= $ini['jmh']; ?>]</a></li>
                    <?php endif; ?>

                </ul>
            </div>
        </div>
    </nav>
    <!-- END nav -->