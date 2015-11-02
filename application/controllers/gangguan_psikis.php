<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Gangguan_psikis extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->helper(array('url','html','form'));
		$this->load->library(array());
		$this->load->model(array('gangguan'));

		
	}
	public function index()
	{
	
	}
	public function tampil(){
	$gangguan='';
	$nav='<ul>';
		$qgangguan=$this->gangguan->all_gangguan();
		
		foreach($qgangguan->result() as $dgangguan){
		$id=str_replace(" ","_",$dgangguan->gangguan);
	
		$nav.='<li><a href="#'.$id.'">'.$dgangguan->gangguan.'</a></li>';
			$gangguan .='<div id="'.$id.'">';
			$gangguan .='<h1>'.$dgangguan->gangguan.'</h1>';
			$gangguan .='<p>'.$dgangguan->penjelasan.'</p>';
			$gangguan .='<h3>Penyebab</h3><p>'.$dgangguan->penyebab.'</p>';
			$gangguan .='<h3>Pegobatan</h3><p>'.$dgangguan->pengobatan.'</p>';
			$gangguan .='<br><br><a href="#nav_gangguan">[ke atas]</a><hr></div><br>';
		}
		$nav.='</ul>';
	$data= array(
	'title'=>'Sistem Pakar',
	'nav_gangguan' => $nav,
	'gangguan'=>$gangguan
	);
	
	$this->load->view('header',$data);
	$this->load->view('halaman/gangguan',$data);
	$this->load->view('footer');
	}
}