package com.telefonica.spring.controller;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.telefonica.spring.model.Car;

import com.telefonica.spring.repository.CarRepository;
import com.telefonica.spring.repository.MakeRepository;

@Controller 
public class CarController {
	
	private final Logger log = LoggerFactory.getLogger(CarController.class);
	@Autowired
	private MakeRepository makeRepository;
	@Autowired
	private CarRepository carRepository;
	
	
	/**
	 * GET
	 * @return
	 */
	
	@GetMapping("/")
	public String root() {
	return "redirect:/cars";
	}
	
	@GetMapping("/cars")
	public ModelAndView getAllMovies() {
		
		ModelAndView mav = new  ModelAndView();
		mav.setViewName("car-list");  // indica la vista
		mav.addObject("car",new Car());
		mav.addObject("carslisted",carRepository.findAll());
		mav.addObject("cars",carRepository.findAll()); // obtiene el modelo
		mav.addObject("makes",makeRepository.findAll());
		return mav;
	}
	@GetMapping("/cars/empty")
	public ModelAndView createMovie() {
		log.debug("request to empty car form");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("car-edit");
		mav.addObject("car", new Car());
		mav.addObject("makes",makeRepository.findAll());
		return mav;
	}
	
	@GetMapping("/cars/{id}/delete")
	public String deleteMovie(@PathVariable Long id) {
		log.debug("request to delete Car : {}", id);
		carRepository.deleteById(id);
		return "redirect:/cars" ;
	}
	
	@GetMapping("/cars/{id}")
	public ModelAndView getProduct(@PathVariable Long id) {
		log.debug("request to get Car: {}", id);
		Optional<Car> car = carRepository.findById(id);

		ModelAndView mav = new ModelAndView();
		if (car.isPresent()) {
			mav.setViewName("car-edit");
			mav.addObject("car", car.get());
			mav.addObject("makes", makeRepository.findAll());

		} else {
			mav.setViewName("car-list");
			mav.addObject("message", "Car not found");
		}

		return mav;
	}
	@GetMapping("/cars/{id}/car-detail")
	public ModelAndView getCardetail(@PathVariable Long id) {
		log.debug("request to detail Car : {}", id);
		Optional<Car> car = carRepository.findById(id);
		ModelAndView mav = new ModelAndView();
	
			mav.setViewName("car-detail");
			mav.addObject("car", car.get());
			mav.addObject("makes", makeRepository.findAll());
	        return mav;
	}
	
/**
 * REDIRECCION NAVBAR
 */
	@GetMapping("/contacto")
	public ModelAndView contact() {
		
		ModelAndView mav = new  ModelAndView();
		mav.setViewName("contacto");  // indica la vista
		return mav;
	  //return new ModelAndView ("movie-list","movies",movieRepository.findAll());  magia negra 
	}
	
	
	@GetMapping("/sobre-nosotros")
	public ModelAndView sobre() {
		
		ModelAndView mav = new  ModelAndView();
		mav.setViewName("sobre-nosotros");  // indica la vista
		return mav;
	  //return new ModelAndView ("movie-list","movies",movieRepository.findAll());  magia negra 
	}
	
	
	/**
	 * POST
	 */
	@PostMapping("/cars/filtered-list")
	public ModelAndView getFilteredCars(@ModelAttribute("car") Car car) {
		
		ModelAndView mav = new ModelAndView();
	    if (carRepository.findByMakeAndModelAndYearAndFuel(car.getMake(),car.getModel(),car.getYear(),car.getFuel()).isEmpty()) {
	    	mav.setViewName("car-list");
			mav.addObject("cars",carRepository.findAll());
			mav.addObject("carslisted",carRepository.findAll());
			mav.addObject("makes",makeRepository.findAll());
			return mav;	
	    }else {
			mav.addObject("cars",carRepository.findByMakeAndModelAndYearAndFuel(car.getMake(),car.getModel(),car.getYear(),car.getFuel()));
			mav.addObject("carslisted",carRepository.findAll());
			mav.addObject("makes",makeRepository.findAll());
			mav.setViewName("car-list");
			return mav;
	    }
		
	}
		
		

	@PostMapping("/cars")
	public String saveProduct(@ModelAttribute("car") Car car) {
		log.debug("request to save Car : {}", car);

		// El producto no existe y tenemos que crearlo
		if (car.getId() == null) {
			carRepository.save(car);
			return "redirect:/cars";
		}

		// El producto ya existe y tenemos que actualizarlo
		Optional<Car> existingCarWrap = carRepository.findById(car.getId());
		if (existingCarWrap.isPresent()) {
			Car existingCar = existingCarWrap.get();
			existingCar.setYear(car.getYear());
			existingCar.setModel(car.getModel());
			existingCar.setFuel(car.getFuel());
			existingCar.setDoors(car.getDoors());
			existingCar.setPower(car.getPower());
			existingCar.setPrice(car.getPrice());
			existingCar.setGear_type(car.getGear_type());
			existingCar.setMake(car.getMake());
			existingCar.setKms(car.getKms());
			existingCar.setImg_url1(car.getImg_url1());
			existingCar.setImg_url2(car.getImg_url2());
			existingCar.setImg_url3(car.getImg_url3());
		
			/*approach 2: En caso de no utilizar cascade = {CascadeType.ALL} entre Product y ProductSize será necesario 
			 * descomentar la siguiente linea para guardar manualmente*/
//			productSizeRepository.save(existingProduct.getProductSize());
			carRepository.save(existingCar);
		}
		return "redirect:/cars";
	}
	
}
