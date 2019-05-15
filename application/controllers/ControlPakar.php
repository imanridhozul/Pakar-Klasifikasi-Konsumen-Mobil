<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
    class ControlPakar extends CI_Controller
	{
		public function __construct()
		{
			parent::__construct();
			$this->load->model('pakar');
		}
		public function start($id,$before)
		{			
			$data['quest'] = $this->pakar->getQuestion($id,$before);
			$data['penjelasan'] = $this->pakar->getPenjelasan($id,$before);
			$data['ans'] = $this->pakar->getAnswer($id,$before);
			$this->load->view('start',$data);
			$this->load->view('/tambahan/v_head');
		//	$this->load->view('/tambahan/v_header');
		}
		public function index()
		{			
			$this->load->view('v_daftarUser');
			$this->load->view('/tambahan/v_head');			
		}
		public function go()
		{
			$this->load->view('new/home');
		}
		
	}


?>