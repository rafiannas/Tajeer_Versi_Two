<?php
defined('BASEPATH') or exit('No direct script access allowed');


class superadminModel extends CI_Model
{
    public function jmhToko()
    {
        $q = "SELECT COUNT(id) as jmh
                FROM toko
                WHERE is_active = 1
        ";
        return $this->db->query($q)->row_array();
    }

    public function jmhUser()
    {
        $q = "SELECT COUNT(id) as jmh
        FROM user
        WHERE role_id = 3
        AND is_active = 1
        ";
        return $this->db->query($q)->row_array();
    }
    
    public function jmhSA()
    {
        $q = "SELECT COUNT(id) as jmh
        FROM user
        WHERE role_id = 1
        AND is_active = 1
        ";
        return $this->db->query($q)->row_array();
    }
    
    public function jmhTransaksi()
    {
        $q = "SELECT COUNT(id) as jmh
        FROM keranjang
        WHERE id_status_bayar = 3
        AND id_status_bayar = 3
        ";
        return $this->db->query($q)->row_array();
    }
    
    public function jmhUangTransaksi()
    {
        $q ="SELECT SUM(total_harga) as jmh
                FROM keranjang
                WHERE id_status_bayar = 3
                AND id_status_barang = 3
        ";
         return $this->db->query($q)->row_array();
    }
    
       public function jmhKategori()
    {
        $q = "SELECT COUNT(id) as jmh
        FROM kategori_global
        WHERE is_active = 1
   
        ";
        return $this->db->query($q)->row_array();
    }
    
    
    public function getToko()
    {
        $q = "SELECT toko.*, active.keterangan,user.nama
        FROM user, toko, active
        WHERE toko.owner = user.id
        AND toko.is_active = active.id
        ";
        return $this->db->query($q)->result_array();
    }
    public function getUser()
    {
        $q = "SELECT user.*, active.keterangan
        FROM user, active
        WHERE user.is_active = active.id
        AND role_id = 3
        ";
        return $this->db->query($q)->result_array();
    }

    public function getOrder()
    {
        $q = "SELECT keranjang.*, user.nama, toko.nama_toko, status_barang.ket_barang, status_bayar.ket_bayar, status_bayar.warna_byr, status_barang.warna_brg, status_bayar.simbol_byr, status_barang.simbol_brg
        FROM user, keranjang, status_bayar, status_barang, toko
        WHERE keranjang.id_toko = toko.id
        AND keranjang.id_status_barang = status_barang.id
        AND keranjang.id_status_bayar = status_bayar.id
        AND keranjang.user_id = user.id
        AND keranjang.id_status_bayar != 1
        AND keranjang.id_status_barang != 3
        ORDER BY keranjang.tgl DESC
       
        ";
        return $this->db->query($q)->result_array();
    }
    
    public function getHistoryOrder()
    {
        $q = "SELECT keranjang.*, user.nama, toko.nama_toko, status_barang.ket_barang, status_bayar.ket_bayar, status_bayar.warna_byr, status_barang.warna_brg, status_bayar.simbol_byr, status_barang.simbol_brg
        FROM user, keranjang, status_bayar, status_barang, toko
        WHERE keranjang.id_toko = toko.id
        AND keranjang.id_status_barang = status_barang.id
        AND keranjang.id_status_bayar = status_bayar.id
        AND keranjang.user_id = user.id
        AND keranjang.id_status_bayar = 3
        AND keranjang.id_status_barang = 3
        ORDER BY keranjang.tgl DESC
       
        ";
        return $this->db->query($q)->result_array();
    }

    public function ubahPem($id)
    {
        $q = "SELECT keranjang.*, user.nama, user.no_hp as nope, kurir.jenis, toko.nama_toko, user.no_hp as ok, status_barang.ket_barang , user.email
            FROM keranjang, user, kurir, toko, status_barang
            WHERE keranjang.user_id = user.id
            AND keranjang.id = $id
            AND keranjang.id_kurir = kurir.id
            AND keranjang.id_toko = toko.id
            AND keranjang.id_status_barang = status_barang.id
        ";
        return $this->db->query($q)->row_array();
    }

    public function getRincian($id)
    {
        $q = "SELECT isi_keranjang.*, produk.nama_produk, produk.image
                FROM isi_keranjang, produk
                WHERE isi_keranjang.id_produk = produk.id_produk
                AND isi_keranjang.id_keranjang = $id 
        ";
        return $this->db->query($q)->result_array();
    }

    public function getRincian2($id)
    {
        $q = "SELECT isi_keranjang.*, produk.nama_produk, produk.image
                FROM isi_keranjang, produk
                WHERE isi_keranjang.id_produk = produk.id_produk
                AND isi_keranjang.id_keranjang = $id 
        ";
        $data = $this->db->query($q)->result_array();
        return $data;
    }
    public function getStatusBayar()
    {
        $q = "SELECT * FROM status_bayar WHERE id != 1";
        return $this->db->query($q)->result_array();
    }

    public function getTokoBy($id)
    {
        $q = "SELECT toko.* , user.nama, user.no_hp, user.alamat, user.email, user.password
        FROM toko, user
        WHERE toko.owner = user.id
        AND toko.id = $id
        AND toko.is_active = 1
        ";
        return $this->db->query($q)->row_array();
    }

    public function getSuperAdmin()
    {
        $q = "SELECT user.*, active.keterangan
        FROM user, active
        WHERE user.is_active = active.id
        AND user.role_id = 1
        ";
        return $this->db->query($q)->result_array();
    }
    public function getAdminToko()
    {
        $q = "SELECT user.*, active.keterangan
        FROM user, active
        WHERE user.is_active = active.id
        AND user.role_id = 2
        ";
        return $this->db->query($q)->result_array();
    }
}
