package com.ASM.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ASM.dao.CategoryDAO;
import com.ASM.entity.Category;
import com.ASM.service.SessionService;

@Controller
public class CategoryController {

	@Autowired
	CategoryDAO dao;
	@Autowired
	SessionService session;

	@RequestMapping("/admin/category")
	public String index(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		model.addAttribute("currentpage", "4");

		String kword = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kword);
		Pageable pageable = PageRequest.of(p.orElse(0), 2);
		Page<Category> page = dao.findBykeyword("%" + kword + "%", pageable);
		model.addAttribute("page", page);

//		List<Category> items = dao.findAll();
//		model.addAttribute("items", items);

		Category item = new Category();
		model.addAttribute("item", item);
		return "admin/category";
	}

	@RequestMapping("/admin/category/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		model.addAttribute("currentpage", "4");
		Category item = dao.findById(id).get();
		model.addAttribute("item", item);
		
		String kword = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kword);
		Pageable pageable = PageRequest.of(p.orElse(0), 2);
		Page<Category> page = dao.findBykeyword("%" + kword + "%", pageable);
		model.addAttribute("page", page);

//		List<Category> items = dao.findAll();
//		model.addAttribute("items", items);
		return "admin/category";
	}

	@RequestMapping("/admin/category/create")
	public String create(Model model, @ModelAttribute("item") Category item) {
		model.addAttribute("currentpage", "4");
		dao.save(item);
		return "redirect:/admin/category";
	}

	@RequestMapping("/admin/category/update")
	public String update(Model model, @ModelAttribute("item") Category item) {
		model.addAttribute("currentpage", "4");
		dao.save(item);
		return "redirect:/admin/category/edit/" + item.getId();
	}

	@RequestMapping("/admin/category/delete/{id}")
	public String delete(Model model, @PathVariable("id") String id) {
		model.addAttribute("currentpage", "4");
		dao.deleteById(id);
		return "redirect:/admin/category";
	}
}
