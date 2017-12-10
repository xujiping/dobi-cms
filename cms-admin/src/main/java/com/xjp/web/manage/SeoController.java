package com.xjp.web.manage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xjp.dao.SeoMapper;
import com.xjp.model.Seo;


@RequestMapping("/manage/seo")
@Controller
public class SeoController {
	
	@Autowired
	private SeoMapper seoMapper;
	
	@RequestMapping("/index")
	public String SeoManage(Model model){
		Seo seo = new Seo();
		List<Seo> list = seoMapper.selectAll();
		
		if(list.size()>0 && list!=null){
			seo = list.get(0);
		}
		model.addAttribute("seo",seo);
		return "manage/seo/index";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String edit(Seo seo){
		seoMapper.updateByPrimaryKey(seo);
		return "manage/seo/index";
	}
	
	
	
	
	
}
