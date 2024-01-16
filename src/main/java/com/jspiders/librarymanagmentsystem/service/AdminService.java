package com.jspiders.librarymanagmentsystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.librarymanagmentsystem.pojo.Admin;
import com.jspiders.librarymanagmentsystem.repository.AdminRepository;

@Component
public class AdminService {
	
	@Autowired
	private AdminRepository adminRepository;
	
	public void addAdmin(String userName,String email,String password) {
		Admin admin=new Admin();
		admin.setUserName(userName);
		admin.setEmail(email);
		admin.setPassword(password);
		adminRepository.addAdmin(admin);
		
	}
	
	public Admin login(String email,String password) {
		Admin adminTocheck=null;
		List<Admin> admins=adminRepository.getAllAdmin();
		for(Admin admin:admins) {
			if(admin.getEmail().equals(email) && admin.getPassword().equals(password)) {
				adminTocheck=admin;
			}
		}
		return adminTocheck;
		
	}
	
	public void deleteAdmin(String email) {
		Admin adminToBeDeleted=null;
		List<Admin> admins=adminRepository.getAllAdmin();
		for(Admin admin:admins) {
			if(admin.getEmail().equals(email)) {
				adminToBeDeleted=admin;
			}
		}
		adminRepository.deleteAdmin(adminToBeDeleted);
	}
	
	public List<Admin> getAllAdmin() {
		return adminRepository.getAllAdmin();
		
	}

}
