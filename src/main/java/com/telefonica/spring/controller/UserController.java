package com.telefonica.spring.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.telefonica.spring.model.Car;
import com.telefonica.spring.model.User;
import com.telefonica.spring.repository.UserRepository;

@Controller 
public class UserController {
	@Autowired
	private UserRepository userRepository;
	
	
	@PostMapping("/login")  //cuando se aprieta el botón de login
	public String login(@ModelAttribute("user") User user, HttpSession session) {
		//si el usuario no existe redirigimos a login
		if (user == null || StringUtils.isEmpty(user.getEmail()) || StringUtils.isEmpty(user.getPassword())) {
			return "redirect:/login";
		}
		//si existe 
		if (userRepository.findByEmailAndPassword(user.getEmail(), user.getPassword()) != null) {
			// Le pasamos a la sesion el objeto User encontrado con el método findByEmailAndPassword
			session.setAttribute("user", userRepository.findByEmailAndPassword(user.getEmail(), user.getPassword()));
			return "redirect:/cars";
		}else {
			return "redirect:/cars";
		}

	}
	
	@RequestMapping(value="/users", method = RequestMethod.POST)
	public String saveUser(@ModelAttribute("user") User user) {
		
		if (user.getId() == null) {
			// Si no existe el usuario,se crea
			userRepository.save(user);
		}else {
			// si existe se edita
			User userDB = userRepository.findById(user.getId()).get();//buscamos el usuario
			//recogemos sus datos para usarlos en la vista como placeholder
			userDB.setName(user.getName());
			userDB.setSurname(user.getSurname());
			userDB.setEmail(user.getEmail());
			userDB.setPassword(user.getPassword());
			userRepository.save(userDB);
		}
		return "redirect:/users";
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();//invalidamos la sesion
		return "redirect:/cars";
	}
	@GetMapping("/users")
	public ModelAndView getAllUsers() {
		
		ModelAndView mav = new  ModelAndView();
		mav.setViewName("user-list");  // indica la vista
		mav.addObject("users",userRepository.findAll()); // obtiene el modelo
		return mav;
	}
	@GetMapping("/users/empty")
	public ModelAndView createUser() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("user-form");
		mav.addObject("user", new User());
		return mav;
	}
	@GetMapping("/users/{id}")
	public ModelAndView getUser(@PathVariable Long id) {
		ModelAndView mav = new ModelAndView();
		Optional<User> userOpt = userRepository.findById(id);
		if (!userOpt.isPresent()) {
			mav.setViewName("user-list");
			mav.addObject("users", userRepository.findAll());
			
		}else {
			mav.setViewName("user-form");
			mav.addObject("user", userOpt.get());
			mav.addObject("users", userRepository.findAll());
		}
		return mav;
	}
	
	@GetMapping("/users/{id}/delete")
	public String removeUser(@PathVariable Long id) {
		userRepository.deleteById(id);//borramos el usuario de la BBDD
		return "redirect:/users";
	}
	
}
