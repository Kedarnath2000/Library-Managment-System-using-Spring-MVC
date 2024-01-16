package com.jspiders.librarymanagmentsystem.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.librarymanagmentsystem.pojo.Book;

@Component
public class BookRepository {
	
	@Autowired
	private EntityManager entityManager;
	
	public void addBook(Book book) {
		System.out.println("hii");
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(book);
		entityTransaction.commit();
	}
	
	public List<Book> getAllBook() {
		Query query=entityManager.createQuery("SELECT book FROM Book book");
		return query.getResultList();
	}
	
	public void deleteBook(Book book) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.remove(book);
		entityTransaction.commit();
	}
	
	public Book getBook(long id) {
		return entityManager.find(Book.class, id);
	}
	
	public List<Book> getBookByName(String name) {
		Query query=entityManager.createQuery("SELECT book FROM Book book WHERE name LIKE '%"+name+"%'");
		return query.getResultList();
		
	}

}
