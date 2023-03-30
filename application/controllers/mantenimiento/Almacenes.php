<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Almacenes extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model("Almacenes_model");
	}

	
	public function index()
	{
		$data  = array(
			'almacenes' => $this->Almacenes_model->getCategorias(), 
		);
		$this->load->view("layouts/header");
		$this->load->view("layouts/aside");
		$this->load->view("admin/almacenes/list",$data);
		$this->load->view("layouts/footer");

	}

	public function add(){

		$this->load->view("layouts/header");
		$this->load->view("layouts/aside");
		$this->load->view("admin/almacenes/add");
		$this->load->view("layouts/footer");
	}

	public function store(){

		$nombre = $this->input->post("nombre");
		$descripcion = $this->input->post("descripcion");

		$this->form_validation->set_rules("nombre","Nombre","required|is_unique[almacenes.nombre]");

		if ($this->form_validation->run()==TRUE) {

			$data  = array(
				'nombre' => $nombre, 
				'descripcion' => $descripcion,
				'estado' => "1"
			);

			if ($this->Almacenes_model->save($data)) {
				redirect(base_url()."mantenimiento/almacenes");
			}
			else{
				$this->session->set_flashdata("error","No se pudo guardar la informacion");
				redirect(base_url()."mantenimiento/almacenes/add");
			}
		}
		else{
			/*redirect(base_url()."mantenimiento/almacenes/add");*/
			$this->add();
		}

		
	}

	public function edit($id){
		$data  = array(
			'categoria' => $this->Almacenes_model->getCategoria($id), 
		);
		$this->load->view("layouts/header");
		$this->load->view("layouts/aside");
		$this->load->view("admin/almacenes/edit",$data);
		$this->load->view("layouts/footer");
	}

	public function update(){
		$idCategoria = $this->input->post("idCategoria");
		$nombre = $this->input->post("nombre");
		$descripcion = $this->input->post("descripcion");

		$categoriaactual = $this->Almacenes_model->getCategoria($idCategoria);

		if ($nombre == $categoriaactual->nombre) {
			$is_unique = "";
		}else{
			$is_unique = "|is_unique[almacenes.nombre]";

		}


		$this->form_validation->set_rules("nombre","Nombre","required".$is_unique);
		if ($this->form_validation->run()==TRUE) {
			$data = array(
				'nombre' => $nombre, 
				'descripcion' => $descripcion,
			);

			if ($this->Almacenes_model->update($idCategoria,$data)) {
				redirect(base_url()."mantenimiento/almacenes");
			}
			else{
				$this->session->set_flashdata("error","No se pudo actualizar la informacion");
				redirect(base_url()."mantenimiento/almacenes/edit/".$idCategoria);
			}
		}else{
			$this->edit($idCategoria);
		}

		
	}

	public function view($id){
		$data  = array(
			'categoria' => $this->Almacenes_model->getCategoria($id), 
		);
		$this->load->view("admin/almacenes/view",$data);
	}

	public function delete($id){
		$data  = array(
			'estado' => "0", 
		);
		$this->Almacenes_model->update($id,$data);
		echo "mantenimiento/almacenes";
	}
}
