package com.telefonica.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.telefonica.spring.model.Make;



@Repository
/**
 * Interfaz repositorio con metodos para la clase Make
 * @author GTCars
 *
 */
public interface MakeRepository extends JpaRepository<Make, Long> {
		Make findByName (String name);
}
