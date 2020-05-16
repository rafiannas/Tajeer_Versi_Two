<?php
defined('BASEPATH') or exit('No direct script access allowed');


class jualbeliModel extends CI_Model
{
    public function getFront()
    {
        $q = "SELECT *
        FROM  produk
        WHERE stok >=1
    
        ";
        return $this->db->query($q)->result_array();
    }
    
    public function countProduk()
    {
        return $this->db->get('produk')->num_rows();
    }
    
    public function getPag($limit, $start, $key=null)
    {
        if ($key) {
            $this->db->like('nama_produk', $key);
            //$this->db->query("stok >= 1");
            
            //  $q = "SELECT * FROM produk
            //       WHERE 'nama_produk' LIKE '%{$key}%'
            //       AND stok >=1
            //       ORDER BY CHAR_LENGTH(`nama_produk`) DESC LIMIT $start, $limit
            //  ";
            //  return $this->db->query($q)->result_array();
             
           // $query = $this->db->get_where('mytable', array('id' => $id), $limit, $offset);
        }
         return $this->db->get('produk', $limit, $start)->result_array();
    }

    public function getView($id)
    {
        return $this->db->get_where('produk', ['id_produk' => $id])->row_array();
    }
    public function getOther($id, $id_k_p)
    {
        $q = "SELECT *
        FROM produk
        WHERE stok >=1
        AND id_produk != $id
        AND id_kategori_produk = $id_k_p" ;

        return $this->db->query($q)->result_array();
    }

    public function getCekKeranjang($id_toko, $id_user)
    {
        $q = "SELECT *
              FROM keranjang
              WHERE id_toko = $id_toko
              AND `user_id` = $id_user
              AND id_status_bayar = 1
        ";
        return $this->db->query($q)->row_array();
    }
    public function getCekIsi($id_keranjang, $id_produk)
    {
        $q = "SELECT * FROM isi_keranjang
              WHERE id_keranjang = $id_keranjang AND
              id_produk = $id_produk
            ";
        return $this->db->query($q)->row_array();
    }
    public function getChart($id_user)
    {
        $q = "SELECT keranjang.*, toko.nama_toko
        FROM keranjang, toko
        WHERE `user_id` = $id_user
        AND id_status_bayar = 1
        AND keranjang.id_toko = toko.id
        ";
        return $this->db->query($q)->result_array();
    }
    public function getProfil($id)
    {
        $q = "SELECT * FROM toko
            WHERE id = $id
        ";
        return $this->db->query($q)->row_array();
    }
    public function getKategori($id)
    {
        $q = "SELECT kategori.*, kategori_global.kategori 
            FROM kategori, kategori_global
            WHERE kategori.id_toko = $id
            AND kategori.id_kategori_global = kategori_global.id
            ORDER BY id DESC
        ";
        return $this->db->query($q)->result_array();
    }
    public function getProdukProfil($id)
    {
        return $this->db->get_where('produk', ['id_toko' => $id])->result_array();
    }

    function barang_list()
    {
        return $this->db->get('produk')->result();
    }

    public function getCheckout($id_ker)
    {
        $q = "SELECT *
            FROM keranjang
            WHERE keranjang.id = $id_ker
            
        ";
        return $this->db->query($q)->row_array();
    }
    public function getCheckout2($id_ker)
    {
        $q = "SELECT keranjang.*, kurir.jenis
            FROM keranjang, kurir
            WHERE keranjang.id = $id_ker
            AND keranjang.id_kurir = kurir.id
        ";
        return $this->db->query($q)->row_array();
    }

    public function getUser($id_user)
    {
        return $this->db->get_where('user', ['id' => $id_user])->row_array();
    }
    public function getKurir()
    {
        return $this->db->get('kurir')->result_array();
    }
    public function getIsiCheck($id_ker)
    {
        return $this->db->get_where('isi_keranjang', ['id_keranjang' => $id_ker])->result_array();
    }

    public function getProCheck($id_produk)
    {
        return $this->db->get_where('produk', ['id_produk' => $id_produk])->row_array();
    }
    public function cekKurir($id)
    {
        return $this->db->get_where('kurir', ['id' => $id])->row_array();
    }
}
