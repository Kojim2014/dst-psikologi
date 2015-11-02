<?php 

class Gangguan extends CI_Model{


	function detail_gangguan($id){
		$qgangguan=$this->db->get_where('tb_gangguan',array('id_gangguan'=>$id));
		foreach ($qgangguan->result() as $dgangguan){
			$data['id']=$dgangguan->id_gangguan;
			$data['nama']=$dgangguan->gangguan;
			$data['penjelasan']=$dgangguan->penjelasan;
		}
	return $data;
	}
	
	function all_gangguan(){
	$query= $this->db->get('tb_gangguan');
	return $query;
	}
	
	

}
