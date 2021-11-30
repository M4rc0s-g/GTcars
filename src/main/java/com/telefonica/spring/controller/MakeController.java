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


import com.telefonica.spring.model.Make;

import com.telefonica.spring.repository.MakeRepository;


@Controller
public class MakeController {
	private final Logger log = LoggerFactory.getLogger(MakeController.class);
	
	@Autowired
	private MakeRepository makeRepository;

	
	/**
	 * GET
	 * @return
	 */
	@GetMapping("/makes")
	public ModelAndView getAllMakes() {
		log.debug("request to get makes");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("make-list");
		//reogemos todos los makes en la BBDD y los mandamos a la vista
		mav.addObject("makes", makeRepository.findAll());
		return mav;
	}
	@GetMapping("/makes/empty")
	public ModelAndView createMake() {
		log.debug("request to empty make form");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("make-edit");
		//creamos un make "vacio" y lo mandamos a la vista make-edit para darle valores
		mav.addObject("make", new Make());
		return mav;
	}
	
	@GetMapping("/makes/{id}")
	public ModelAndView getMake(@PathVariable Long id) {
		log.debug("request to get Manufacturer : {}", id);
		Optional<Make> make = makeRepository.findById(id);

		ModelAndView mav = new ModelAndView();
		if (make.isPresent()) {
			//si el make existe vamos a la vista de edicion y le pasamos sus datos para usarlos de placeholder
			mav.setViewName("make-edit");
			mav.addObject("make", make.get());
		} else {
			//si no existe nos lleva a la lista con todos
			mav.setViewName("make-list");
			mav.addObject("message", "make not found");
		}
		return mav;
	}
	
	@GetMapping("/makes/{id}/delete")
	public String deleteMake(@PathVariable Long id) {
		log.debug("request to delete manufacturers : {}", id);
		//borramos el make por id
		makeRepository.deleteById(id);
		return "redirect:/makes" ;
	}
	
	/**
	 * POST
	 */
	@PostMapping("/makes")
	public String saveMake(@ModelAttribute("make") Make make) {
		log.debug("request to save manufacturer : {}", make);

		// El Make no existe y tenemos que crearlo
		if (make.getId() == null) {
			makeRepository.save(make);
			return "redirect:/makes";
		}

		// El Make ya existe y tenemos que actualizarlo
		Optional<Make> existingMakeWrap = makeRepository.findById(make.getId());
		if (existingMakeWrap.isPresent()) {
			Make existingMake = existingMakeWrap.get();
			existingMake.setName(make.getName());
			existingMake.setImg_url(make.getImg_url());
			makeRepository.save(existingMake);
		}
		return "redirect:/makes";
	}
	
}
