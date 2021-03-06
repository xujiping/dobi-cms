package com.xjp.web.front;

import com.xjp.dao.ArticleMapper;
import com.xjp.dao.MenuMapper;
import com.xjp.dao.UploadMapper;
import com.xjp.model.Article;
import com.xjp.model.Menu;
import com.xjp.model.Upload;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 服务项目
 *
 * @author xujiping 2017-11-23 10:20
 */
@Controller
@RequestMapping("service")
public class ServiceResult {

    private Logger _LOGGER = LoggerFactory.getLogger(ServiceResult.class);

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private MenuMapper menuMapper;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private UploadMapper uploadMapper;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private ArticleMapper articleMapper;

    /**
     * 菜单页面
     *
     * @return front/service.html
     */
    @GetMapping("")
    public String index(Model model) {
        List<Menu> menus = menuMapper.selectAll();
        model.addAttribute("menus", menus);
        List<Upload> bigImages = uploadMapper.selectUploadByElementId(1);
        model.addAttribute("bigImages", bigImages);
        return "front/service";
    }


    /**
     * 返回文章页面
     * @param id
     * @param model
     * @return
     */
    @GetMapping("/article/{id}")
    public Object article(@PathVariable(name = "id")Integer id, Model model){
        Article article = articleMapper.selectByPrimaryKey(id);
        model.addAttribute("article", article);
        List<Menu> menus = menuMapper.selectAll();
        model.addAttribute("menus", menus);
        List<Upload> bigImages = uploadMapper.selectUploadByElementId(1);
        model.addAttribute("bigImages", bigImages);
        model.addAttribute("parentMenu", "服务项目");
        model.addAttribute("parentMenuUrl", "/service");
        return "front/article";
    }
}
