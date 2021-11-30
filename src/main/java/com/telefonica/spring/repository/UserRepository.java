package com.telefonica.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.telefonica.spring.model.User;
/**
 * Interfaz repositorio con metodos para la clase Car
 * @author GTCars
 *
 */
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	
	User findByEmail(String email);
	User findByEmailAndPassword(String email, String password);

}
