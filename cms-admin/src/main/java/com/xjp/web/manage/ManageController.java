package com.xjp.web.manage;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 后台管理
 *
 * @author xujiping 2017-11-16 14:57
 */
@RequestMapping("/manage")
public class ManageController {

    /**
     * 后台默认页面
     *
     * @return index.html
     */
    @RequestMapping(value = {"", "/index"})
    public String index() {
        return "manage/index";
    }

}
