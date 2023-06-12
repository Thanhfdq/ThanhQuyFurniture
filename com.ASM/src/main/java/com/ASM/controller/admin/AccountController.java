package com.ASM.controller.admin;

import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;

import com.ASM.dao.AccountDAO;
import com.ASM.entity.Account;
import com.ASM.service.ParamService;
import com.ASM.service.SessionService;

import jakarta.servlet.ServletContext;
import jakarta.servlet.annotation.MultipartConfig;

@Controller
@MultipartConfig
public class AccountController {
	@Autowired
	AccountDAO dao;
	@Autowired
	ServletContext app;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService session;

	@RequestMapping("/admin/account")
	public String index(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		model.addAttribute("currentpage", "5");
		Account item = new Account();
		model.addAttribute("item", item);

		String kword = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kword);
		Pageable pageable = PageRequest.of(p.orElse(0), 4);
		Page<Account> page = dao.findBykeyword("%" + kword + "%", pageable);
		model.addAttribute("page", page);

//		List<Account> items = dao.findAll();
//		model.addAttribute("items", items);
		return "admin/account";
	}

	@RequestMapping("/admin/account/edit/{username}")
	public String edit(Model model, @PathVariable("username") String username,
			@RequestParam("keywords") Optional<String> kw, @RequestParam("p") Optional<Integer> p) {
		model.addAttribute("currentpage", "5");
		Account item = dao.findById(username).get();
		model.addAttribute("item", item);
		model.addAttribute("imageAc", item.getPhoto());

		String kword = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kword);
		Pageable pageable = PageRequest.of(p.orElse(0), 4);
		Page<Account> page = dao.findBykeyword("%" + kword + "%", pageable);
		model.addAttribute("page", page);

//		List<Account> items = dao.findAll();
//		model.addAttribute("items", items);
		return "admin/account";
	}

	@RequestMapping("/admin/account/create")
	public String create(Model model, @ModelAttribute("item") Account item,
			@RequestParam(name = "imageAc", required = false) MultipartFile file) {
		model.addAttribute("currentpage", "5");
		if (file != null) {
			try {
				paramService.save(file, app.getRealPath("/assets/images/"));
				item.setPhoto(file.getOriginalFilename());
//				model.addAttribute("imgaccount", file.getOriginalFilename());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		dao.save(item);
		return "redirect:/admin/account";
	}

	@RequestMapping("/admin/account/update")
	public String update(Model model, @ModelAttribute("item") Account item,
			@RequestParam(name = "imageAc", required = false) MultipartFile file) {
		model.addAttribute("currentpage", "5");
		if (file != null) {
			try {
				paramService.save(file, app.getRealPath("/assets/images/"));
				item.setPhoto(file.getOriginalFilename());
//				model.addAttribute("imgaccount", file.getOriginalFilename());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		dao.save(item);
		return "redirect:/admin/account/edit/" + item.getUsername();
	}

	@RequestMapping("/admin/account/delete/{username}")
	public String delete(Model model, @PathVariable("username") String username) {
		model.addAttribute("currentpage", "5");
		dao.deleteById(username);
		return "redirect:/admin/account";
	}

//
//	@Autowired
//	private ServletContext servletContext;
//
//	@ResponseBody
//	@GetMapping("/admin/account/choose")
//	public String chooseAvatar(Model model, @RequestParam(name = "imageAc") MultipartFile file) {
//		if (file != null) {
//			try {
//				paramService.save(file, app.getRealPath("/assets/images/"));
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		}
//		System.out.println("context: " + servletContext.getContextPath());
//		return servletContext.getContextPath() + "/assets/images/" + file.getOriginalFilename();
//	}
}
