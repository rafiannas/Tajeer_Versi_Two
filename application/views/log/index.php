<br>
<div class="container">
    <br><br>
    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-12 col-lg-12 col-md-9">
            <br><br>
            <div class="card o-hidden border-0 shadow-lg col-lg-7 mx-auto">
                <!-- <img src="img/go.png"> -->
                <h2 style="text-align: center"><img height="150" width="300" src="<?= base_url('assets/logo_tajeer.jpg'); ?>"></h2>
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg">
                            <div class="p-5">

                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Masuk Admin</h1>
                                </div>

                                <?= $this->session->flashdata('message');  ?>

                                <form class="user" method="post" action=" <?= base_url('log'); ?> ">
                                    <div class="form-group">

                                        <input type="text" class="form-control form-control-user" id="email" name="email" placeholder="Masukkan Email">
                                        <?= form_error('email', '<small class="text-danger pl-3">', '</small>');  ?>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user form-password" id="password" name="password" placeholder="Masukkan Password...">
                                        <?= form_error('password', '<small class="text-danger pl-3">', '</small>');  ?>
                                        <input type="checkbox" class="form-checkbox ml-3"> Show password
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-user btn-block">
                                        Masuk
                                    </button>
                                     <p style="text-align: center"><a href="<?= base_url('user/lupaPassword'); ?>">Lupa Password</a></p>



                                </form>
                                <hr>


                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>

<script type="text/javascript">
    $(document).ready(function() {
        $('.form-checkbox').click(function() {
            if ($(this).is(':checked')) {
                $('.form-password').attr('type', 'text');
            } else {
                $('.form-password').attr('type', 'password');
            }
        });
    });
</script>