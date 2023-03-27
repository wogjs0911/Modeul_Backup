package com.modeul.web.controller;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.modeul.web.entity.Category;
import com.modeul.web.entity.Stuff;
import com.modeul.web.entity.StuffView;
import com.modeul.web.service.CategoryService;
import com.modeul.web.service.StuffService;

@Controller
@RequestMapping("/member/stuff")
public class StuffController {
	
	@Autowired
	private StuffService service;	// 이게 메인 서비스이다.
	
	@Autowired
	private CategoryService categoryService;

	@GetMapping("list")
	public String list(
			@RequestParam(name="q", required=false) String query, 
			@RequestParam(name="c", required=false) Integer categoryId, 
			@RequestParam(name="p", defaultValue="1") int page, Model model) {
		
		List<StuffView> list = service.getViewAll(query, categoryId, page);
		
		List<Category> categoryList = categoryService.getList();
		
		model.addAttribute("list", list);
		model.addAttribute("categoryList", categoryList);
		
		return "member/stuff/list";
	}
	
	@GetMapping("detail")
	public String detail(Long id, Model model) {
		
		// Stuff 객체로 반환 타입을 걸어준 이유는 List는 값을 꺼내기 위해서 index가 필요하지만 
		// id 값으로 그 해당 내용만 조회하는 용도에는 굳이 필요가 없다.
		Stuff stuff = service.getById(id);
		
		// stuff.getCategoryId()가 null 값이라서 확인했더니 
		// CategoryId 칼럼을 resultMap 설정 안했었서 설정 추가함.
		String categoryName = categoryService.getNameById(stuff.getCategoryId());
		
		model.addAttribute("stuff", stuff);
		model.addAttribute("categoryName", categoryName);
		
		return "member/stuff/detail";
	}
	
	@GetMapping("listsearch")
	public String listsearch(
			@RequestParam(name="q", required=false) String query, 
			@RequestParam(name="c", required=false) Integer categoryId, 
			@RequestParam(name="p", defaultValue="1") int page, Model model) {
		
		List<StuffView> list = service.getViewAll(query, categoryId, page);
		
		List<Category> categoryList = categoryService.getList();
		
		model.addAttribute("list", list);
		model.addAttribute("categoryList", categoryList);
		
		return "member/stuff/list-search";
	}
	
	
	@GetMapping("reg")
	public String stuffForm() {
		return "member/stuff/reg";
	}
	
	// deadline은 LocalDateTime의 타입으로 추가!!
	@PostMapping("reg")
	public String regStuff(
			@RequestParam(name="title") String title,
			@RequestParam(name="place") String place,
			@RequestParam(name="numPeople") String numPeople,
			@RequestParam(name="deadline") LocalDateTime deadline,
			@RequestParam(name="price") String price,
			@RequestParam(name="url") String url,
			@RequestParam(name="content") String content) {
		
		
		int insert = service.regStuff(title, place, numPeople, deadline, price, url, content);
		
		System.out.println(insert);
		
		System.out.printf("title: %s, place: %s, numPeople :%s, date: %s, price: %s, url: %s, content: %s\n",
				title, place, numPeople, deadline, price, url, content);
		
		// redirect가 되기 위해서 html의 form 태그의 action, method 맞춰주기!
		return "redirect:list";
	}
	
}
