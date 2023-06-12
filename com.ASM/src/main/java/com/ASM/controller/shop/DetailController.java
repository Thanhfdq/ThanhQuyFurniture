package com.ASM.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DetailController {
	@RequestMapping("/shop/detail")
	public String detail(Model model) {
		return "shop/detail";
	}
}
