package com.jspiders.librarymanagmentsystem.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Book {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private long id;
	@Column(nullable = false)
	private String name;
	@Column(nullable = true)
	private String author;
	@Column(nullable = false)
	private String publisher;
	@Column(nullable = false)
	private double price;
	@Column(nullable = false)
	private int yop;

}
