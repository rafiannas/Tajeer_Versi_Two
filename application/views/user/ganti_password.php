<section class="ftco-section contact-section bg-light">
    <div class="container">

        <div class="row block-9">
            <div class="col-md-9 order-md-last d-flex">

                <form action="" class="bg-white p-5 contact-form" method="post">
                    <?= $this->session->flashdata('message');  ?>
                    <h2 style="text-align: center">Ganti Password</h2>
                    <h4 class="mb-4" style="text-align: center"><?= $this->session->userdata('reset_pass'); ?></h4>

                    <div class="form-group">
                        <div class="icon"><span><strong>Password baru</strong></span></div>
                        <input type="password" name="password1" id="password1" class="form-control" placeholder="Massukkan password baru" required>
                        <?= form_error('password1', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>

                    <div class="form-group">
                        <div class="icon"><span><strong>Ulangi password baru</strong></span></div>
                        <input type="password" name="password2" id="password2" class="form-control" placeholder="Ulangi password baru" required>
                        <?= form_error('password2', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>


                    <button style="margin-left: 40%" type="submit" class="btn btn-primary  py-3 px-5">Ganti Password</button>
                    <br>



                </form>

            </div>


        </div>
    </div>
</section>