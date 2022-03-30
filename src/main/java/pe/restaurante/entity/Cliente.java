package pe.restaurante.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="cliente")
public class Cliente implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer clienteId;
	
	@Column
	private String nomCliente;
	
	@Column
	private String apeCliente;
	
	@Column
	private String direccion;
	
	@Column
	private String telefono;
	

	public Cliente() {
		
	}

	
	
	public Cliente(Integer clienteId, String nomCliente, String apeCliente, String direccion, String telefono){
		this.clienteId= clienteId;
		this.nomCliente= nomCliente;
		this.apeCliente= apeCliente;
		this.direccion= direccion;
		this.telefono= telefono;

	}
	
		
	public Integer getClienteId() {
		return clienteId;
	}
	
	public void setClienteId(Integer clienteId) {
		this.clienteId=clienteId;
	}
	
	public String getNomCliente() {
		return nomCliente;
	}
	
	public void setNomCliente(String nomCliente) {
		this.nomCliente=nomCliente;
	}
	
	
	public String getApeCliente() {
		return apeCliente;
	}
	
	public void setApeCliente(String apeCliente) {
		this.apeCliente=apeCliente;
	}
	
	public String getDireccion() {
		return direccion;
	}
	
	public void setDireccion(String direccion) {
		this.direccion=direccion;
	}
	
	public String getTelefono() {
		return telefono;
	}
	
	public void setTelefono(String telefono) {
		this.telefono=telefono;
	}
	
	




}
