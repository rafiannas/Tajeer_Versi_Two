<?php
defined('BASEPATH') or exit('No direct script access allowed');


class adminModel extends CI_Model
{
    
    
    
    public function getMyOrder($id_toko)
    {
        $q = "SELECT keranjang.*, user.nama, status_barang.warna_brg, status_barang.ket_barang, status_bayar.ket_bayar, status_bayar.warna_byr,status_barang.simbol_brg, status_bayar.simbol_byr
              FROM keranjang, user, status_barang, status_bayar
              WHERE keranjang.id_toko = $id_toko
              AND keranjang.id_status_bayar = 3
              AND keranjang.id_status_barang != 3
              AND keranjang.user_id = user.id
              AND keranjang.id_status_barang = status_barang.id
              AND keranjang.id_status_bayar = status_bayar.id
               ORDER BY keranjang.tgl DESC
        ";
        return $this->db->query($q)->result_array();
    }
    
      public function getMyHistoryOrder($id_toko)
    {
        $q = "SELECT keranjang.*, user.nama, status_barang.warna_brg, status_barang.ket_barang, status_bayar.ket_bayar, status_bayar.warna_byr,status_barang.simbol_brg, status_bayar.simbol_byr
              FROM keranjang, user, status_barang, status_bayar
              WHERE keranjang.id_toko = $id_toko
              AND keranjang.id_status_bayar = 3
              AND keranjang.id_status_barang = 3
              AND keranjang.user_id = user.id
              AND keranjang.id_status_barang = status_barang.id
              AND keranjang.id_status_bayar = status_bayar.id
               ORDER BY keranjang.tgl DESC
        ";
        return $this->db->query($q)->result_array();
    }

    public function getMyToko($id_toko)
    {
        return $this->db->get_where('toko', ['id' => $id_toko])->row_array();
    }

    public function hitungProduk($id_toko)
    {
        $q = "SELECT COUNT(id_produk) as jmh FROM produk
                WHERE id_toko = $id_toko 
        ";
        return $this->db->query($q)->row_array();
    }
    public function getKategori($id_toko)
    {
        $q = "SELECT kategori_global.*, kategori.jumlah
        FROM kategori_global, kategori
        WHERE kategori.id_toko = $id_toko
        AND kategori.id_kategori_global = kategori_global.id
       
        ";
        return $this->db->query($q)->result_array();
    }

    public function getKategoriGlobal()
    {
        return $this->db->get_where('kategori_global', ['is_active' => 1])->result_array();
    }
    public function getKategoriGlobalBy($id)
    {
        return $this->db->get_where('kategori_global', ['id' => $id])->row_array();
    }

    public function getKategoriById($id_toko)
    {
        $q = "SELECT kategori.*, kategori_global.kategori
                FROM kategori, kategori_global
                WHERE kategori.id_kategori_global = kategori_global.id
                AND kategori.id_toko = $id_toko
        ";
        return $this->db->query($q)->result_array();;
    }
    public function getMyProduk($id_toko, $id_kategori)
    {
        $q = "SELECT produk.*, kategori_global.kategori 
        FROM produk, kategori_global
        WHERE produk.id_kategori_produk = kategori_global.id
        AND produk.id_toko = $id_toko
        AND produk.id_kategori_produk = $id_kategori
        ";
        return $this->db->query($q)->result_array();
    }

    public function getStatusBarang()
    {
        $q = "SELECT * FROM status_barang 
                WHERE id != 3
        ";
        return $this->db->query($q)->result_array();
    }

    public function getStatusBarang2()
    {
        $q = "SELECT * FROM status_barang 
                WHERE id != 1
        ";
        return $this->db->query($q)->result_array();
    }

    public function getProdukBy($id)
    {
        return $this->db->get_where('produk', ['id_produk' => $id])->row_array();
    }
   
    
    public function jmhOrder($id)
    {
        $q ="SELECT COUNT(id) as jmh
                FROM keranjang
                WHERE id_toko = $id
                AND id_status_barang = 3
                AND id_status_bayar = 3
        ";
         return $this->db->query($q)->row_array();
    }
    
    public function jmhTransaksi($id)
    {
        $q ="SELECT SUM(total_harga) as jmh
                FROM keranjang
                WHERE id_toko = $id
                AND id_status_bayar = 3
                AND id_status_barang = 3
        ";
         return $this->db->query($q)->row_array();
    }
}
