<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        //cek_login();
        $this->load->model('adminModel');
        $this->load->model('superadminModel');
        $this->load->library('form_validation');
        
         $who = $this->session->userdata('role_id');
        if ($who == 3) {
            redirect('log/nakal');
        }
        
    }

    public function index()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();
        $toko= $this->db->get_where('toko', ['owner' => $this->session->userdata('id_user')])->row_array();
        $id_toko = $toko['id'];
    
        $data['order'] = $this->adminModel->jmhOrder($id_toko);
            $data['transaksi'] = $this->adminModel->jmhTransaksi($id_toko);
          

        $this->load->view('template/header');
        $this->load->view('template/slidebar');
        $this->load->view('template/topbar', $data);
        $this->load->view('admin/index', $data);
        $this->load->view('template/footer');
    }

    public function my_order()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();
        $id_usr =   $data['saya_user']['id'];
        $toko = $this->db->get_where('toko', ['owner' => $id_usr])->row_array();
        $id_toko = $toko['id'];

        $data['order'] = $this->adminModel->getMyOrder($id_toko);
        $this->load->view('template/header');
        $this->load->view('template/slidebar');
        $this->load->view('template/topbar', $data);
        $this->load->view('admin/my_order', $data);
        $this->load->view('template/footer');
    }
    
     public function history_my_order()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();
        $id_usr =   $data['saya_user']['id'];
        $toko = $this->db->get_where('toko', ['owner' => $id_usr])->row_array();
        $id_toko = $toko['id'];

        $data['order'] = $this->adminModel->getMyHistoryOrder($id_toko);
        $this->load->view('template/header');
        $this->load->view('template/slidebar');
        $this->load->view('template/topbar', $data);
        $this->load->view('admin/my_order', $data);
        $this->load->view('template/footer');
    }


    public function cetak_invoice($id)
    {
        $toko = $this->db->get_where('toko', ['owner' => $this->session->userdata('id_user')])->row_array();
        $id_toko_1 = $toko['id'];
        
         $cek = $this->superadminModel->ubahPem($id);
        $id_toko_2 = $cek['id_toko'];
        if ($this->session->userdata('role_id') != 1) {
             if ($id_toko_1 != $id_toko_2) {
            redirect('log/nakal');
            }
            
        }
       
        
        $flag3 = ['id_invoice' => $id];
        $this->session->set_userdata($flag3);
        redirect('invoice');
    }


    public function my_toko()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();
        $id_usr =   $data['saya_user']['id'];
        $toko = $this->db->get_where('toko', ['owner' => $id_usr])->row_array();

        $id_toko =   $toko['id'];
        $d = ['id_toko' => $id_toko];
        $this->session->set_userdata($d);

        $data['info'] = $this->adminModel->getMyToko($id_toko);
        $data['jmhProduk'] = $this->adminModel->hitungProduk($id_toko);
        $data['kategori'] = $this->adminModel->getKategori($id_toko);
        $data['kategoriGlobal'] = $this->adminModel->getKategoriGlobal();

        $data['myKategori'] = $this->adminModel->getKategoriById($id_toko);

        $this->form_validation->set_rules('kategori', 'Kategori', 'required');

        // $this->form_validation->set_rules('kat', 'Kat', 'required');
        $this->form_validation->set_rules('name', 'Name', 'required');
        $this->form_validation->set_rules('harga', 'Harga', 'required');
        $this->form_validation->set_rules('stok', 'Stok', 'required');
        $this->form_validation->set_rules('berat', 'Berat', 'required');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header');
            $this->load->view('template/slidebar');
            $this->load->view('template/topbar', $data);
            $this->load->view('admin/my_toko', $data);
            $this->load->view('template/footer');
        }
    }


    public function edit_toko()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();

        $toko = $this->db->get_where('toko', ['owner' =>  $this->session->userdata('id_user')])->row_array();

        $id_toko = $toko['id'];
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
            $this->load->view('admin/edit_my_toko', $data);
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

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Merubah info toko </div>');
            redirect('admin/my_toko');
        }
    }

    function tambah_produk()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();
        $id_usr = $data['saya_user']['id'];
        $toko = $this->db->get_where('toko', ['owner' => $id_usr])->row_array();
        // var_dump($toko);

        $id_toko =  $toko['id'];
        // var_dump($id_toko);
        $kat = $this->db->get_where('kategori', ['id_toko' => $id_toko])->row_array();
        $id_kat = $kat['id_kategori_global'];
        // var_dump($kat);

        $upload = $_FILES['image']['name'];
        if ($upload) {
            $config['allowed_types'] = 'jpg|png|jpeg';
            $config['max_size']     = '1024';
            $config['upload_path'] = './assets/image/produk/';

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {

                $new_image = $this->upload->data('file_name');
                $this->db->set('image', $new_image);
            }
        }

        $inp = [
            'id_toko' => $id_toko,
            'nama_produk' => $this->input->post('name'),
            'id_kategori_produk' => $id_kat,
            'stok' => $this->input->post('stok'),
            'harga' =>  $this->input->post('harga'),
            'deskripsi' =>  $this->input->post('deskripsi'),
            'berat' => $this->input->post('berat')
        ];
        $this->db->insert('produk', $inp);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil menambah produk</div>');
        redirect('admin/my_toko');
    }

    function tambah_kategori()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();
        $id_toko =   $data['saya_user']['id'];

        $data = [
            'id_kategori_global' => $this->input->post('kategori'),
            'id_toko' => $id_toko,
            'kategori_aktif' => 1
        ];
        $this->db->insert('kategori', $data);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil menambah kategori</div>');
        redirect('admin/my_toko');
    }

    public function s_my_produk($id)
    {
        $flag = ['id_kategori' => $id];
        $this->session->set_userdata($flag);

        redirect('admin/my_produk');
    }


    public function my_produk()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();
        $id_toko =   $this->session->userdata('id_toko');
        $id_kategori = $this->session->userdata('id_kategori');
        $data['myProduk'] = $this->adminModel->getMyProduk($id_toko, $id_kategori);
        $data['kat'] = $this->db->get_where('kategori_global', ['id' => $id_kategori])->row_array();

        $this->load->view('template/header');
        $this->load->view('template/slidebar');
        $this->load->view('template/topbar', $data);
        $this->load->view('admin/my_produk', $data);
        $this->load->view('template/footer');
    }
    
     function s_status_barang($id)
    {
        $ses = [
            'id_br' => $id
        ];
        $this->session->set_userdata($ses);
        redirect('admin/status_barang');
    }

    public function status_barang()
    {
        $id = $this->session->userdata('id_br');
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();
        $toko = $this->db->get_where('toko', ['owner' => $this->session->userdata('id_user')])->row_array();
        $id_toko_1 = $toko['id'];
        
     
        $data['ubahPemb'] = $this->superadminModel->ubahPem($id);
        $id_toko_2 = $data['ubahPemb']['id_toko'];
        
        if ($id_toko_1 != $id_toko_2) {
            redirect('log/nakal');
        }
        
        
        $data['rincian'] = $this->superadminModel->getRincian($id);
        $data['status'] = $this->adminModel->getStatusBarang();


        $this->form_validation->set_rules('status', 'Status', 'required|trim');
        $this->form_validation->set_rules('resi', 'Resi', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header');
            $this->load->view('template/slidebar');
            $this->load->view('template/topbar', $data);
            $this->load->view('admin/status_barang', $data);
            $this->load->view('template/footer');
        } else {
            $ok = $this->input->post('status');
            $edit = [
                'id_status_barang' => $ok,
                'resi' => $this->input->post('resi')
            ];
            $this->db->where('id', $id);
            $this->db->update('keranjang', $edit);

            $ker = $this->db->get_where('keranjang', ['id' => $id])->row_array();
            $usr = $this->db->get_where('user', ['id' => $ker['user_id']])->row_array();
            $email_user = $usr['email'];
            $nama_user = $usr['nama'];


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
            $this->email->message('Pembeli ' . $nama_user . ' yang terhormat, status pesanan anda sudah dikirim oleh penjual. Pesanan anda dikirimkan dengan pengiriman dan nomor resi' . $this->input->post('resi') . '
            Silahkan cek status pesanan anda di Tajeer Store UAI
         
         ');

            // KIRIM EMAIL KE USER ----------------------------------------
            $this->email->send();

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Status Barang  ' . $nama_user . ' Berhasil di Ubah !</div>');
            redirect('admin/my_order');
        }
    }
    public function s_edit($id)
    {

        $flag = ['id_produk' => $id];
        $this->session->set_userdata($flag);
        redirect('admin/edit_produk');
    }

    public function edit_produk()
    {
        $data['saya_user'] = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();
        $id_toko = $data['saya_user']['id'];

        $id = $this->session->userdata('id_produk');
        $data['produk'] = $this->adminModel->getProdukBy($id);

        $data['myKategori'] = $this->adminModel->getKategoriById($id_toko);


        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('harga', 'Harga', 'required');
        $this->form_validation->set_rules('stok', 'Stok', 'required');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header');
            $this->load->view('template/slidebar');
            $this->load->view('template/topbar', $data);
            $this->load->view('admin/edit_produk', $data);
            $this->load->view('template/footer');
        } else {



            $upload = $_FILES['image']['name'];
            if ($upload) {
                $config['allowed_types'] = 'jpg|png|jpeg';
                $config['max_size']     = '1024';
                $config['upload_path'] = './assets/image/produk/';

                $this->load->library('upload', $config);

                if ($this->upload->do_upload('image')) {
                    $old_image = $data['produk']['image'];
                    if ($old_image != 'default.png') {
                        unlink(FCPATH . './assets/image/produk/' . $old_image);
                    }
                    $new_image = $this->upload->data('file_name');
                    $this->db->set('image', $new_image);
                }
            }

            $upd = [
                'nama_produk' => htmlspecialchars($this->input->post('nama')),
                'stok' =>  htmlspecialchars($this->input->post('stok')),
                'harga' =>  htmlspecialchars($this->input->post('harga')),
                'deskripsi' =>  htmlspecialchars($this->input->post('deskripsi'))

            ];
            $this->db->where('id_produk', $id);
            $this->db->update('produk', $upd);

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Info Produk Berhasil di Ubah !</div>');
            redirect('admin/my_produk');
        }
    }

    public function hapus_produk($id)
    {
        $this->db->where('id_produk', $id);
        $this->db->delete('produk');

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Menghapus Produk</div>');
        redirect('admin/my_produk');
    }
}
