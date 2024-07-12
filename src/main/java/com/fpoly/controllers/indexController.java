package com.fpoly.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/index")
public class indexController {

	
	@GetMapping("/home")
	public String home(Model model) {
		
		return "index";
	}
	
}
