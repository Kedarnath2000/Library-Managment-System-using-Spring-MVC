package com.jspiders.librarymanagmentsystem.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jspiders.librarymanagmentsystem.pojo.Admin;
import com.jspiders.librarymanagmentsystem.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	@RequestMapping(path = "/login", method = RequestMethod.GET)
	public String getLoginPage(ModelMap modelMap) {
		modelMap.addAttribute("token", "access");
		return "log_in";
	}

	@RequestMapping(path = "/login", method = RequestMethod.POST)
	public String login(@RequestParam String email, @RequestParam String password, ModelMap modelMap,
			HttpSession httpSession) {
		Admin admin = adminService.login(email, password);
		if (admin != null) {
			httpSession.setAttribute("admin", admin);
			modelMap.addAttribute("message", "Login Successfully");
			modelMap.addAttribute("admin", email);
			return "welcome";
		} else {
			modelMap.addAttribute("message2", "Invalid Email or Password");
			return "log_in";
		}
	}

	@RequestMapping(path = "/sign_in", method = RequestMethod.GET)
	public String getSignUpPage(ModelMap modelMap) {
		List<Admin> admins = adminService.getAllAdmin();
		if (admins.size() < 3) {
			return "sign_in";
		} else {
			modelMap.addAttribute("message2", "admin already exists");
			return "log_in";
		}

	}

	@RequestMapping(path = "/sign_in", method = RequestMethod.POST)
	public String signIn(@RequestParam String userName, @RequestParam String email, @RequestParam String password,
			ModelMap modelMap) {
		adminService.addAdmin(userName, email, password);
		modelMap.addAttribute("message", "Sign In successfully");
		return "log_in";
	}

	@RequestMapping(path = "/delete_admin", method = RequestMethod.GET)
	public String deleteAdmin(@RequestParam String email, ModelMap modelMap, HttpSession httpSession) {
		Admin admin = (Admin) httpSession.getAttribute("admin");
		if (admin != null) {
			System.out.println(email);
			adminService.deleteAdmin(email);
			modelMap.addAttribute("message", "Admin Deleted");
			return "log_in";
		}
		return "log_in";

	}

	@RequestMapping(path = "/log_out", method = RequestMethod.GET)
	public String logOut(HttpSession httpSession) {
		httpSession.invalidate();
		return "log_in";

	}

}
