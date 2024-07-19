package com.fpoly.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class NewsController {
	@RequestMapping(value="/admin/news", method=RequestMethod.GET)
	public String news() {
		return "news";
	}
	
}
