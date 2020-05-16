<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-shopping-cart"></i>

        </div>
        <div class="sidebar-brand-text mx-3">Tajeer</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Query Menu -->
    <?php
    //Join
    $role_id = $this->session->userdata('role_id');
    $query_menu = "SELECT `user_menu`.`id`, `menu`
                    FROM `user_menu` JOIN `user_access_menu`
                    ON `user_menu`.`id` = `user_access_menu`.`menu_id`
                    WHERE `user_access_menu`.`role_id`= $role_id
                    ORDER BY `user_access_menu`.`menu_id` ASC
                    ";
    //nagambil semua yg ada di db
    $menu = $this->db->query($query_menu)->result_array();

    ?>

    <!-- Looping Menu -->
    <?php
    foreach ($menu as $m) : ?>

        <div class="sidebar-heading">
            <?= $m["menu"]; ?>
        </div>

        <!-- Siapkan Sub Menu sesuai menu -->
        <?php
        $m_id = $m['id'];
        $query_sub_menu = "SELECT *
                      FROM `user_sub_menu` JOIN `user_menu`
                      ON `user_sub_menu`.`menu_id` = `user_menu`.`id`
                      WHERE `user_sub_menu`.`menu_id` = $m_id
                      AND `user_sub_menu`.`is_active`= 1
                      ";


        $sub_menu = $this->db->query($query_sub_menu)->result_array();

        ?>


        <?php foreach ($sub_menu as $sub) : ?>
            <!-- Nav Item - Dashboard -->
            <?php if ($sub_menu == $sub['title']) : ?>
                <li class="nav-item active">
                <?php else : ?>
                <li class="nav-item">
                <?php endif; ?>
                <a class="nav-link pb-0" href="<?= base_url($sub['url']); ?>">
                    <i class="<?= $sub['icon']; ?>"></i>
                    <span><?= $sub['title']; ?></span></a>
                </li>




            <?php endforeach; ?>
            <!-- Divider -->
            <hr class="sidebar-divider mt-3">

        <?php endforeach; ?>






        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('log/logout');   ?>">
                <i class="fas fa-fw fa-sign-out-alt"></i>

                <span>Logout</span></a>
        </li>

        <!-- Divider //untuk garis -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

</ul>
<!-- End of Sidebar -->