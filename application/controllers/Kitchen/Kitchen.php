<?php
defined('BASEPATH') or exit('No direct script access allowed');


class Kitchen extends CI_Controller
{

	public function index()
	{

		$data = [
			'title' => 'Kitchen'
		];



		$this->load->view('includes/main_header', $data);
		$this->load->model('Kitchen_Model');
		$order['order'] = $this->Kitchen_Model->current_order();
		$this->load->view('Kitchen/Kitchen', $order);
		$this->load->view('includes/main_footer');
	}

	public function status_change()
	{
		$data = $this->input->post();
		$table = $this->input->post('table_no');

		$this->session->set_userdata('t-' . $table, 'cooking');

		$this->load->model('Kitchen_Model');
		$status = $this->Kitchen_Model->status_change($table);
		//print_r($status);
		$this->session->set_userdata('status', $status);
		redirect('Kitchen/Kitchen');
	}

	public function status_change_ready()
	{
		$data = $this->input->post();

		$table = $this->input->post('table_no');

		$this->session->set_userdata('t-' . $table, 'ready');

		$this->load->model('Kitchen_Model');
		$status = $this->Kitchen_Model->status_change_ready($table);
		$this->session->set_userdata('status', $status);
		redirect('Kitchen/Kitchen');
	}
}
