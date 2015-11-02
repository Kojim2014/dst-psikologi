<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pakar extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->helper(array('url','html','form'));
		$this->load->library(array());
		$this->load->model(array('gejala','rule_base','densitas','gangguan'));

		
	}
	public function index()
	{
	$query=$this->gejala->all_gejala();
	$form= form_open('pakar/hitung');
	foreach ($query->result() as $data){
		$form .= form_checkbox($data->id_gejala,'ya', FALSE).$data->nama.'<br>';
	}
	$form .= form_submit('mysubmit', 'Submit');
	$form .= form_close();
	
	$data= array(
	'title'=>'Diagnosa',
	'form'=> $form
	
	);
	
	$this->load->view('header',$data);
	$this->load->view('halaman/diagnosa',$data);
	$this->load->view('footer');
	}
	
	public function hitung($m1=null,$m2=null){
	$ip = $_SERVER['REMOTE_ADDR'];
	$this->db->delete('tb_hitung',array('ip' => $ip));
	$i=0;
	$query=$this->gejala->all_gejala();
	foreach ($query->result() as $data){
	
		if($this->input->post($data->id_gejala)=='ya'){
		$i++;
		$himpunan=null;
			$qgangguan=$this->rule_base->cek_gangguan($data->id_gejala);
			unset($daftar_gangguan);
			//cari gangguan dari gejala
			//himpunan gejala saat ini
			
			foreach($qgangguan->result() as $dgangguan){
				$daftar_gangguan[]= $dgangguan->id_gangguan;
			}
			$himpunan=json_encode($daftar_gangguan);
		//jika gejala pertama
		if($i==1){
		$bobot=$data->bobot;
			$data=array(
			'id'=>'',
			'M'=>$i,
			'himpunan'=>$himpunan,
			'nilai'=>$bobot,
			'ip' => $ip
			);	
			$this->db->insert('tb_hitung',$data);
		
			$data2=array(
			'id'=>'',
			'M'=>$i,
			'himpunan'=>'teta',
			'nilai'=>(1-$bobot),
			'ip' => $ip
		);	
		$this->db->insert('tb_hitung',$data2);
			
		}
		else{
			$m=$i-1;
			$qdensitas=$this->densitas->all_densitas($m,$ip);
			foreach ($qdensitas->result() as $ddensitas){
			//lakukan hitungan dengan himpunan normal(no teta) 
			//penghitungan m(Z) asli
			//jika himpunan saat ini = teta, maka kombinasi berupa himpunan baru, 
			if($ddensitas->himpunan=='teta'){
			
				$kombinasi=$himpunan;
			}
			else{
				//ambil himpunan lama dan jadikan array
				
				$himpunan_lama= json_decode($ddensitas->himpunan,true);
				//echo "lama/dens=".json_encode($himpunan_lama)."<br>";
				//ambil himpunan baru
				$himpunan_ini= $daftar_gangguan;
				//echo "saat ini=".json_encode($himpunan_ini)."<br>";
				//potongan
				$komb= array_intersect($himpunan_lama,$himpunan_ini);
				//echo "kombinasi=".json_encode($komb)."<br><hr>";
				if(empty($komb)){
					$kombinasi= "null";
				}
				else{
					$kombinasi=json_encode($komb);
				}
			//end of else (non teta)
			}	
			
			//himpunan sekarang*densitas
			$nilai=$data->bobot*$ddensitas->nilai;
			
			$cek1=$this->densitas->cek_himpunan($i,$kombinasi,$ip);
						
			if($cek1){
				$this->db->set('nilai','nilai+'.$nilai,FALSE);
				$this->db->where(array('M'=>$i,'himpunan' => $kombinasi,'ip'=> $ip));
				$this->db->update('tb_hitung'); 
				}
			else{
				$this->db->insert('tb_hitung',array('M'=>$i,'himpunan' => $kombinasi,'nilai' =>$nilai,'ip'=> $ip));
				}
			
			//teta sekarang*densitas
			$nilai2=(1-($data->bobot))*$ddensitas->nilai;
			$cek2=$this->densitas->cek_himpunan($i,$ddensitas->himpunan,$ip);
			
			if($cek2){
				$this->db->set('nilai','nilai+'.$nilai2,FALSE);
				$this->db->where(array('M'=>$i,'himpunan' => $ddensitas->himpunan,'ip'=> $ip));
				$this->db->update('tb_hitung'); 
				}
			else{
				$this->db->insert('tb_hitung',array('M'=>$i,'himpunan' => $ddensitas->himpunan,'nilai' =>$nilai2,'ip'=> $ip));
				}
			
			//foreach densitas
			}
			$cek_null=$this->densitas->cek_himpunan_null($i,$ip);
			if($cek_null){
				$n_null=$this->densitas->himpunan_null($i,$ip);
				$this->db->set('nilai','nilai/(1-'.$n_null.')',FALSE);
				$this->db->where(array('M'=>$i,'ip'=> $ip, 'nilai !='=>'null'));
				$this->db->update('tb_hitung'); 			
				
			}
			
		//end of else m>1
		}
		//end of if ya
		}
	//end of foreach 
	}
	if($i==0){
	$hasil_diagnosa='Tidak ada gejala dipilih, anda baik baik saja';
	$hasil['densitas']=0;
	}else{
	$hasil= $this->densitas->m_max($ip);
	
	$list_gangguan= json_decode($hasil['himpunan']);
	$hasil_diagnosa = '<ul>';
	foreach ($list_gangguan as $hasil_gangguan){
		$data_gangguan=$this->gangguan->detail_gangguan($hasil_gangguan);
		$hasil_diagnosa .= '<li>'.anchor('gangguan_psikis/tampil#'.$data_gangguan['nama'],$data_gangguan['nama']).'</li>';
	}
	$hasil_diagnosa .= '</ul>';
	}
	
	
	$data= array(
	'title'=>'Sistem Pakar',
	'hasil'=>$hasil_diagnosa,
	'densitas'=>number_format($hasil['densitas'],2,'.','')
	);
	$this->load->view('header',$data);
	$this->load->view('halaman/hasil',$data);
	$this->load->view('footer');
	
	
	//end function hitung
	}
	
}

/* End of file pakar.php */
/* Location: ./application/controllers/pakar.php */