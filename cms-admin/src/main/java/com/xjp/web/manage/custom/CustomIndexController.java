package com.xjp.web.manage.custom;

import com.xjp.dao.UploadMapper;
import com.xjp.model.Upload;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 首页元素定制控制器
 *
 * @author xujiping 2017-11-21 15:58
 */
@Controller
@RequestMapping("/manage/custom/index")
public class CustomIndexController {

    @Autowired
    private UploadMapper uploadMapper;

    @GetMapping("")
    public String index() {
        return "manage/custom/index";
    }

    /**
     * 查询轮播大图列表
     * @return
     */
    @GetMapping("bigImages")
    @ResponseBody
    public Object bigImages(){
        List<Upload> bigImages = uploadMapper.selectUploadByElementId(1);
        return bigImages;
    }

}
