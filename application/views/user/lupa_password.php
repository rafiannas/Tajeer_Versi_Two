<section class="ftco-section contact-section bg-light">
    <div class="container">

        <div class="row block-9">
            <div class="col-md-9 order-md-last d-flex">

                <form action="" class="bg-white p-5 contact-form" method="post">
                    <?= $this->session->flashdata('message');  ?>

                    <div class="form-group">
                        <div class="icon"><span><strong>Your Email</strong></span></div>
                        <input type="email" name="email" id="email" class="form-control" placeholder="Your Email" required>
                    </div>


                    <button style="margin-left: 40%" type="submit" class="btn btn-primary  py-3 px-5">Reset Password</button>
                    <br>
                    <p>Sudah Punya akun ? ayo <a href="<?= base_url('user/login'); ?>">Login</a></p>


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