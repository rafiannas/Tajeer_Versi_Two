    <section class="ftco-section contact-section bg-light">
        <div class="container">

            <?= $this->session->flashdata('message');  ?>
            <div class="row block-9">
                <div class="col-md-9 order-md-last d-flex">
                    <?= validation_errors(); ?>
                    <form action="" class="bg-white p-5 contact-form" method="post">

                        <div class="form-group">
                            <div class="icon"><span><strong>Your Email</strong></span></div>
                            <input type="email" name="email" id="email" class="form-control" placeholder="Your Email" required>
                        </div>
                        <div class="form-group">
                            <div class="icon"><span><strong>Create Password</strong></span></div>
                            <input type="password" name="pass" id="pass" class="form-control form-password" placeholder="password" required>
                            <input type="checkbox" class="form-checkbox ml-3"> Show password
                        </div>

                        <button style="margin-left: 45%" type="submit" class="btn btn-primary  py-3 px-5">Masuk</button>
                        <br>
                        <p>Belum punya akun ? ayo <a href="<?= base_url('user/register'); ?>">Daftar</a></p>
                        <p><a href="<?= base_url('user/lupaPassword'); ?>">Lupa Password</a></p>

                    </form>

                </div>


            </div>
        </div>
    </section>

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