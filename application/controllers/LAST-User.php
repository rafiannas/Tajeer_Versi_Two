<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('userModel');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['produk'] = $this->userModel->getKG();
        $data['nav'] = $this->userModel->getNav();
        $data['slider'] = $this->userModel->getSlider();

        $this->load->view('template/header_user', $data);
        $this->load->view('user/index', $data);
        $this->load->view('template/footer_user');
    }

    public function login()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email');
        $this->form_validation->set_rules('pass', 'Pass', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header_user', $data);
            $this->load->view('user/login', $data);
            $this->load->view('template/footer_user');
        } else {
            $email = $this->input->post('email');
            $password = $this->input->post('pass');
            $user = $this->db->get_where('user', ['email' => $email])->row_array();

            if ($user) {
                // redirect('log/maintenance');
                if ($user['is_active'] == 2) {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Account is has not been activated!</div>');
                    redirect('user/login');
                }
                // var_dump($user['password']);
                // var_dump($password);
                // $p = (password_verify($password, $user['password']));
                // var_dump($p);
                // die;

                if (password_verify($password, $user['password'])) {
                    $data = [
                        'id_user' => $user['id'],
                        'email' => $user['email'],
                        'nama_user' => $user['nama'],
                        'role_id' => $user['role_id']
                    ];
                    $this->session->set_userdata($data);

                    redirect('jualbeli');
                } else {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password Salah !</div>');
                    redirect('user/login');
                }
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email tidak terdaftar !</div>');
                redirect('user/login');
            }
        }
    }

    private function _sendEmail() //sntp simple mail transfer protocol
    {
        $config = [
            'protocol'  => 'smtp',
            'smtp_host' => 'ssl://smtp.googlemail.com',
            'smtp_user' => 'rafi.annas9000@gmail.com',
            'smtp_pass' => 'akurafi9000',
            'smpt_port' => 465,
            'mailtype'  => 'html',
            'charset'   => 'utf-8',
            'newline'   => "\r\n"
        ];
        $this->load->library('email', $config);

        $this->load->library('email');
        $config = array();
        $config['protocol'] = 'smtp';
        $config['smtp_host'] = 'ssl://smtp.googlemail.com';
        $config['smtp_user'] = 'raf.annas9000@gmail.com';
        $config['smtp_pass'] = 'akurafi9000';
        $config['smtp_port'] = 465;
        $config['mailtype'] = 'html';
        $config['charset'] = 'utf-8';

        $this->email->initialize($config);

        $this->email->set_newline("\r\n");


        $this->email->initialize($config);

        $this->email->from('rafi.annas9000@gmail.com', 'GOMART');
        $this->email->to('rafi.annas1997@gmail.com');
        $this->email->subject('TEST');
        $this->email->message('HELLLOOO');

        if ($this->email->send()) {
            return true;
        } else {
            echo $this->email->print_debugger();
            die;
        }
    }
    public function register()
    {

        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();

        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules(
            'email',
            'Email',
            'required|trim|valid_email|is_unique[user.email]',
            ['is_unique' => 'Email sudah terdaftar !']
        );
        $this->form_validation->set_rules('pass', 'Pass', 'required|trim');
        $this->form_validation->set_rules('hp', 'Hp', 'required|trim');
        $this->form_validation->set_rules('jk', 'Jk', 'required|trim');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('template/header_user', $data);
            $this->load->view('user/register', $data);
            $this->load->view('template/footer_user');
        } else {
            $add = [
                'nama' => $this->input->post('nama'),
                'email' => $this->input->post('email'),
                'password' => password_hash($this->input->post('pass'), PASSWORD_DEFAULT),
                'no_hp' => $this->input->post('hp'),
                'jenis_kelamin' => $this->input->post('jk'),
                'role_id' => 3,
                'is_active' => 1

            ];
            $this->db->insert('user', $add);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Register Success!</div>');


            // $this->_sendEmail();

            redirect('user/login');
        }
    }

    public function my_profil()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $data['slider'] = $this->userModel->getSlider();
        $id = $this->session->userdata('id_user');

        $data['profil'] = $this->userModel->getProfil($id);

        $this->load->view('template/header_user', $data);
        $this->load->view('user/my_profil', $data);
        $this->load->view('template/footer_user');
    }


    public function status_bayar1()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $data['slider'] = $this->userModel->getSlider();

        $id = $this->session->userdata('id_user');
        $data['status1'] = $this->userModel->getStatus1($id);

        $this->load->view('template/header_user', $data);
        $this->load->view('user/status_bayar1', $data);
        $this->load->view('template/footer_user');
    }

    // function ambilData()
    // {
    //     $id = $this->session->userdata('id_user');
    //     $data = $this->userModel->getStatus1($id);
    //     echo json_encode($data);
    // }
    function s_detail($id)
    {
        $flag = ['id_keranjang' => $id];
        $this->session->set_userdata($flag);
        redirect('user/detail_status1');
    }

    function detail_status1()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $data['slider'] = $this->userModel->getSlider();


        $id_ker = $this->session->userdata('id_keranjang');
        $id = $this->session->userdata('id_user');

        $data['ker'] =  $this->userModel->getKer($id_ker);
        if ($data['ker']['id_status_bayar'] == 2) {
            $data['cek'] = 0;
            $data['title'] = "Menunggu Pembayaran";
            $data['status1'] = $this->userModel->getStatus1($id);
        } else if ($data['ker']['id_status_bayar'] == 3  && $data['ker']['id_status_barang'] == 1) {
            $data['title'] = "Barang Dikemas";
            $data['status1'] = $this->userModel->getStatus2($id);
            $data['cek'] = 0;
        } else if ($data['ker']['id_status_bayar'] == 3 && $data['ker']['id_status_barang'] == 2) {
            $data['title'] = "Barang Dikirim";
            $data['status1'] = $this->userModel->getStatus3($id);
            $data['cek'] = 1;
        } else if ($data['ker']['id_status_bayar'] == 3 && $data['ker']['id_status_barang'] == 3) {
            $data['title'] = "Barang Diterima";
            $data['status1'] = $this->userModel->getStatus4($id);
            $data['cek'] = 0;
        }

        $data['keranjang1'] = $this->userModel->getIsiKer1($id_ker);


        $this->load->view('template/header_user', $data);
        $this->load->view('user/detail_status', $data);
        $this->load->view('template/footer_user');
    }

    function diterima($id)
    {
        $edit = [
            'id_status_barang' => 3
        ];
        $this->db->where('id', $id);
        $this->db->update('keranjang', $edit);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">barang Telah diterima !</div>');
        redirect('user/my_profil');
    }


    public function status_bayar2()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $data['slider'] = $this->userModel->getSlider();

        $id = $this->session->userdata('id_user');
        $data['status2'] = $this->userModel->getStatus2($id);


        $this->load->view('template/header_user', $data);
        $this->load->view('user/status_bayar2', $data);
        $this->load->view('template/footer_user');
    }


    public function status_bayar3()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $data['slider'] = $this->userModel->getSlider();

        $id = $this->session->userdata('id_user');
        $data['status3'] = $this->userModel->getStatus3($id);


        $this->load->view('template/header_user', $data);
        $this->load->view('user/status_bayar3', $data);
        $this->load->view('template/footer_user');
    }


    public function status_bayar4()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $data['slider'] = $this->userModel->getSlider();


        $id = $this->session->userdata('id_user');
        $data['status4'] = $this->userModel->getStatus4($id);


        $this->load->view('template/header_user', $data);
        $this->load->view('user/status_bayar4', $data);
        $this->load->view('template/footer_user');
    }


    public function status_bayar5()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $data['slider'] = $this->userModel->getSlider();


        $this->load->view('template/header_user', $data);
        $this->load->view('user/status_bayar5', $data);
        $this->load->view('template/footer_user');
    }


    public function status_bayar6()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $data['slider'] = $this->userModel->getSlider();


        $this->load->view('template/header_user', $data);
        $this->load->view('user/status_bayar6', $data);
        $this->load->view('template/footer_user');
    }

    public function ubah_profil()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $data['slider'] = $this->userModel->getSlider();
        $id = $this->session->userdata('id_user');

        $data['profil'] = $this->userModel->getProfil($id);

        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules('nope', 'Nope', 'required|trim');
        $this->form_validation->set_rules('alamat', 'Alamat', 'trim');

        if ($this->form_validation->run() == false) {

            $this->load->view('template/header_user', $data);
            $this->load->view('user/edit_profil', $data);
            $this->load->view('template/footer_user');
        } else {
            $data = [
                'nama' => htmlspecialchars($this->input->post('nama')),
                'no_hp' => htmlspecialchars($this->input->post('nope')),
                'alamat' => htmlspecialchars($this->input->post('alamat'))
            ];
            $this->db->where('id', $id);
            $this->db->update('user', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Profil Berhasil di Ubah !</div>');
            redirect('user/my_profil');
        }
    }

    function ganti_pass()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();
        $data['slider'] = $this->userModel->getSlider();
        $id = $this->session->userdata('id_user');
        $data['profil'] = $this->userModel->getProfil($id);
        $pass = $data['profil']['password'];

        $this->form_validation->set_rules('lama', 'Lama', 'required|trim');
        $this->form_validation->set_rules('baru', 'Baru', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header_user', $data);
            $this->load->view('user/ganti_pass', $data);
            $this->load->view('template/footer_user');
        } else {
            $lama =  htmlspecialchars($this->input->post('lama'));
            $baru =  htmlspecialchars($this->input->post('baru'));

            if (password_verify($lama, $pass)) {
                $data = ['password' => password_hash($baru, PASSWORD_DEFAULT),];
                $this->db->where('id', $id);
                $this->db->update('user', $data);
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Password Berhasil di Ubah !</div>');
                redirect('user/my_profil');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password Lama tidak sama</div>');
                redirect('user/ganti_pass');
            }
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('role_id');
        $this->session->unset_userdata('id_user');
        $this->session->unset_userdata('nama_user');

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Logout Success</div>');
        redirect('jualbeli');
    }
}
