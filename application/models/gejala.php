<?php 

class Gejala extends CI_Model{

	
	function __construct(){
	parent::__construct();
	}
	
	function all_gejala(){
	$query=$this->db->get("tb_gejala");
	
	return $query;
	}
	
	}