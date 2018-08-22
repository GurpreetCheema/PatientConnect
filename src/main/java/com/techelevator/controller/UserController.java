package com.techelevator.controller;

import javax.servlet.http.HttpSession;
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
import com.techelevator.model.Office;
import com.techelevator.model.OfficeDAO;
import com.techelevator.model.Patient;
import com.techelevator.model.PatientDAO;
import com.techelevator.model.User;
import com.techelevator.model.UserDAO;

@Controller
public class UserController {

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private DoctorDAO doctorDAO;
	
	@Autowired
	private PatientDAO patientDAO;
	
	@Autowired
	private OfficeDAO officeDAO;
	
	private long currId;

	@Autowired
	public UserController(UserDAO userDAO, DoctorDAO doctorDAO, PatientDAO patientDAO) {
		this.userDAO = userDAO;
		this.doctorDAO = doctorDAO;
		this.patientDAO = patientDAO;
		currId = 0;
	}

	@RequestMapping(path="/newUser", method=RequestMethod.GET)
	public String displayNewUserForm(ModelMap modelHolder, HttpSession session) {
		if (!modelHolder.containsAttribute("user")) {
			modelHolder.addAttribute("user", new User());
		}
		return "newUser";
	}
	
	@RequestMapping(path="/fun", method=RequestMethod.GET)
	public String showFun() {
		return "fun";
	}
	
	@RequestMapping(path="/newUser", method=RequestMethod.POST)
	public String createUser(@Valid @ModelAttribute User user, @RequestParam String profileType,
							BindingResult result, RedirectAttributes flash, HttpSession session) {
		if(result.hasErrors()) {
			flash.addFlashAttribute("user", user);
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "user", result);
			return "redirect:/newUser";
		}
		
		if(profileType.equals("Doctor"))
		{
			currId = userDAO.saveUser(user.getUserName(), user.getPassword());
			userDAO.insertUserIdInDoctorRelator(userDAO.getUserIdByUsername(user));
			userDAO.insertUserIdInUserRole(userDAO.getUserIdByUsername(user), 2);
			
			return "redirect:/doctorRegistration";
		}
		else if(profileType.equals("Patient"))
		{
			userDAO.saveUser(user.getUserName(), user.getPassword());
			userDAO.insertUserIdInPatientRelator(userDAO.getUserIdByUsername(user));
			userDAO.insertUserIdInUserRole(userDAO.getUserIdByUsername(user), 1);
			
			if (userDAO.searchForUsernameAndPassword(user.getUserName(), user.getPassword())) {
				session.setAttribute("currentUser", userDAO.getUserByUserName(user.getUserName()));
			}
			
			return "redirect:/patientRegistration";
		}
		else return "redirect:/newUser";
	}
	
	@RequestMapping(path="/doctorRegistration", method=RequestMethod.GET)
	public String registerDoctor(HttpSession session) {
		if (userDAO.getRoleFromUserLogin(((User)session.getAttribute("currentUser")).getUserName()) == 3) {
			return "doctorRegistration";
		} else {
			return "redirect:/";
		}
	}
	
	@RequestMapping(path="/doctorRegistration", method=RequestMethod.POST)
	public String registerDoctor(
				@ModelAttribute Doctor newDoctor,
				HttpSession session,
				RedirectAttributes flashScope  //pass a flash scope variable into save method
			) {
			Long newDoctorId = doctorDAO.save(newDoctor);
			doctorDAO.updateDoctorRelatorId(newDoctorId, currId);
			
			flashScope.addFlashAttribute("message", "New doctor profile created!");
			
			return "redirect:/administrator";
	}
	
	@RequestMapping(path="/patientRegistration", method=RequestMethod.GET)
	public String registerPatient() {
		return "patientRegistration";
	}
	
	@RequestMapping(path="/patientRegistration", method=RequestMethod.POST)
	public String patientRegistration(
				@ModelAttribute Patient newPatient,
				ModelMap modelHolder,
				HttpSession session,
				RedirectAttributes flashScope  //pass a flash scope variable into save method
			) {
			
			long patientId = patientDAO.save(newPatient);
			
			User sessionUser = (User)session.getAttribute("currentUser");
			
			patientDAO.updatePatientRelatorId(patientId, sessionUser.getUserId());
			
			flashScope.addFlashAttribute("message", "New patient profile created!");
			
			return "redirect:/patient";
	}
	
	@RequestMapping(path="/patient", method=RequestMethod.GET)
	public String patientProfile(ModelMap modelHolder, HttpSession session) {
		User sessionUser = (User)session.getAttribute("currentUser");
		
		modelHolder.put("patient", patientDAO.getPatientInfoByUserName(sessionUser.getUserName()));
		return "patient";
	}
	
	@RequestMapping(path="/doctor", method=RequestMethod.GET)
	public String doctorProfile(ModelMap modelHolder, HttpSession session) {
		User sessionUser = (User)session.getAttribute("currentUser");
		
		modelHolder.put("doctor", doctorDAO.getDoctorInfoByUserName(sessionUser.getUserName()));
		return "doctor";
	}
	
	@RequestMapping(path="/appointment", method=RequestMethod.GET)
	public String viewCalendars() {
		return "appointment";
	}
	
	@RequestMapping(path="/administrator", method=RequestMethod.GET)
	public String viewAdministratorPage(HttpSession session) {
		if(((User)session.getAttribute("currentUser")).getUserId() == 1) {
			return "administrator";
		} else {
			return "redirect:/";
		}
	}
	
	@RequestMapping(path="/office", method=RequestMethod.GET)
	public String viewOffice(ModelMap modelHolder) {
		modelHolder.put("office", officeDAO.getOfficeInfo());
		return "office";
	}
	
	@RequestMapping(path="/updateOffice", method=RequestMethod.GET)
	public String updateOffice(ModelMap modelHolder) {
		modelHolder.put("office", officeDAO.getOfficeInfo());
		return "/updateOffice";
	}
	
	@RequestMapping(path="/updateOffice", method=RequestMethod.POST)
	public String updateOffice(@ModelAttribute Office newOffice,
							  ModelMap modelHolder,
							  RedirectAttributes flashScope) {
		modelHolder.put("office", officeDAO.getOfficeInfo());
		officeDAO.update(newOffice);
		return "/updateOffice";
	}
	
	@RequestMapping(path="/deleteDoctor", method=RequestMethod.GET)
	public String displayDoctors(ModelMap modelHolder, HttpSession session) {
		if(userDAO.getRoleFromUserLogin(((User)session.getAttribute("currentUser")).getUserName()) == 3) {
			modelHolder.put("doctors", doctorDAO.getAllDoctors());
			return "deleteDoctor";
		} else {
			return "redirect:/";
		}
	}
	
	@RequestMapping(path="/deleteDoctor", method=RequestMethod.POST)
	public String deleteDoctors(@RequestParam long doctorId, ModelMap modelHolder, RedirectAttributes flashScope) {
		doctorDAO.deleteDoctorById(doctorId);
		flashScope.addFlashAttribute("message", "Doctor Deleted");
		return "redirect:/deleteDoctor";
	}
	
	@RequestMapping(path="/deletePatient", method=RequestMethod.GET)
	public String displayPatients(ModelMap modelHolder, HttpSession session) {
		if(userDAO.getRoleFromUserLogin(((User)session.getAttribute("currentUser")).getUserName()) == 3) {
			modelHolder.put("patients", patientDAO.getAllPatients());
			return "deletePatient";
		} else {
			return "redirect:/";
		}
	}
	
	@RequestMapping(path="/deletePatient", method=RequestMethod.POST)
	public String deletePatients(@RequestParam long patientId, ModelMap modelHolder, RedirectAttributes flashScope) {
		patientDAO.deletePatientById(patientId);
		flashScope.addFlashAttribute("message", "Patient Deleted");
		return "redirect:/deletePatient";
	}
	
	@RequestMapping(path="/updatePatientInfo", method=RequestMethod.GET)
	public String updatePatient() {
		return "updatePatientInfo";
	}
	
	@RequestMapping(path="/updatePatientInfo", method=RequestMethod.POST)
	public String updatePatient(
				@ModelAttribute Patient newPatient,
				ModelMap modelHolder,
				HttpSession session,
				RedirectAttributes flashScope  //pass a flash scope variable into save method
			) {
			currId = ((User)session.getAttribute("currentUser")).getUserId();
			long patientId = patientDAO.getPatientIdFromUserId(currId);
	
			patientDAO.updatePatientInfo(newPatient, patientId);
			
			flashScope.addFlashAttribute("message", "Information updated!");
			
			return "redirect:/patient";
	}

}
