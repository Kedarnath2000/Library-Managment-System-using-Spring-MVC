package com.jspiders.librarymanagmentsystem.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.librarymanagmentsystem.pojo.Admin;

@Component
public class AdminRepository {
	
	@Autowired
	private EntityManager entityManager;
	
	public void addAdmin(Admin admin) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(admin);
		entityTransaction.commit();
		
	}
	
	public List<Admin> getAllAdmin() {
		Query query=entityManager.createQuery("SELECT admin FROM Admin admin");
		return query.getResultList();
	}
	
	
	public void deleteAdmin(Admin admin) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.remove(admin);
		entityTransaction.commit();
		
	}

}
