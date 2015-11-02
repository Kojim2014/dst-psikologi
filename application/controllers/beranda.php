<?php

class Beranda extends CI_Controller {
public function __construct()
	{
		parent::__construct();
		$this->load->helper(array('url','html'));
		$this->load->library(array());
		$this->load->model(array());

		
	}
	public function index()
	{
	
	$data= array(
	'title'=>'Sistem Pakar',
	);
	
	$this->load->view('header',$data);
	$this->load->view('halaman/beranda',$data);
	$this->load->view('footer');
	
	}

}