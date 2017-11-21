package com.xjp.web;

import com.xjp.dao.MenuMapper;
import com.xjp.model.Menu;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "contact")
public class ContactController {

    private Logger _LOGGER = LoggerFactory.getLogger(IndexController.class);

    @Autowired
    private MenuMapper menuMapper;

    /**
     * contactMe.
     *
     * @return index.html
     */
    @RequestMapping(value = {"", "/index"})
    public String contact(Model model) {
        List<Menu> menus = menuMapper.selectAll();
        model.addAttribute("menus", menus);
        return "front/contact";
    }
}
