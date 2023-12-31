package com.ASM.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

@Data
@Entity
@Table(name = "Products")
public class Product implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private String brand;
	private String description;
	private Double price;
	private Integer quantity;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "CreateDate")
	private Date createDate = new Date();
	
	@Column(name = "is_delete")
	private Boolean isDelete = false;
	
	@ManyToOne
	@JoinColumn(name = "CategoryId")
	private Category category;
	
	@OneToMany(mappedBy = "product")
	private List<OrderDetail> orderDetails;
	
	@OneToMany(mappedBy = "product")
	private List<Photo> photos;
}
