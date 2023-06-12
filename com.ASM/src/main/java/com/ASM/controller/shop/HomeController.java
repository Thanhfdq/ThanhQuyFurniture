package com.ASM.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/shop/index")
	public String home(Model model) {
		return "shop/index";
	}
}
