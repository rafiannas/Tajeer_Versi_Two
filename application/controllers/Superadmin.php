<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Superadmin extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        //cek_login();
        $this->load->model('superadminModel');
        $this->load->library('form_validation');
        $this->load->model('adminModel');
        
        $who = $this->session->userdata('role_id');
        if ($who != 1) {
            redirect('log/nakal');
        }
    }

    public function index()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();

        $data['toko'] = $this->superadminModel->jmhToko();
        $data['user'] = $this->superadminModel->jmhUser();
        $data['sa'] = $this->superadminModel->jmhSA();
        $data['transaksi'] = $this->superadminModel->jmhTransaksi();
        $data['kategori'] = $this->superadminModel->jmhKategori();
        $data['uang'] = $this->superadminModel->jmhUangTransaksi();
        

        $this->load->view('template/header', $data);
        $this->load->view('template/slidebar');
        $this->load->view('template/topbar', $data);
        $this->load->view('superadmin/index', $data);
        $this->load->view('template/footer');
    }

    public function list_toko()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();

        $data['toko'] = $this->superadminModel->getToko();
        $data['kategori'] = $this->adminModel->getKategoriGlobal();

        $this->form_validation->set_rules('name', 'Name', 'required|trim');
        $this->form_validation->set_rules('pemilik', 'Pemilik', 'required|trim');
        $this->form_validation->set_rules(
            'email',
            'Email',
            'required|trim|valid_email'
        );
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required|trim');
        $this->form_validation->set_rules('kat', 'Kat', 'required|trim');
        $this->form_validation->set_rules('password', 'Password', 'required|trim');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required|trim');
        $this->form_validation->set_rules('jk', 'Jk', 'required|trim');
        $this->form_validation->set_rules('nope', 'Nope', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header');
            $this->load->view('template/slidebar');
            $this->load->view('template/topbar', $data);
            $this->load->view('superadmin/list_toko', $data);
            $this->load->view('template/footer');
        } else {
            $email = $this->input->post('email');

            $cek = $this->db->get_where('user', ['email' => $email])->row_array();


            if (!$cek) {
                $inp1 = [
                    'nama' =>  htmlentities($this->input->post('pemilik')),
                    'email' => htmlentities($this->input->post('email')),
                    'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
                    'alamat' => htmlentities($this->input->post('alamat')),
                    'no_hp' => htmlentities($this->input->post('nope')),
                    'role_id' => 2,
                    'jenis_kelamin' => $this->input->post('jk'),
                    'is_active' => 1
                ];
                $this->db->insert('user', $inp1);

                $user = $this->db->get_where('user', ['email' => $email])->row_array();


                $inp2 = [
                    'owner' => $user['id'],
                    'nama_toko' => htmlentities($this->input->post('name')),
                    'deskripsi_toko' => htmlentities($this->input->post('deskripsi')),
                    'date_create' => time(),
                    'is_active' => 1,
                ];
                $this->db->insert('toko', $inp2);

                $tok = $this->db->get_where('toko', ['owner' => $user['id']])->row_array();


                $inp3 = [
                    'id_kategori_global' => $this->input->post('kat'),
                    'id_toko' => $tok['id'],
                    'jumlah' => 0,
                    'kategori_aktif' => 1
                ];
                $this->db->insert('kategori', $inp3);

                $this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">Berhasil menambahkan toko !</div>');
                redirect('superadmin/list_toko');
            } else {
                if ($cek['role_id'] == 2) {
                    $this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">Anda sudah memiliki toko !</div>');
                    redirect('superadmin/list_toko');
                } else if ($cek['role_id'] == 1) {
                    $this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">Super admin tidak boleh memiliki toko !</div>');
                    redirect('superadmin/list_toko');
                }

                $upd1 = [
                    'nama' =>  htmlentities($this->input->post('pemilik')),
                    'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
                    'alamat' => htmlentities($this->input->post('alamat')),
                    'no_hp' => htmlentities($this->input->post('nope')),
                    'role_id' => 2,
                    'jenis_kelamin' => $this->input->post('jk'),
                    'is_active' => 1
                ];
                $this->db->where('id', $cek['id']);
                $this->db->update('user', $upd1);

                $user = $this->db->get_where('user', ['email' => $email])->row_array();

                $upd2 = [
                    'owner' => $cek['id'],
                    'nama_toko' => htmlentities($this->input->post('name')),
                    'deskripsi_toko' => htmlentities($this->input->post('deskripsi')),
                    'date_create' => time(),
                    'is_active' => 1,
                ];
                $this->db->insert('toko', $upd2);

                $tok = $this->db->get_where('toko', ['owner' => $user['id']])->row_array();

                $inp3 = [
                    'id_kategori_global' => $this->input->post('kat'),
                    'id_toko' => $tok['id'],
                    'jumlah' => 0,
                    'kategori_aktif' => 1
                ];
                $this->db->insert('kategori', $inp3);

                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil menambahkan toko !</div>');
                redirect('superadmin/list_toko');
            }
        }
    }

    function s_edit_toko($id)
    {
        $ses = [
            'id_toko' => $id
        ];
        $this->session->set_userdata($ses);
        redirect('superadmin/edit_toko');
    }

    public function edit_toko()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();

        $id_toko = $this->session->userdata('id_toko');
        $data['toko'] = $this->superadminModel->getTokoBy($id_toko);
        $id_usr = $data['toko']['owner'];


        $this->form_validation->set_rules('password', 'Password', 'trim');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required|trim');
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required|trim');
        $this->form_validation->set_rules('nope', 'nope', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/slidebar');
            $this->load->view('template/topbar', $data);
            $this->load->view('superadmin/edit_toko', $data);
            $this->load->view('template/footer');
        } else {
            $pass = $this->input->post('password');
            if (!$pass) {
                $pass = $data['toko']['password'];
            } else {
                $pass = password_hash($this->input->post('password'), PASSWORD_DEFAULT);
            }

            $nam = htmlspecialchars($this->input->post('nama'));
            $upd = [
                'deskripsi_toko' => $this->input->post('deskripsi')
            ];
            $this->db->where('id', $id_toko);
            $this->db->update('toko', $upd);

            $upd2 = [
                'nama' => $nam,
                'no_hp' => htmlspecialchars($this->input->post('nope')),
                'alamat' => htmlspecialchars($this->input->post('alamat')),
                'password' => $pass
            ];
            $this->db->where('id', $id_usr);
            $this->db->update('user', $upd2);

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Merubah info toko ' . $nam  . '</div>');
            redirect('superadmin/list_toko');
        }
    }

    public function hapus_toko($id)
    {
        $nam = $this->db->get_where('toko', ['id' => $id])->row_array();
        $id_user = $nam['owner'];

        $this->db->set('is_active', 0);
        $this->db->where('id', $id);
        $this->db->update('toko');
        
        
        $this->db->set('role_id', 3);
        $this->db->where('id', $id_user);
        $this->db->update('user');
        

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Menghapus toko ' . $nam['nama_toko']  . '</div>');
        redirect('superadmin/list_toko');
    }


    public function hapus_user($id)
    {
        $nam = $this->db->get_where('user', ['id' => $id])->row_array();

        $this->db->where('id', $id);
        $this->db->delete('user');

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Menghapus user ' . $nam['nama']  . '</div>');
        redirect('superadmin/list_user');
    }


    public function list_user()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();

        $data['user'] = $this->superadminModel->getUser();

        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules(
            'email',
            'Email',
            'required|trim|valid_email|is_unique[user.email]',
            [
                'is_unique' => 'Email sudah terdaftar !'
            ]
        );

        $this->form_validation->set_rules('password', 'Password', 'required|trim');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required|trim');
        $this->form_validation->set_rules('jk', 'Jk', 'required|trim');
        $this->form_validation->set_rules('nope', 'Nope', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header');
            $this->load->view('template/slidebar');
            $this->load->view('template/topbar', $data);
            $this->load->view('superadmin/list_user', $data);
            $this->load->view('template/footer');
        } else {
            $ins = [
                'nama' => htmlspecialchars($this->input->post('nama')),
                'email' => htmlspecialchars($this->input->post('email')),
                'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
                'no_hp' => htmlspecialchars($this->input->post('nope')),
                'alamat' => htmlspecialchars($this->input->post('alamat')),
                'is_active' => 1,
                'role_id' => 3,
                'jenis_kelamin' => $this->input->post('jk')
            ];

            $this->db->insert('user', $ins);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil menambahkan user !</div>');
            redirect('superadmin/list_user');
        }
    }

    function s_edit_user($id)
    {
        $ses = [
            'id_u' => $id
        ];
        $this->session->set_userdata($ses);
        redirect('superadmin/edit_user');
    }

    public function edit_user()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();

        $id_u = $this->session->userdata('id_u');
        $data['editUser'] = $this->db->get_where('user', ['id' => $id_u])->row_array();

        $this->form_validation->set_rules('password', 'Password', 'trim');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required|trim');
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules('nope', 'Nope', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/slidebar');
            $this->load->view('template/topbar', $data);
            $this->load->view('superadmin/edit_user', $data);
            $this->load->view('template/footer');
        } else {
            $pass = $this->input->post('password');
            if (!$pass) {
                $pass = $data['editUser']['password'];
            } else {
                $pass = password_hash($this->input->post('password'), PASSWORD_DEFAULT);
            }

            $upd = [
                'nama' => htmlspecialchars($this->input->post('nama')),
                'no_hp' => htmlspecialchars($this->input->post('nope')),
                'alamat' => htmlspecialchars($this->input->post('alamat')),
                'password' => $pass
            ];

            $this->db->where('id', $id_u);
            $this->db->update('user', $upd);

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Merubah info user ' . $this->input->post('nama')  . '</div>');
            redirect('superadmin/list_user');
        }
    }


    public function list_order()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();

        $data['order'] = $this->superadminModel->getOrder();

        $this->load->view('template/header');
        $this->load->view('template/slidebar');
        $this->load->view('template/topbar', $data);
        $this->load->view('superadmin/list_order', $data);
        $this->load->view('template/footer');
    }


    public function history_order()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();

        $data['order'] = $this->superadminModel->getHistoryOrder();

        $this->load->view('template/header');
        $this->load->view('template/slidebar');
        $this->load->view('template/topbar', $data);
        $this->load->view('superadmin/history_order', $data);
        $this->load->view('template/footer');
    }

    public function ubah_pembayaran($id)
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();

        $ker = $this->db->get_where('keranjang', ['id' => $id])->row_array();

        $usr = $this->db->get_where('user', ['id' => $ker['user_id']])->row_array();
        $email_user = $usr['email'];
        $nama_user = $usr['nama'];

        $data['ubahPemb'] = $this->superadminModel->ubahPem($id);
        $data['rincian'] = $this->superadminModel->getRincian($id);
        $data['status'] = $this->superadminModel->getStatusBayar();


        $this->form_validation->set_rules('status', 'Status', 'required|trim');

        if ($this->form_validation->run() == false) {

            $this->load->view('template/header');
            $this->load->view('template/slidebar');
            $this->load->view('template/topbar', $data);
            $this->load->view('superadmin/ubah_pembayaran', $data);
            $this->load->view('template/footer');
        } else {
            $ok = $this->input->post('status');
            $edit = [
                'id_status_bayar' => $ok
            ];
            $this->db->where('id', $id);
            $this->db->update('keranjang', $edit);


            // KIRIM EMAIL KE USER ----------------------------------------
            $config['protocol']    = 'smtp';
            $config['smtp_host']    = 'ssl://smtp.gmail.com';
            $config['smtp_port']    = '465';
            $config['smtp_timeout'] = '7';
            $config['smtp_user']    = 'tajeer.storeuai@gmail.com';
            $config['smtp_pass']    = 'TajeerStore007';
            $config['charset']    = 'utf-8';
            $config['newline']    = "\r\n";
            $config['mailtype'] = 'text'; // or html
            $config['validation'] = TRUE; // bool whether to validate email or not      

            $this->email->initialize($config);

            $this->email->from('tajeer.storeuai@gmail.com', 'TAJEER STORE UAI');
            $this->email->to($email_user);

            $this->email->subject('Konfirmasi Pesanan TAJEER STORE UAI');
            $this->email->message('Pembeli ' . $nama_user . ' yang terhormat, status pesanan anda sudah diperbaharui. Silahkan cek status pesanan anda di Tajeer Store UAI
        
        ');
            $this->email->send();

            // KIRIM EMAIL KE USER ----------------------------------------

            // KIRIM EMAIL KE PENJUAL ----------------------------------------

            $toko = $this->db->get_where('toko', ['id' => $ker['id_toko']])->row_array();
            $penjual = $this->db->get_where('user', ['id' => $toko['owner']])->row_array();
            $email_penjual = $penjual['email'];
            $nama_penjual = $penjual['nama'];

            $config['protocol']    = 'smtp';
            $config['smtp_host']    = 'ssl://smtp.gmail.com';
            $config['smtp_port']    = '465';
            $config['smtp_timeout'] = '7';
            $config['smtp_user']    = 'tajeer.storeuai@gmail.com';
            $config['smtp_pass']    = 'TajeerStore007';
            $config['charset']    = 'utf-8';
            $config['newline']    = "\r\n";
            $config['mailtype'] = 'text'; // or html
            $config['validation'] = TRUE; // bool whether to validate email or not      

            $this->email->initialize($config);

            $this->email->from('tajeer.storeuai@gmail.com', 'TAJEER STORE UAI');
            $this->email->to($email_penjual);

            $this->email->subject('Konfirmasi Pesanan TAJEER STORE UAI');
            $this->email->message('Penjual ' . $nama_user . ' yang terhormat, Pembeli sudah membayar pesanannya. Segera kirimkan barang kepada pembeli
    
    ');

            // KIRIM EMAIL KE PENJUAL ----------------------------------------

            if ($this->email->send()) {
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Status Pembayaran ' . $nama_user  . ' Berhasil di Ubah !</div>');
                redirect('superadmin/list_order');
            } else {

                echo $this->email->print_debugger();
                die;
            }
        }
    }

    public function status_barang($id)
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();

        $data['ubahPemb'] = $this->superadminModel->ubahPem($id);
        $data['rincian'] = $this->superadminModel->getRincian($id);
        $data['status'] = $this->adminModel->getStatusBarang2();


        $this->form_validation->set_rules('status', 'Status', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header');
            $this->load->view('template/slidebar');
            $this->load->view('template/topbar', $data);
            $this->load->view('superadmin/status_barang', $data);
            $this->load->view('template/footer');
        } else {
            $ok = $this->input->post('status');
            $edit = [
                'id_status_barang' => $ok
            ];
            $this->db->where('id', $id);
            $this->db->update('keranjang', $edit);

            $ker = $this->db->get_where('keranjang', ['id' => $id])->row_array();
            $usr = $this->db->get_where('user', ['id' => $ker['user_id']])->row_array();
            $email_user = $usr['email'];
            $nama_user = $usr['nama'];

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Status Barang  ' . $nama_user . ' Berhasil di Ubah !</div>');
            redirect('superadmin/list_order');
        }
    }

    public function list_kategori()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();

        $data['kategori'] = $this->adminModel->getKategoriGlobal();
        $this->form_validation->set_rules('name', 'Name', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header');
            $this->load->view('template/slidebar');
            $this->load->view('template/topbar', $data);
            $this->load->view('superadmin/list_kategori', $data);
            $this->load->view('template/footer');
        } else {
            $ins = [
                'kategori' => $this->input->post('name'),
                'is_active' => 1
            ];

            $this->db->insert('kategori_global', $ins);

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil menambahkan kategori !</div>');
            redirect('superadmin/list_kategori');
        }
    }

    public function edit_kategori($id)
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();

        $data['kategori'] = $this->adminModel->getKategoriGlobalBy($id);
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header');
            $this->load->view('template/slidebar');
            $this->load->view('template/topbar', $data);
            $this->load->view('superadmin/edit_kategori', $data);
            $this->load->view('template/footer');
        } else {
            $nama = $this->input->post('nama');

            $this->db->set('kategori', $nama);
            $this->db->where('id', $id);
            $this->db->update('kategori_global');

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil merubah kategori ' . $nama . ' !</div>');
            redirect('superadmin/list_kategori');
        }
    }

    public function hapus_kategori($id)
    {
        $data = $this->adminModel->getKategoriGlobalBy($id);
        $nama = $data['kategori'];

        $this->db->set('is_active', 0);
        $this->db->where('id', $id);
        $this->db->update('kategori_global');


        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil menghapus kategori ' . $nama . ' !</div>');
        redirect('superadmin/list_kategori');
    }

    public function list_superadmin()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();

        $data['super'] = $this->superadminModel->getSuperAdmin();

        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules(
            'email',
            'Email',
            'required|trim|valid_email|is_unique[user.email]',
            [
                'is_unique' => 'Email sudah terdaftar !'
            ]
        );

        $this->form_validation->set_rules('password', 'Password', 'required|trim');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required|trim');
        $this->form_validation->set_rules('jk', 'Jk', 'required|trim');
        $this->form_validation->set_rules('nope', 'Nope', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header');
            $this->load->view('template/slidebar');
            $this->load->view('template/topbar', $data);
            $this->load->view('superadmin/list_superadmin', $data);
            $this->load->view('template/footer');
        } else {
            $email = htmlspecialchars($this->input->post('email'));
            $cek = $this->db->get_where('user', ['email' => $email])->row_array();

            if ($cek) {
                if ($cek['role_id'] == 1) {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email sudah terdaftar menjadi super admin !</div>');
                    redirect('superadmin/list_superadmin');
                } else if ($cek['role_id'] == 2) {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email sudah terdaftar menjadi admin toko !</div>');
                    redirect('superadmin/list_superadmin');
                } else if ($cek['role_id'] == 3) {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email sudah terdaftar menjadi user, silahkan ubah di "Edit User" !</div>');
                    redirect('superadmin/list_superadmin');
                }
            }

            $ins = [
                'nama' => htmlspecialchars($this->input->post('nama')),
                'email' => $email,
                'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
                'no_hp' => htmlspecialchars($this->input->post('nope')),
                'alamat' => htmlspecialchars($this->input->post('alamat')),
                'is_active' => 1,
                'role_id' => 1,
                'jenis_kelamin' => $this->input->post('jk')
            ];

            $this->db->insert('user', $ins);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil menambahkan user !</div>');
            redirect('superadmin/list_superadmin');
        }
    }

    function s_edit_superadmin($id)
    {
        $ses = [
            'id_u' => $id
        ];
        $this->session->set_userdata($ses);
        redirect('superadmin/edit_superadmin');
    }

    public function edit_superadmin()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();

        $id_u = $this->session->userdata('id_u');
        $data['editUser'] = $this->db->get_where('user', ['id' => $id_u])->row_array();
        $data['role'] = $this->db->get('user_role')->result_array();

        $this->form_validation->set_rules('password', 'Password', 'trim');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required|trim');
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules('nope', 'Nope', 'required|trim');
        $this->form_validation->set_rules('role', 'Role', 'trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/slidebar');
            $this->load->view('template/topbar', $data);
            $this->load->view('superadmin/edit_superadmin', $data);
            $this->load->view('template/footer');
        } else {
            $pass = $this->input->post('password');
            if (!$pass) {
                $pass = $data['editUser']['password'];
            } else {
                $pass = password_hash($this->input->post('password'), PASSWORD_DEFAULT);
            }

            $upd = [
                'nama' => htmlspecialchars($this->input->post('nama')),
                'no_hp' => htmlspecialchars($this->input->post('nope')),
                'alamat' => htmlspecialchars($this->input->post('alamat')),
                'password' => $pass,
                'role_id' => $this->input->post('role')
            ];

            $this->db->where('id', $id_u);
            $this->db->update('user', $upd);

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Merubah info super admin ' . $this->input->post('nama')  . '</div>');
            redirect('superadmin/list_superadmin');
        }
    }

    public function hapus_superadmin($id)
    {
        $nam = $this->db->get_where('user', ['id' => $id])->row_array();

        $this->db->where('id', $id);
        $this->db->delete('user');

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Menghapus super admin ' . $nam['nama']  . '</div>');
        redirect('superadmin/list_superadmin');
    }
    
     public function hapus_order($id)
    {
        $ker= $this->db->get_where('keranjang', ['id' => $id])->row_array();
        $isi_ker = $this->db->get_where('isi_keranjang', ['id_keranjang' => $id])->result_array();
        
        $this->db->where('id', $id);
        $this->db->delete('keranjang');
     
        foreach($isi_ker as $del){
             $this->db->where('id', $del['id']);
            $this->db->delete('isi_keranjang');
        }

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Menghapus Order</div>');
        redirect('superadmin/list_order');
    }
}
