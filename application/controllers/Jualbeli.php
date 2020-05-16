<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Jualbeli extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        
          redirect('log/maintenance');
        
        $this->load->library('form_validation');
        $this->load->model('userModel');
        $this->load->model('jualbeliModel');
        $this->load->library('email');
    }
    public function home()
    {
         $this->session->unset_userdata('keyword');
         redirect('jualbeli');
    }

    public function index()
    {

        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $data['slider'] = $this->userModel->getSlider();
        $data['produk'] = $this->userModel->getKG();

        $data['front'] = $this->jualbeliModel->getFront();
        
        //ambil keyword
        if ($this->input->post('submit')) {
            $data['keyword'] = $this->input->post('keyword');
            $this->session->set_userdata('keyword', $data['keyword']);
        } else {
             $data['keyword'] = $this->session->userdata('keyword');
        }
        
        
        
        //load library pagination n config
        $this->load->library('pagination');
        $config['base_url'] = 'https://www.tajeer.store/jualbeli/index';
        
        $this->db->like('nama_produk', $data['keyword']);
        $this->db->from('produk');
        //$config['total_rows'] = $this->jualbeliModel->countProduk();
          $config['total_rows'] = $this->db->count_all_results();
        $config['per_page'] = 32;
        
        //styling
        $config['full_tag_open'] = '<nav><ul class="pagination">';
        $config['full_tag_close'] = '</ul></nav>';
        
        $config['first_link'] = 'First';
        $config['first_tag_open'] = '<li class="page-item">';
        $config['first_tag_close'] = '<li>';
        
        $config['last_link'] = 'Last';
        $config['last_tag_open'] = '<li class="page-item">';
        $config['last_tag_close'] = '<li>';
        
        $config['next_link'] = '&raquo';
        $config['next_tag_open'] = '<li class="page-item">';
        $config['next_tag_close'] = '<li>';
        
        $config['prev_link'] = '&laquo';
        $config['prev_tag_open'] = '<li class="page-item">';
        $config['prev_tag_close'] = '<li>';
        
        $config['cur_tag_open'] = '<li class="page-item active"><a class="page-link" href="#">';
        $config['cur_tag_close'] = '</a><li>';
        
        $config['num_tag_open'] = '<li class="page-item">';
        $config['num_tag_close'] = '<li>';
        
        $config['attributes'] = array('class' => 'page-link');
         
        //initialize
        $this->pagination->initialize($config);
        
        $data['start'] = $this->uri->segment(3);
        $data['front'] = $this->jualbeliModel->getPag($config['per_page'], $data['start'], $data['keyword']);
        
        



        $this->load->view('template/header_user', $data);
        $this->load->view('jualbeli/index', $data);
        $this->load->view('template/footer_user');
    }
    function s_kategori($id)
    {
        $ka = [
            'id_katGlo' => $id
        ];
        $this->session->set_userdata($ka);
        redirect('jualbeli/kategori');
    }

    function kategori()
    {
       
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $data['slider'] = $this->userModel->getSlider();
        $data['produk'] = $this->userModel->getKG();

        $id_kg = $this->session->userdata('id_katGlo');
        $data['isiProduk'] = $this->userModel->getKgBy($id_kg);
        $data['title'] =  $this->db->get_where('kategori_global', ['id' => $id_kg])->row_array();
         

        $data['front'] = $this->jualbeliModel->getFront();


        $this->load->view('template/header_user', $data);
        $this->load->view('jualbeli/kategori', $data);
        $this->load->view('template/footer_user');
    }



    public function s_view($id)
    {
        $ses1 = [
            'id_produk' => $id
        ];
        $this->session->set_userdata($ses1);
        redirect('jualbeli/view');
    }



    public function view()
    {
        $data['produk'] = $this->userModel->getKG();
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $data['slider'] = $this->userModel->getSlider();

        $id_p = $this->session->userdata('id_produk');
        $data['view'] = $this->jualbeliModel->getView($id_p);
        $id_k_p = $data['view']['id_kategori_produk'];
        
        $data['other'] = $this->jualbeliModel->getOther($id_p, $id_k_p);
        $id_toko = $data['view']['id_toko'];
        $stok_db = $data['view']['stok'];

        $this->form_validation->set_rules('quantity', 'Quantity', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header_user', $data);
            $this->load->view('jualbeli/single_produk', $data);
            $this->load->view('template/footer_user');
        } else {
            $id_user = $this->session->userdata('id_user');
            if (!$id_user) {
                echo " <script>
				alert('Silahkan Login / Register terlebih dahulu ');
				document.location.href = '../user/login'
			</script>
		";
            }
            $stok_inp = $this->input->post('quantity');
            if ($stok_db < $stok_inp) {
                $this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">Sorry, purchase exceeded stock !</div>');
                redirect('jualbeli/view');
            }



            $cek_keranjang = $this->jualbeliModel->getCekKeranjang($id_toko, $id_user);
            $id_ker = $cek_keranjang['id'];
            if (!$cek_keranjang) {
                //buat keranjang baru
                $buat_keranjang = [
                    'id_toko' => $id_toko,
                    'user_id' => $id_user,
                    'id_status_bayar' => 1
                ];
                $this->db->insert('keranjang', $buat_keranjang);

                //tambahin barang dari keranjang baru
                $keranjang = $this->jualbeliModel->getCekKeranjang($id_toko, $id_user);

                $add = [
                    'id_keranjang' => $keranjang['id'],
                    'id_produk' => $id_p,
                    'jumlah' => $this->input->post('quantity'),

                ];
                $this->db->insert('isi_keranjang', $add);

                $upd = [

                    'jmh_produk' => $keranjang['jmh_produk'] + 1
                ];
                $this->db->where('id', $keranjang['id']);
                $this->db->update('keranjang', $upd);

                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Product Added Successfully</div>');
                redirect('jualbeli/view');
            } else {
                //cek pernah beli barang ini ga
                $cek_isi = $this->jualbeliModel->getCekIsi($id_ker, $id_p);
                if ($cek_isi) {
                    $new_stok = $cek_isi['jumlah'] + $this->input->post('quantity');

                    if ($stok_db <= $new_stok) {
                        $this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">Sorry, purchase exceeded stock !</div>');
                        redirect('jualbeli/view');
                    }

                    $upd_isi = [
                        'jumlah' => $new_stok,

                    ];
                    $this->db->where('id', $cek_isi['id']);
                    $this->db->update('isi_keranjang', $upd_isi);
                    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Product Added Successfully</div>');
                    redirect('jualbeli/view');
                }

                //tambahin barang

                $add = [
                    'id_keranjang' => $cek_keranjang['id'],
                    'id_produk' => $id_p,
                    'jumlah' => $this->input->post('quantity'),

                ];
                $this->db->insert('isi_keranjang', $add);

                $upd = [

                    'jmh_produk' => $cek_keranjang['jmh_produk'] + 1
                ];
                $this->db->where('id', $cek_keranjang['id']);
                $this->db->update('keranjang', $upd);
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Product Added Successfully</div>');
                redirect('jualbeli/view');
            }
        }
    }

    public function cart()
    {
        $data['produk'] = $this->userModel->getKG();
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $id_user = $this->session->userdata('id_user');
        $data['cart'] = $this->jualbeliModel->getChart($id_user);

        $this->load->view('template/header_user', $data);
        $this->load->view('jualbeli/cart', $data);
        $this->load->view('template/footer_user');
    }
    public function plus($id)
    {
        $q = $this->db->get_where('isi_keranjang', ['id' => $id])->row_array();

        $id_p = $q['id_produk'];
        $produk = $this->db->get_where('produk', ['id_produk' => $id_p])->row_array();
        $stok_produk = $produk['stok'];

        $stok_new = $q['jumlah'] + 1;
        if ($stok_new > $stok_produk) {
            $this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">Sorry, purchase exceeded stock !</div>');
            redirect('jualbeli/cart');
        }

        $data = [
            'jumlah' => $stok_new
        ];
        $this->db->where('id', $q['id']);
        $this->db->update('isi_keranjang', $data);
        redirect('jualbeli/cart');
    }

    public function minus($id)
    {
        $q = $this->db->get_where('isi_keranjang', ['id' => $id])->row_array();
        $id_p = $q['id_produk'];
        $produk = $this->db->get_where('produk', ['id_produk' => $id_p])->row_array();

        $stok_new = $q['jumlah'] - 1;

        if ($stok_new < 1) {
            $this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">Sorry, minimum purchase 1 !</div>');
            redirect('jualbeli/cart');
        }


        $data = [
            'jumlah' => $stok_new
        ];
        $this->db->where('id', $q['id']);
        $this->db->update('isi_keranjang', $data);
        redirect('jualbeli/cart');
    }
    public function dell($id)
    {
        $isi = $this->db->get_where('isi_keranjang', ['id' => $id])->row_array();
        $id_ker = $isi['id_keranjang'];

        $ker = $this->db->get_where('keranjang', ['id' => $id_ker])->row_array();
        $jmh = $ker['jmh_produk'] - 1;


        if ($jmh == 0) {
            $this->db->where('id', $id_ker);
            $this->db->delete('keranjang');
        } else {

            $data = [
                'jmh_produk' => $jmh
            ];
            $this->db->where('id', $id_ker);
            $this->db->update('keranjang', $data);
        }

        $this->db->where('id', $id);
        $this->db->delete('isi_keranjang');

        redirect('jualbeli/cart');
    }
    public function s_profil($id)
    {
        $ses2 = [
            'id_toko' => $id
        ];
        $this->session->set_userdata($ses2);
        redirect('jualbeli/profil');
    }
    public function profil()
    {
        $data['produk'] = $this->userModel->getKG();
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $id_toko = $this->session->userdata('id_toko');

        $data['profil'] = $this->jualbeliModel->getProfil($id_toko);
        $data['kategori'] = $this->jualbeliModel->getKategori($id_toko);

        $data['produk'] = $this->jualbeliModel->getProdukProfil($id_toko);


        $this->load->view('template/header_user', $data);
        $this->load->view('jualbeli/profil', $data);
        $this->load->view('template/footer_user');
    }

    function data_barang()
    {
        $data = $this->jualbeliModel->barangList();
        echo json_encode($data);
    }

    public function s_checkout($id)
    {
        $ses2 = [
            'id_keranjang' => $id
        ];
        $this->session->set_userdata($ses2);
        redirect('jualbeli/checkout');
    }


    public function checkout()
    {
        $data['produk'] = $this->userModel->getKG();
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();

        $id_ker = $this->session->userdata('id_keranjang');

        $id_user = $this->session->userdata('id_user');




        $isi_ker = $this->jualbeliModel->getIsiCheck($id_ker);
        //var_dump($isi_ker);
        $ttl_harga = 0;
        $ttl_berat = 0;
        foreach ($isi_ker as $isi) {
            $id_isi_ker = $isi['id'];
            $id_produk = $isi['id_produk'];
            $produk = $this->jualbeliModel->getProCheck($id_produk);

            $hrg = $produk['harga'] * $isi['jumlah'];
            $brt = $produk['berat'] * $isi['jumlah'];

            $inp = [
                'harga' => $produk['harga'],
                'total_harga_per_produk' => $hrg,
                'total_berat_per_produk' => $brt
            ];
            $this->db->where('id', $id_isi_ker);
            $this->db->update('isi_keranjang', $inp);
            $ttl_harga += $hrg;
            $ttl_berat += $brt;
        }
        $inp2 = [
            'total_harga' => $ttl_harga+3,
            'total_berat' => $ttl_berat,
        ];
        $this->db->where('id', $id_ker);
        $this->db->update('keranjang', $inp2);

        $data['keranjang'] = $this->jualbeliModel->getCheckout($id_ker);
        $data['keranjang2'] = $this->jualbeliModel->getCheckout2($id_ker);


        $data['user'] = $this->jualbeliModel->getUser($id_user);
        $data['kurir'] = $this->jualbeliModel->getKurir();

        $this->form_validation->set_rules('kurir', 'Kurir', 'required|trim');

        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules('no_hp', 'No_hp', 'required|trim');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required|trim');
        $this->form_validation->set_rules('catatan', 'Catatan', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header_user', $data);
            $this->load->view('jualbeli/checkout', $data);
            $this->load->view('template/footer_user');
        }
    }

    function cekOngkir()
    {
        $id_ker = $this->session->userdata('id_keranjang');
        $keranjang = $this->jualbeliModel->getCheckout($id_ker);

        $id_ongkir = $this->input->post('kurir');

        $cek = $this->jualbeliModel->cekKurir($id_ongkir);
        $harga = $cek['harga'];

        $total_harga = $keranjang['total_harga'];
        $berat = $keranjang['total_berat'] / 5000;

        $berat = ceil($berat);

        $upt = [
            'id_kurir' => $id_ongkir,
            'ongkir' => $harga * $berat,
            'harga_all' => ($harga * $berat) + $total_harga
        ];
        $this->db->where('id', $id_ker);
        $this->db->update('keranjang', $upt);
        redirect('jualbeli/checkout');
    }

    function paid()
    {


        date_default_timezone_set('Asia/Jakarta');
        $tgl = date('Y-m-d h:i:s'); // tgl

        $id_ker = $this->session->userdata('id_keranjang');
        $isi_ker = $this->jualbeliModel->getIsiCheck($id_ker);

        foreach ($isi_ker as $isi) {
            //$id_isi_ker = $isi['id'];

            $id_produk = $isi['id_produk'];
            $produk = $this->jualbeliModel->getProCheck($id_produk);
            if ($produk['stok'] < $isi['jumlah']) {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Sorry, the purchase exceeds the stock. please check stock available !</div>');
                redirect('jualbeli/cart');
            } else {
                $stok_new = $produk['stok'] - $isi['jumlah'];

                $up = ['stok' => $stok_new];
                $this->db->where('id_produk', $id_produk);
                $this->db->update('produk', $up);
            }
        }

        $add = [
            'id_status_bayar' => 2,
            'id_status_barang' => 1,
            'penerima' => htmlspecialchars($this->input->post('nama')),
            'alamat_penerima' => htmlspecialchars($this->input->post('alamat')),
            'no_hp' => htmlspecialchars($this->input->post('no_hp')),
            'tgl' =>  $tgl,
            'catatan' => htmlspecialchars($this->input->post('catatan'))
        ];

        $this->db->where('id', $id_ker);
        $this->db->update('keranjang', $add);
        redirect('jualbeli/notif_order');
    }

    public function notif_order()
    {
        $id_user = $this->session->userdata('id_user');
        $user = $this->db->get_where('user', ['id' => $id_user])->row_array();
        $email_user = $user['email'];
        $nama_user = $user['nama'];
        $id_ker = $this->session->userdata('id_keranjang');


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
        $this->email->message('Terima kasih ' . $nama_user . ', sudah berbelanja di Tajeer Store UAI
        Please make your payment to Bank Mandiri
            An. YPI Al-Azhar,
            Account no. 1260099013293,
            And send your confirmation to,
            Whatsapp: 08881337312,
            Or line id : @tajeer_uai
        
        ');

        if ($this->email->send()) {
            redirect('user/s_detail/' . $id_ker);
        } else {

            echo $this->email->print_debugger();
            die;
        }
    }



    // function _api_ongkir_post($origin, $des, $qty, $cour)
    // {
    //     $curl = curl_init();
    //     curl_setopt_array($curl, array(
    //         CURLOPT_URL => "https://api.rajaongkir.com/starter/cost",
    //         CURLOPT_RETURNTRANSFER => true,
    //         CURLOPT_ENCODING => "",
    //         CURLOPT_MAXREDIRS => 10,
    //         CURLOPT_TIMEOUT => 30,
    //         CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    //         CURLOPT_CUSTOMREQUEST => "POST",
    //         CURLOPT_POSTFIELDS => "origin=" . $origin . "&destination=" . $des . "&weight=" . $qty . "&courier=" . $cour,
    //         CURLOPT_HTTPHEADER => array(
    //             "content-type: application/x-www-form-urlencoded",
    //             /* masukan api key disini*/
    //             "key: 298a8959b7777928671603225651c891"
    //         ),
    //     ));

    //     $response = curl_exec($curl);
    //     $err = curl_error($curl);

    //     curl_close($curl);

    //     if ($err) {
    //         return $err;
    //     } else {
    //         return $response;
    //     }
    // }





    //     function _api_ongkir($data)
    //     {
    //         $curl = curl_init();

    //         curl_setopt_array($curl, array(
    //             //CURLOPT_URL => "https://api.rajaongkir.com/starter/province?id=12",
    //             //CURLOPT_URL => "http://api.rajaongkir.com/starter/province",
    //             CURLOPT_URL => "http://api.rajaongkir.com/starter/" . $data,
    //             CURLOPT_RETURNTRANSFER => true,
    //             CURLOPT_ENCODING => "",
    //             CURLOPT_MAXREDIRS => 10,
    //             CURLOPT_TIMEOUT => 30,
    //             CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    //             CURLOPT_CUSTOMREQUEST => "GET",
    //             CURLOPT_HTTPHEADER => array(
    //                 /* masukan api key disini*/
    //                 "key: 298a8959b7777928671603225651c891"
    //             ),
    //         ));

    //         $response = curl_exec($curl);
    //         $err = curl_error($curl);

    //         curl_close($curl);

    //         if ($err) {
    //             return  $err;
    //         } else {
    //             return $response;
    //         }
    //     }


    //     public function provinsi()
    //     {

    //         $provinsi = $this->_api_ongkir('province');
    //         $data = json_decode($provinsi, true);
    //         echo json_encode($data['rajaongkir']['results']);
    //     }


    //     public function kota($provinsi = "")
    //     {
    //         if (!empty($provinsi)) {
    //             if (is_numeric($provinsi)) {
    //                 // $data1 = ['a_p' => $provinsi];
    //                 // $this->db->where('id', 1);
    //                 // $this->db->update('tes', $data1);
    //                 $kota = $this->_api_ongkir('city?province=' . $provinsi);

    //                 $data = json_decode($kota, true);


    //                 echo json_encode($data['rajaongkir']['results']);
    //             } else {
    //                 show_404();
    //             }
    //         } else {
    //             show_404();
    //         }
    //     }

    //     public function tarif($origin, $des, $qty, $cour)
    //     {
    //         // $data2 = [
    //         //     'origin' => $origin,
    //         //     'des' => $des,
    //         //     'qty' => $qty,
    //         //     'cour' => $cour
    //         // ];
    //         // $this->db->where('id', 1);
    //         // $this->db->update('tes', $data2);

    //         $berat = $qty * 1000;
    //         $tarif = $this->_api_ongkir_post($origin, $des, $berat, $cour);
    //         $data = json_decode($tarif, true);
    //         echo json_encode($data['rajaongkir']['results']);
    //     }
}
