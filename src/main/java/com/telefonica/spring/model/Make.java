package com.telefonica.spring.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
/**
 * Clase entidad Make con los atributos de los fabricantes con los atributos:
 * Long id - id del fabricante
 * String name - nombre del fabricante
 * String img_url - imagen del logo del fabricante
 * List<Car> cars - lista de coches de cada fabricante
 * @author GTCars
 *
 */
public class Make implements Serializable  {
private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue (strategy=GenerationType.IDENTITY)
	private Long id;
	private String name;
    private String img_url;  // ruta de acceso a la imagen, hay que hacerlo para que con subir el nombre del archivo .jpg sea suficiente y la página se encarge de buscar en la ruta que será la misma para todo
	
	@OneToMany(mappedBy = "make")
	List<Car> cars = new ArrayList<>();

	//constructores
	public Make () {}


	public Make(String name, String img_url) {
		super();
		this.name = name;
		this.img_url = img_url;
	}

	//metodos getter y setter
	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getImg_url() {
		return img_url;
	}


	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}


	public List<Car> getCars() {
		return cars;
	}


	public void setCars(List<Car> cars) {
		this.cars = cars;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
