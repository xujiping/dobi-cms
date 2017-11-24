package com.xjp.web.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xjp.dao.ArticleMapper;
import com.xjp.dao.ArticleTypeMapper;
import com.xjp.dao.MenuMapper;
import com.xjp.dao.UploadMapper;
import com.xjp.model.Article;
import com.xjp.model.Menu;
import com.xjp.model.Upload;

@Controller
public class AboutUsResult {
	
	@Autowired
	private ArticleMapper articleMapper;
	
	@Autowired
	private UploadMapper uploadMapper;
	@Autowired
	private MenuMapper menuMapper;

	/**
	 * 关于我们页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/about")
	public String aboutUs(Model model) {
		List<Menu> menus = menuMapper.selectAll();
		model.addAttribute("menus", menus);
		List<Upload> mienImages = uploadMapper.selectUploadByElementId(21);// 集团风采图
		model.addAttribute("mienImages", mienImages);
		List<Upload> reproduCenterImages = uploadMapper.selectUploadByElementId(22);// 生殖中心
		model.addAttribute("reproduCenterImages", reproduCenterImages);
		Article article = new Article();
		article.setType(1);
		List<Article> aboutArticles = articleMapper.select(article);
		if(aboutArticles.size()>0){
			for (Article article2 : aboutArticles) {
				
				System.out.println("title:"+article2.getTitle());
				System.out.println("imageUrl:"+article2.getImageUrl());
			}
		}
		model.addAttribute("aboutArticles",aboutArticles);
		return "front/about-us";
	}
}
