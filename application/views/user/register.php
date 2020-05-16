<section class="ftco-section contact-section bg-light">
    <div class="container">

        <div class="row block-9">
            <div class="col-md-9 order-md-last d-flex">
                <?= validation_errors(); ?>
                <form action="" class="bg-white p-5 contact-form" method="post">
                    <div class="form-group">
                        <div class="icon"><span><strong>Your Name</strong></span></div>
                        <input type="text" name="nama" id="nama" class="form-control" placeholder="Your Name" required>
                    </div>
                    <div class="form-group">
                        <div class="icon"><span><strong>Your Email</strong></span></div>
                        <input type="email" name="email" id="email" class="form-control" placeholder="Your Email" required>
                    </div>
                    <div class="form-group">
                        <div class="icon"><span><strong>Create Password</strong></span></div>
                        <input type="password" name="pass" id="pass" class="form-control" placeholder="password" required>
                    </div>
                    <div class="form-group">
                        <div class="icon"><span><strong>No Handphone</strong></span></div>
                        <input type="number" name="hp" id="hp" class="form-control" placeholder="No Handphone" required>
                    </div>
                    <div class="form-group">
                        <div class="select-wrap">
                            <div class="icon"><span><strong>Jenis Kelamin</strong></span></div>
                            <select name="jk" id="jk" class="form-control">
                                <option value="L">Laki-laki</option>
                                <option value="P">Perempuan</option>

                            </select>
                        </div>
                    </div>
                    <button style="margin-left: 45%" type="submit" class="btn btn-primary  py-3 px-5">Daftar</button>

                </form>

            </div>


        </div>
    </div>
</section>