<?php 

class Densitas extends CI_Model{
	function all_densitas($densitas, $ip){
		$this->db->where(array('M'=> $densitas,'ip'=>$ip,'himpunan !='=> 'null'));
		$query=$this->db->get('tb_hitung');
		return $query;
	}
	
	function cek_himpunan($densitas,$himpunan,$ip){
		$query=$this->db->get_where('tb_hitung',array('M'=>$densitas,'himpunan'=>$himpunan,'ip'=> $ip));
		
		return ($query->num_rows() > 0 ) ? $query->row() : FALSE;
	}
	
	function cek_himpunan_null($M,$ip){
		$query=$this->db->get_where('tb_hitung',array('M'=>$M,'himpunan'=>'null','ip' => $ip));
		return ($query->num_rows() > 0 ) ? $query->row() : FALSE;
	}
	
	function himpunan_null($M,$ip){
		$query=$this->db->get_where('tb_hitung',array('M'=>$M,'himpunan'=>'null','ip' => $ip));
		$n_null=0;
		foreach($query->result() as $data){
			$n_null=$n_null+$data->nilai;
		
		}
		return $n_null;
	}
	
	function m_max($ip){
		$this->db->select_max('m');
		$query = $this->db->get_where('tb_hitung',array('ip' => $ip));
		foreach($query->result() as $data){
			$max=$data->m;
		}
		$n_max= $this->nilai_max($max,$ip);
		$him_max= $this-> himpunan_max($n_max,$ip);
		return array('himpunan' => $him_max,'densitas' => $n_max);
	}
	
	function nilai_max($m,$ip){
		$this->db->select_max('nilai');
		$query = $this->db->get_where('tb_hitung',array('m'=>$m,'ip' => $ip, 'himpunan !='=> 'null'));
		foreach($query->result() as $data){
			$max=$data->nilai;
		}
		return $max;
	}
	
	function himpunan_max($nilai,$ip){
		$query = $this->db->get_where('tb_hitung',array('nilai'=>$nilai,'ip' => $ip, 'himpunan !='=> 'null'));
		foreach($query->result() as $data){
			$him=$data->himpunan;
		}
		return $him;
		
	}

}