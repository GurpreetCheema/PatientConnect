package com.techelevator.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.model.Doctor;
import com.techelevator.model.DoctorDAO;
import com.techelevator.model.User;
import com.techelevator.model.UserDAO;
import com.techelevator.npgeek.model.Survey;

@Controller
public class UserController {

	private UserDAO userDAO;
	private DoctorDAO doctorDAO;

	@Autowired
	public UserController(UserDAO userDAO, DoctorDAO doctorDAO) {
		this.userDAO = userDAO;
		this.doctorDAO = doctorDAO;
	}

	@RequestMapping(path="/users/new", method=RequestMethod.GET)
	public String displayNewUserForm(ModelMap modelHolder) {
		if( ! modelHolder.containsAttribute("user")) {
			modelHolder.addAttribute("user", new User());
		}
		return "newUser";
	}
	
	@RequestMapping(path="/users", method=RequestMethod.POST)
	public String createUser(@Valid @ModelAttribute User user, BindingResult result, RedirectAttributes flash) {
		if(result.hasErrors()) {
			flash.addFlashAttribute("user", user);
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "user", result);
			return "redirect:/users/new";
		}
		
		userDAO.saveUser(user.getUserName(), user.getPassword());
		return "redirect:/login";
	}
	
	@RequestMapping(path="/doctorRegistration", method=RequestMethod.GET)
	public String registerDoctor() {
		return "/doctorRegistration";
	}
	
	@RequestMapping(path="/doctorRegistration", method=RequestMethod.POST)
	public String registerDoctor(
				@RequestParam String firstName,				
				@RequestParam String lastName,
				@RequestParam String practice,
				RedirectAttributes flashScope  //pass a flash scope variable into saveNewProject method
			) {
			Doctor newDoctor= new Doctor();
			newDoctor.setFirstName(firstName);
			newDoctor.setLastName(lastName);
			newDoctor.setPractice(practice);
			
			doctorDAO.save(newDoctor);
			
			flashScope.addFlashAttribute("message", "New doctor profile created!");
			
			return "redirect:/doctor";
	}
}
