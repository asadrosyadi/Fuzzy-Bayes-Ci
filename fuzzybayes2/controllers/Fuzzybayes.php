<?php

Class Fuzzybayes extends MX_Controller {

    function __construct() {
        parent::__construct();
    }

    function index() {
		$data['data'] = $this->db->select('*')->from('dataset2')->get()->result(); //Untuk mengambil data dari database webinar
		$data['rule'] = $this->db->select('*')->from('datates2')->get()->result(); //Untuk mengambil data dari database webinar
		$this->template->load('template','fuzzybayes/list',$data);	
    }
	
	

function add() {
    $isi = array(
            'sensor1'     => $this->input->post('sensor1'),
			'sensor2'     => $this->input->post('sensor2'),
			'sensor3'     => $this->input->post('sensor3'),
			'hasil'     => $this->input->post('hasil'),
			
        );
        $this->db->insert('dataset2',$isi);
        redirect('fuzzybayes');
    }

	    
function edit(){
	if(isset($_POST['submit'])){
            $data = array(
             'sensor1'     => $this->input->post('sensor1'),
			'sensor2'     => $this->input->post('sensor2'),
			'sensor3'     => $this->input->post('sensor3'),
        );
        $id   = $this->input->post('id');
        $this->db->where('id',$id);
        $this->db->update('datates2',$data);
        redirect('fuzzybayes');
        }
    }

 function hapus(){
        $id = $this->uri->segment(3);
        if(!empty($id)){
            // proses delete data
            $this->db->where('id',$id);
            $this->db->delete('dataset2');
        }
        redirect('fuzzybayes');
    }

}