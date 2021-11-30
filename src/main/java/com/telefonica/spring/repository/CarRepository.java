package com.telefonica.spring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.telefonica.spring.model.Car;
import com.telefonica.spring.model.Make;
@Repository
/**
 * Interfaz repositorio con metodos para la clase Car
 * @author GTCars
 *
 */
public interface CarRepository extends JpaRepository  <Car,Long>{
		Car findByYear (Integer year);
		Car findByMake (Make make);
		Car findByPower (int power);
		Car findByPrice (double price);
		List<Car> findByMakeAndModelAndYearAndFuel (Make make,String model,Integer integer, String fuel);
		List<Car> findByModel (String model);
}
