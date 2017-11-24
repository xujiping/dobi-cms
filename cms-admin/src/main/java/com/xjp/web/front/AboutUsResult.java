package com.xjp.web.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xjp.dao.MenuMapper;
import com.xjp.model.Menu;

@Controller
public class AboutUsResult {

	@Autowired   
	private MenuMapper menuMapper;

	@RequestMapping("/aboutUs")
	public String aboutUs(Model model) {
		List<Menu> menus = menuMapper.selectAll();
		model.addAttribute("menus", menus);
		return "front/about-us";
	}
}
