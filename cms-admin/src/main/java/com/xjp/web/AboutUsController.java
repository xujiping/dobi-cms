package com.xjp.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AboutUsController {
	
	@RequestMapping("/aboutUs")
	public String aboutUs(){
		
		return "front/about-us";
	}
}
