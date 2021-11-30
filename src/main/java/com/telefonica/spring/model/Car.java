package com.telefonica.spring.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
/**
 * Clase para la entidad Car con los atributos:
 * Long id - id del coche
 * String model - modelo del coche
 * Integer year - año de fabricacion
 * int power - potencia del motor
 * String gear_type - tipo de cambio
 * int doors - numero de puertas
 * double price - precio del vehiculo
 * doubl kms - kilometros del vehiculo
 * String img_url1 - url de las imagenes de los vehiculos
 * String img_url2 - url de las imagenes de los vehiculos
 * String img_url3 - url de las imagenes de los vehiculos
 * Make make - objeto Make para relacionar
 * @author GTCars
 *
 */
public class Car implements Serializable {
	
private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue (strategy=GenerationType.IDENTITY)
	private Long id;
	private String model;
	private Integer year;
	private String fuel;
	private int power;
	private String gear_type;
	private int doors;
	private double price;
	private double kms;
	private String img_url1;
	private String img_url2;
	private String img_url3;
	
	//relacion con la entidad Make
	@ManyToOne()
	@JoinColumn(name = "id_make")
	private Make make;

	//constructores
	public Car () {}
	
	public Car(String model, Integer year, String fuel, int power, String gear_type, int doors, double price,double kms,
			String img_url1, String img_url2, String img_url3) {
		super();
		this.model = model;
		this.year = year;
		this.fuel = fuel;
		this.power = power;
		this.gear_type = gear_type;
		this.doors = doors;
		this.price = price;
		this.kms=kms;
		this.img_url1 = img_url1;
		this.img_url2 = img_url2;
		this.img_url3 = img_url3;
	}

	//metodos getter y setter
	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getModel() {
		return model;
	}


	public void setModel(String model) {
		this.model = model;
	}


	public Integer getYear() {
		return year;
	}


	public void setYear(Integer year) {
		this.year = year;
	}


	public String getFuel() {
		return fuel;
	}


	public void setFuel(String fuel) {
		this.fuel = fuel;
	}


	public int getPower() {
		return power;
	}


	public void setPower(int power) {
		this.power = power;
	}


	public String getGear_type() {
		return gear_type;
	}


	public void setGear_type(String gear_type) {
		this.gear_type = gear_type;
	}


	public Make getMake() {
		return make;
	}


	public void setMake(Make make) {
		this.make = make;
	}


	public int getDoors() {
		return doors;
	}


	public void setDoors(int doors) {
		this.doors = doors;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	public String getImg_url1() {
		return img_url1;
	}



	public void setImg_url1(String img_url1) {
		this.img_url1 = img_url1;
	}



	public String getImg_url2() {
		return img_url2;
	}



	public void setImg_url2(String img_url2) {
		this.img_url2 = img_url2;
	}



	public String getImg_url3() {
		return img_url3;
	}


	public void setImg_url3(String img_url3) {
		this.img_url3 = img_url3;
	}

	public double getKms() {
		return kms;
	}

	public void setKms(double kms) {
		this.kms = kms;
	}
	
		
	
	
}
