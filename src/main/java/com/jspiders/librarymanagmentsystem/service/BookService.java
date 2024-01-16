package com.jspiders.librarymanagmentsystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.librarymanagmentsystem.pojo.Book;
import com.jspiders.librarymanagmentsystem.repository.BookRepository;

@Component
public class BookService {
	
	@Autowired
	private BookRepository bookRepository;
	
	public void addBook(String name,String author,String publisher,double price,int yop) {
		Book book=new Book();
		book.setName(name);
		book.setAuthor(author);
		book.setPublisher(publisher);
		book.setPrice(price);
		book.setYop(yop);
		bookRepository.addBook(book);
	}
	
	public List<Book> getAllBook() {
		
		return bookRepository.getAllBook();
		
	}
	
	public String deleteBook(long id) {
		Book bookToBeDeleted=null;
		List<Book> books=bookRepository.getAllBook();
		for(Book book:books) {
			if(book.getId()==id) {
				bookToBeDeleted=book;
				
			}
		}
		if(bookToBeDeleted==null) {
			return "Book not Found";
		}else {
			bookRepository.deleteBook(bookToBeDeleted);
			return "Book Deleted";
		}
	}
	
	public Book editBook(long id) {
		Book bookToBeUpdated=null;
		List<Book> books=bookRepository.getAllBook();
		for(Book book:books) {
			if(book.getId()==id) {
				bookToBeUpdated=book;
			}
		}
		return bookToBeUpdated;
	}
	
	public void updateBook(long id,String name,String author,String publisher,double price,int yop) {
		Book book=bookRepository.getBook(id);
		System.out.println(book);
		book.setName(name);
		book.setAuthor(author);
		book.setPublisher(publisher);
		book.setPrice(price);
		book.setYop(yop);
		bookRepository.addBook(book);
	}
	
	public List<Book> getBookByName(String name) {
		return bookRepository.getBookByName(name);
		
	}

}
