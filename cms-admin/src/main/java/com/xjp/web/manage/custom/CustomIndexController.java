package com.xjp.web.manage.custom;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 首页元素定制控制器
 *
 * @author xujiping 2017-11-21 15:58
 */
@Controller
@RequestMapping("/manage/custom/index")
public class CustomIndexController {

    @GetMapping("")
    public String index() {
        return "manage/custom/index";
    }
}
