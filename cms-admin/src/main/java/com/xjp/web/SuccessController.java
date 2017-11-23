package com.xjp.web;

import com.xjp.dao.MenuMapper;
import com.xjp.dao.UploadMapper;
import com.xjp.model.Menu;
import com.xjp.model.Upload;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 成功案例
 *
 * @author xujiping 2017-11-23 10:20
 */
@Controller
@RequestMapping("success")
public class SuccessController {

    private Logger _LOGGER = LoggerFactory.getLogger(SuccessController.class);

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private MenuMapper menuMapper;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private UploadMapper uploadMapper;

    /**
     * 菜单页面
     *
     * @return front/success-case.html
     */
    @GetMapping("")
    public String index(Model model) {
        List<Menu> menus = menuMapper.selectAll();
        model.addAttribute("menus", menus);
        List<Upload> images = uploadMapper.selectUploadByElementId(2);
        model.addAttribute("images", images);
        return "front/success-case";
    }
}
