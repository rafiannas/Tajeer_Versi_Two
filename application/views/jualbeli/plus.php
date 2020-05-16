<?php 
$id = $_POST['id'];
$result['value'] ='';
$result['jumlah'] ='';

$q = $this->db->get_where('isi_keranjang', ['id' => $id])->row_array();
$id_p = $q['id_produk'];
$produk = $this->db->get_where('produk',['id_produk' => $id_p])->row_array();
$value = $q['jumlah']*$produk['harga'];

$result['value'] = $value+$produk['harga'];
$result['jumlah'] = $q['jumlah']+1;

echo json_encode($result);
