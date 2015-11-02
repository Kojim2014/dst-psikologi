<?php 

class Rule_base extends CI_Model{

	function cek_gangguan($gejala){
	$query=$this->db->get_where('tb_rule',array('id_gejala'=>$gejala));
	return $query;
	}

}

