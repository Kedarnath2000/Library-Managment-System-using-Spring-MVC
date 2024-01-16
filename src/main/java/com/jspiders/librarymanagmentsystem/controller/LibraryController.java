package com.jspiders.librarymanagmentsystem.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jspiders.librarymanagmentsystem.pojo.Admin;
import com.jspiders.librarymanagmentsystem.pojo.Book;
import com.jspiders.librarymanagmentsystem.service.BookService;

@Controller
public class LibraryController {
	
	@Autowired
	private BookService bookService;
	
	@RequestMapping(path="/add_book",method = RequestMethod.GET)
	public String getAddBookPage(HttpSession httpSession) {
		Admin admin=(Admin)httpSession.getAttribute("admin");
		if(admin!=null) {
			return "add_book";
		}else {
			return "log_in";
		}
		
		
	}
	
	@RequestMapping(path="/add_book",method = RequestMethod.POST)
	public String addBook(@RequestParam String name,@RequestParam String author,@RequestParam String publisher,@RequestParam double price,@RequestParam int yop,ModelMap modelMap) {
		bookService.addBook(name, author, publisher, price, yop);
		modelMap.addAttribute("message","book added");
		return "add_book";
	}
	
	@RequestMapping(path = "/get_books",method = RequestMethod.GET)
	public String getBookPage(ModelMap modelMap,HttpSession httpSession) {
		Admin admin=(Admin)httpSession.getAttribute("admin");
		if(admin!=null) {
			List<Book> books=bookService.getAllBook();
			modelMap.addAttribute("books", books);
			return "get_books";
		}else {
			return "log_in";
		}
		
	}
	
	@RequestMapping(path = "/delete_book",method = RequestMethod.GET)
	public String deleteBook(@RequestParam long id,ModelMap modelMap,HttpSession httpSession) {
		Admin admin=(Admin)httpSession.getAttribute("admin");
		if(admin!=null) {
			String message2=bookService.deleteBook(id);
			List<Book> books=bookService.getAllBook();
			modelMap.addAttribute("books", books);
			modelMap.addAttribute("message2", message2);
			return "get_books";
		}else {
			return "log_in";
		}
		
	}
	
	@RequestMapping(path="/edit",method = RequestMethod.GET)
	public String getEditPage(@RequestParam long id,ModelMap modelMap,HttpSession httpSession) {
		Admin admin=(Admin)httpSession.getAttribute("admin");
		if(admin!=null) {
			Book book=bookService.editBook(id);
			modelMap.addAttribute("book", book);
			return "edit_book";
		}else {
			return "log_in";
		}
		
	}
	
	@RequestMapping(path="/update_book",method = RequestMethod.POST)
	public String updateBook(@RequestParam long id,@RequestParam String name,@RequestParam String author,@RequestParam String publisher,@RequestParam double price,@RequestParam int yop,ModelMap modelMap ) {
		bookService.updateBook(id, name, author, publisher, price, yop);
		List<Book> books=bookService.getAllBook();
		modelMap.addAttribute("books", books);
		modelMap.addAttribute("message2", "Book Updated");
		return "get_books";
	}
	
	@RequestMapping(path = "/search",method = RequestMethod.GET)
	public String searchBook(HttpSession httpSession) {
		Admin admin=(Admin)httpSession.getAttribute("admin");
		if(admin!=null) {
			return "search";
		}else {
			return "log_in";
		}
		
	}
	
	@RequestMapping(path = "/search",method = RequestMethod.POST)
	public String searchBook(@RequestParam String name,ModelMap modelMap) {
		List<Book> books=bookService.getBookByName(name);
		modelMap.addAttribute("books", books);
		return "search";
	}
	
	@RequestMapping(path = "/home",method = RequestMethod.GET)
	public String home(HttpSession httpSession) {
		Admin admin=(Admin)httpSession.getAttribute("admin");
		if(admin!=null) {
			return "home";
		}else {
			return "log_in";
		}
		
	}

}
