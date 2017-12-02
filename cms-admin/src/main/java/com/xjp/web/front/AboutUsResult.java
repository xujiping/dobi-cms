package com.xjp.web.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xjp.dao.ArticleMapper;
import com.xjp.dao.ArticleTypeMapper;
import com.xjp.dao.MenuMapper;
import com.xjp.dao.UploadMapper;
import com.xjp.model.Article;
import com.xjp.model.Menu;
import com.xjp.model.Upload;

@Controller
@RequestMapping("about")
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
	@RequestMapping("")
	public String aboutUs(Model model) {
		List<Menu> menus = menuMapper.selectAll();// 首页菜单
		model.addAttribute("menus", menus);
		List<Upload> bigImages = uploadMapper.selectUploadByElementId(1);
        model.addAttribute("bigImages", bigImages);
        
		List<Upload> mienImages = uploadMapper.selectUploadByElementId(21);// 集团风采图
		model.addAttribute("mienImages", mienImages);
		List<Upload> reproduCenterImages = uploadMapper
				.selectUploadByElementId(22);// 生殖中心
		model.addAttribute("reproduCenterImages", reproduCenterImages);
		Article article = new Article();
		article.setType(1);  //分公司
		List<Article> aboutArticles = articleMapper.select(article);
		model.addAttribute("aboutArticles", aboutArticles);
		article.setType(5);  //员工风采
		List<Article> staffs = articleMapper.select(article);
		model.addAttribute("staffs", staffs);
		return "front/about-us";
	}

	@GetMapping("/filiale/{id}")
	public Object article(@PathVariable(name = "id") Integer id, Model model) {
		Article article = articleMapper.selectByPrimaryKey(id);
		article.setDate(null);
		model.addAttribute("article", article);
		List<Menu> menus = menuMapper.selectAll();// 首页菜单
		model.addAttribute("menus", menus);
		model.addAttribute("parentMenu", "关于我们");
		model.addAttribute("parentMenuUrl", "/about");
		return "front/article";
	}
	
	@GetMapping("/staffPresence/{id}")
	public Object staffPresence(@PathVariable(name = "id") Integer id, Model model) {
		Article article = articleMapper.selectByPrimaryKey(id);
		article.setDate(null);
		model.addAttribute("article", article);
		List<Menu> menus = menuMapper.selectAll();// 首页菜单
		model.addAttribute("menus", menus);
		model.addAttribute("parentMenu", "关于我们");
		model.addAttribute("parentMenuUrl", "/about");
		List<Upload> bigImages = uploadMapper.selectUploadByElementId(1);
		model.addAttribute("bigImages", bigImages);
		return "front/article";
	}

}
