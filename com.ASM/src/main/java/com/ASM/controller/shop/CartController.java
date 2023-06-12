package com.ASM.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartController {
	@RequestMapping("/shop/cart")
	public String cart(Model model) {
		return "shop/cart";
	}
}
