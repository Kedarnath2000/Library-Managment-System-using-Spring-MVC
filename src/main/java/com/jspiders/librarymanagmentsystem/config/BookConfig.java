package com.jspiders.librarymanagmentsystem.config;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class BookConfig {
	
	@Bean
	public EntityManager getObject() {
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("library_managment_system");
		return entityManagerFactory.createEntityManager();
		
	}

}
