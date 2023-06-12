package com.ASM.controller.shop;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ASM.dao.CategoryDAO;
import com.ASM.dao.ProductDAO;
import com.ASM.entity.Account;
import com.ASM.entity.Category;
import com.ASM.entity.Product;

@Controller
public class ProductsController {
	@Autowired
	CategoryDAO categorydao;
	@Autowired
	ProductDAO productdao;

	@RequestMapping("/shop/products")
	public String products(Model model, @RequestParam("p") Optional<Integer> p) {
		// List categories
		List<Category> categories = categorydao.findAll();
		model.addAttribute("categories", categories);
		// List products
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> page = productdao.findAll(pageable);
		model.addAttribute("page", page);

		return "shop/products";
	}
}
