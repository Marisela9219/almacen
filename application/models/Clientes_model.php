<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clientes_model extends CI_Model {
	public function getClientes(){
		$this->db->select("c.*");
		$this->db->from("umilitar c");
		$this->db->where("c.estado","1");
		$resultados = $this->db->get();
		return $resultados->result();
	}

	public function getCliente($id){
		$this->db->where("id",$id);
		$resultado = $this->db->get("umilitar");
		return $resultado->row();

	}
	public function save($data){
		return $this->db->insert("umilitar",$data);
	}
	public function update($id,$data){
		$this->db->where("id",$id);
		return $this->db->update("umilitar",$data);
	}

	
}