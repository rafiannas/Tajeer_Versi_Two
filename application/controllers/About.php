<?php
defined('BASEPATH') or exit('No direct script access allowed');

class About extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('userModel');
    }

    public function about_tajeer()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();

        $this->load->view('template/header_user', $data);
        $this->load->view('about/about_tajeer');
        $this->load->view('template/footer_user');
    }
    public function socio_preneur()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();

        $this->load->view('template/header_user', $data);
        $this->load->view('about/about_socio');
        $this->load->view('template/footer_user');
    }
    public function bisnis_inklusif()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();

        $this->load->view('template/header_user', $data);
        $this->load->view('about/about_inklusif');
        $this->load->view('template/footer_user');
    }
    public function green_business()
    {
        $data['about'] = $this->userModel->getNavBy(2);
        $data['nav'] = $this->userModel->getNav();

        $this->load->view('template/header_user', $data);
        $this->load->view('about/about_green');
        $this->load->view('template/footer_user');
    }
}
