
<?php
ob_start();
class Invoice extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->library('pdf');
        $this->load->model('adminModel');
        $this->load->model('superadminModel');
    }

    function index()
    {
        $id = $this->session->userdata('id_invoice');
        $user = $this->db->get_where('user', ['id' => $this->session->userdata('id_user')])->row_array();
        $invoice1 = $this->superadminModel->ubahPem($id);


        $pdf = new FPDF('l', 'mm', 'A5');
        // membuat halaman baru
        $pdf->AddPage();
        // setting jenis font yang akan digunakan
        $pdf->SetFont('Arial', 'B', 10);
        // mencetak string 
        // $pdf->image("index.php/assets/logo_tajeer.png", 30, 7);
        //$pdf->Image("base_url('assets/logo_tajeer.jpg')");
        
        $pdf->Cell(200, 7, 'INVOICE', 0, 1, 'C');
        $pdf->SetFont('Arial', 'B', 8);
        $pdf->Cell(200, 7, 'TAJEER STORE UAI', 0, 1, 'C');
        // Memberikan space kebawah agar tidak terlalu rapat

        $pdf->SetFont('Arial', '', 7);

        $pdf->Cell(35, 6,  'Id :', 0, 0, 'L');
        $pdf->Cell(38, 6,  $invoice1['id'], 0, 1, 'L');

        $pdf->Cell(35, 6,  'Tanggal Pembelian :', 0, 0, 'L');
        $pdf->Cell(38, 6,  $invoice1['tgl'], 0, 1, 'L');

        $pdf->Cell(35, 6,  'Toko Pemebelian :', 0, 0, 'L');
        $pdf->Cell(38, 6,  $invoice1['nama_toko'], 0, 0, 'L');

        $pdf->Cell(30, 6,  'Total Berat :', 0, 0, 'L');
        $pdf->Cell(38, 6,  $invoice1['total_berat'] / 1000 . "Kg", 0, 1, 'L');

        $pdf->Cell(35, 6,  'Jumlah Pembelian :', 0, 0, 'L');
        $pdf->Cell(38, 6,  $invoice1['jmh_produk'], 0, 0, 'L');

        $pdf->Cell(30, 6,  'Jenis Pengiriman :', 0, 0, 'L');
        $pdf->Cell(38, 6,  $invoice1['jenis'], 0, 1, 'L');


        $pdf->Cell(10, 2, '', 0, 1);
        //$pdf->SetFont('Arial', 'B', 8);

        $pdf->Cell(35, 6,  'Nama Pemesan :', 0, 0, 'L');
        $pdf->Cell(38, 6,  $invoice1['nama'], 0, 0, 'L');

        $pdf->Cell(30, 6,  'Nama Penerima :', 0, 0, 'L');
        $pdf->Cell(38, 6,  $invoice1['penerima'], 0, 1, 'L');

        $pdf->Cell(35, 6,  'No Hp Pemesan :', 0, 0, 'L');
        $pdf->Cell(38, 6,  $invoice1['ok'], 0, 0, 'L');

        $pdf->Cell(30, 6,  'No HP Penerima :', 0, 0, 'L');
        $pdf->Cell(38, 6,  $invoice1['no_hp'], 0, 1, 'L');
        
        $pdf->Cell(35, 6,  'Email Pemesan :', 0, 0, 'L');
        $pdf->Cell(38, 6,  $invoice1['email'], 0, 1, 'L');

        $pdf->Cell(35, 6,  'Alamat Penerima :', 0, 0, 'L');
        $pdf->Cell(38, 6,  $invoice1['alamat_penerima'], 0, 1, 'L');




        $pdf->Cell(10, 6, 'No', 1, 0);
        $pdf->Cell(100, 6, 'Produk', 1, 0);
        $pdf->Cell(20, 6, 'Harga', 1, 0);
        $pdf->Cell(13, 6, 'Jumlah', 1, 0);
        $pdf->Cell(29, 6, 'Total Harga', 1, 1);


        $pdf->SetFont('Arial', '', 8);


        $invoice2 = $this->superadminModel->getRincian($id);
        //var_dump($invoice2);

        $i = 1;


        foreach ($invoice2 as $row) {

            $pdf->Cell(10, 6, $i, 1, 0);

            $pdf->Cell(100, 6, $row['nama_produk'], 1, 0);
            $pdf->Cell(20, 6, number_format($row['harga']), 1, 0, 'R');
            $pdf->Cell(13, 6, $row['jumlah'], 1, 0);


            $pdf->Cell(29, 6, number_format($row['total_harga_per_produk']), 1, 1, 'R');


            $i += 1;
        }
        $pdf->Cell(10, 2, '', 0, 1);

        $pdf->Cell(30, 6,  'Total : Rp. ', 0, 0, 'L');
        $pdf->Cell(29, 6,  number_format($invoice1['total_harga']), 0, 1, 'R');

        $pdf->Cell(30, 6,  'Ongkos Kirim : Rp. ', 0, 0, 'L');
        $pdf->Cell(29, 6,  number_format($invoice1['ongkir']), 0, 1, 'R');

        //$pdf->SetFont('Arial', 'B', 11);
        $pdf->SetFont('Arial', 'B', 8);

        $pdf->Cell(30, 6,  'Total Harga : Rp. ', 0, 0, 'L');
        $pdf->Cell(29, 6,  number_format($invoice1['harga_all']), 0, 1, 'R');

        $pdf->Output();
    }
}
