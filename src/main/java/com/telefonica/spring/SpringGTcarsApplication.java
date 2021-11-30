package com.telefonica.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.telefonica.spring.model.Car;
import com.telefonica.spring.model.Make;
import com.telefonica.spring.model.User;
import com.telefonica.spring.repository.CarRepository;

import com.telefonica.spring.repository.MakeRepository;
import com.telefonica.spring.repository.UserRepository;


/**
 * Clase Application en la que metemos datos en la BBDD
 * @author GTCars
 *
 */

@SpringBootApplication
public class SpringGTcarsApplication implements CommandLineRunner  {
	@Autowired
	private CarRepository repositoryCar;
	@Autowired
	private MakeRepository repositoryMake;
	@Autowired
	private UserRepository userRepository;

	public static void main(String[] args) {
		SpringApplication.run(SpringGTcarsApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		// creamos los objetos y los guardamos en la BBDD
		Make mercedes = repositoryMake.save(new Make());
		mercedes.setName("Mercedes");
		mercedes.setImg_url("logo1.jpg");
		repositoryMake.save(mercedes);
		Car claseA = new Car("Clase A",2018,"Gasolina", 156, "Automático", 5, 30000,200000.0, "claseA1s.jpg","claseA2s.jpg","claseA3s.jpg");
		claseA.setMake(mercedes);
		repositoryCar.save(claseA);


		Make audi = repositoryMake.save(new Make());
		audi.setName("Audi");
		audi.setImg_url("logo2.png");
		repositoryMake.save(audi);
		Car claseB = new Car("A3 Sportblack",2005,"Gasolina", 156, "Automático", 5, 25000,0, "A31s.jpg","A32s.jpg","A33s.jpg");
		claseB.setMake(audi);
		repositoryCar.save(claseB);
		
		Make renault = repositoryMake.save(new Make());
		renault.setName("Renault");
		renault.setImg_url("logo3.png");
		repositoryMake.save(renault);
		Car claseC = new Car("Clio-V16",1998,"Gasolina", 156, "Automático", 5, 4500,120000.0, "clio1s.jpg","clio2s.jpg","clio3s.jpg");
		claseC.setMake(renault);
		repositoryCar.save(claseC);
		
		User admin = new User("admin", "admin", "admin@admin.com", "admin");
		User user1 = new User("Marcos", "Garcia", "marcos@garcia.com", "pass");
		User user2 = new User("Carlos","Mario","carlos@mario.com","pass");
		userRepository.save(admin);
		userRepository.save(user1);
		userRepository.save(user2);
	}

}
