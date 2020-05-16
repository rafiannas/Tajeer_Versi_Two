<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Log extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
       
        //redirect('log/maintenance');
        $this->load->library('form_validation');
        //cek_login();
    }
    public function index()
    {
         //   $this->load->view('template/sabar');
         $this->form_validation->set_rules('email', 'Email', 'required|trim');
         $this->form_validation->set_rules('password', 'Password', 'required|trim');


         if ($this->form_validation->run() == false) {
             $data['title'] = 'Login Page';
           $this->load->view('template/header_admin', $data);
            $this->load->view('log/index');
            $this->load->view('template/footer_admin');
         } else {
            $this->_login();
         }
    }
    private function _login()
    {
        $email = $this->input->post('email');
        $password = $this->input->post('password');


        $user = $this->db->get_where('user', ['email' => $email])->row_array();
        //jika usernya ada
        if ($user)
        //   redirect('log/maintenance');
        
        //jika usernya aktif
        {
            if ($user['is_active'] == 1) {
                //cek password
                if (password_verify($password, $user['password'])) {
                    $data = [
                        'id_user' => $user['id'],
                        'role_id' => $user['role_id']

                    ];
                    $this->session->set_userdata($data); //simpen data di session
                    if ($user['role_id'] == 1) {
                        redirect('Superadmin');
                      
                    } else if ($user['role_id'] == 2) {
                        redirect('Admin');
                      
                    } else {
                        redirect('log');
                    }
                } else {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password Salah !</div>');
                    redirect('log');
                }
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">Akun sedang Tidak Aktif !</div>');
                redirect('log');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Akun Tidak Terdaftar !</div>');
            redirect('log');
        }
    }
    
    public function maintenance()
    {
        $this->load->view('template/sabar');
    }
    
      public function nakal()
    {
        $this->load->view('template/nakal');
    }

    public function logout()
    {
        $this->session->unset_userdata('id_user');
        $this->session->unset_userdata('role_id');
    
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Keluar</div>');
        redirect('log');
    }
}
