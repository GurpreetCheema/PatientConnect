package com.techelevator.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.model.User;
import com.techelevator.model.UserDAO;

@Controller
public class AuthenticationController {

	@Autowired
	private UserDAO userDAO;

	@Autowired
	public AuthenticationController(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String displayLoginForm(@RequestParam(required = false) String userName, HttpSession session, ModelMap modelHolder) {
		if (modelHolder.containsAttribute("user")){
			User sessionUser = (User)session.getAttribute("currentUser");
			if (userDAO.getRoleFromUserLogin(sessionUser.getUserName()) == 3) {
				return "/administrator";
			}
			else if (userDAO.getRoleFromUserLogin(sessionUser.getUserName()) == 2) {
				return "/doctor";
			}
			else if (userDAO.getRoleFromUserLogin(sessionUser.getUserName()) == 1) {
				return "/patient";
			}
		} 
		return "login";
		
	}

	@RequestMapping(path = "/login", method = RequestMethod.POST)
	public String login(@RequestParam String userName, @RequestParam String password,
			@RequestParam(required = false) String destination, HttpSession session) {
		if (userDAO.searchForUsernameAndPassword(userName, password)) {
			session.setAttribute("currentUser", userDAO.getUserByUserName(userName));

			if (destination != null && !destination.isEmpty()) {
				return "redirect:/";
			} else {
//				Redirects user to their profile page upon logging in
				if (userDAO.getRoleFromUserLogin(userName) == 3) {
					return "redirect:/administrator";
				}
				else if (userDAO.getRoleFromUserLogin(userName) == 2) {
					return "redirect:/doctor";
				}
				else if (userDAO.getRoleFromUserLogin(userName) == 1) {
					return "redirect:/patient";
				}
			}
		} else {
			return "redirect:/";
		}
		return "redirect:/";
	}

	@RequestMapping(path = "/logout", method = RequestMethod.POST)
	public String logout(ModelMap model, HttpSession session) {
		model.remove("currentUser");
		session.invalidate();
		return "redirect:/";
	}

	// @RequestMapping(path = "/autoLogin", method = RequestMethod.POST)
	// public String autoLogin(@RequestParam String userName, @RequestParam String
	// password, HttpSession session) {
	// if (userDAO.searchForUsernameAndPassword(userName, password)) {
	// session.setAttribute("currentUser", userDAO.getUserByUserName(userName));
	// }
	//
	// if(userDAO.getUserRoleByUsername(((User)session.getAttribute("currentUser")).getUserName())
	// == 1) {
	// return "redirect:/patientRegistration";
	// } else
	// if(userDAO.getUserRoleByUsername(((User)session.getAttribute("currentUser")).getUserName())
	// == 2) {
	// return "redirect:/doctorRegistration";
	// } else {
	// return "redirect:/login";
	// }
	// }
}
