<?php
defined('BASEPATH') or exit('No direct script access allowed');


class userModel extends CI_Model
{
    public function getNavBy($id)
    {
        return $this->db->get_where('isi_navigasi', ['id_navigasi' => $id])->result_array();
    }
    public function getKG()
    {
        return $this->db->get_where('kategori_global', ['is_active' => 1])->result_array();
    }

    public function getKgBy($id)
    {
        $q = "SELECT produk.* 
        FROM produk
        WHERE id_kategori_produk = $id AND 
        stok >=1
        ";
        return $this->db->query($q)->result_array();
    }


    public function getNav()
    {
        return $this->db->query("SELECT * FROM navigasi WHERE id >3 ")->result_array();
    }
    public function getSlider()
    {
        return $this->db->get('slider')->result_array();
    }

    public function getProfil($id)
    {
        return $this->db->get_where('user', ['id' => $id])->row_array();
    }

    public function getStatus1($id)
    {
        $q = "SELECT keranjang.*, toko.nama_toko 
            FROM keranjang, toko
            WHERE `user_id` = $id
            AND id_status_bayar = 2
            AND keranjang.id_toko = toko.id
        ";
        return $this->db->query($q)->result_array();
    }

    public function getStatus2($id)
    {
        $q = "SELECT keranjang.*, toko.nama_toko 
            FROM keranjang, toko
            WHERE `user_id` = $id
            AND id_status_bayar = 3
            AND id_status_barang = 1
            AND keranjang.id_toko = toko.id
        ";
        return $this->db->query($q)->result_array();
    }

    public function getStatus3($id)
    {
        $q = "SELECT keranjang.*, toko.nama_toko 
            FROM keranjang, toko
            WHERE `user_id` = $id
            AND id_status_bayar = 3
            AND id_status_barang = 2
            AND keranjang.id_toko = toko.id
        ";
        return $this->db->query($q)->result_array();
    }

    public function getStatus4($id)
    {
        $q = "SELECT keranjang.*, toko.nama_toko 
            FROM keranjang, toko
            WHERE `user_id` = $id
            AND id_status_bayar = 3
            AND id_status_barang = 3
            AND keranjang.id_toko = toko.id
        ";
        return $this->db->query($q)->result_array();
    }
    public function getKer($id_ker)
    {
        $q = "SELECT keranjang.*, toko.nama_toko, kurir.jenis
        FROM keranjang, toko, kurir
        WHERE keranjang.id = $id_ker
        AND keranjang.id_toko = toko.id
        AND keranjang.id_kurir = kurir.id
    ";
        return $this->db->query($q)->row_array();
    }

    public function getIsiKer1($id_ker)
    {
        $q = "SELECT isi_keranjang.*, produk.nama_produk, produk.image
            FROM isi_keranjang, produk
            WHERE isi_keranjang.id_produk = produk.id_produk
            AND isi_keranjang.id_keranjang  =$id_ker 
           
        ";
        return $this->db->query($q)->result_array();
    }
}
