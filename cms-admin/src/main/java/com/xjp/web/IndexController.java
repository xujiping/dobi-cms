package com.xjp.web;

import com.xjp.common.constants.ResultConstants;
import com.xjp.common.result.Result;
import com.xjp.dao.MenuMapper;
import com.xjp.model.Menu;
import com.xjp.service.MenuService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

/**
 * index.
 *
 * @author xujiping 2017-09-19 15:05
 */

@Controller
public class IndexController {

    private Logger _LOGGER = LoggerFactory.getLogger(IndexController.class);

    @Value("${dobi.upload}")
    private String uploadPath;

    @Autowired
    private MenuService menuService;

    @Autowired
    private MenuMapper menuMapper;

    /**
     * index.
     *
     * @return index.html
     */
    @RequestMapping(value = {"", "/index"})
    public String index(Model model) {
        List<Menu> menus = menuMapper.selectAll();
        model.addAttribute("menus", menus);
        return "index";
    }

    /**
     * 读取上传的文件
     */
    @GetMapping("/upload/{filename:.+}")
    @ResponseBody
    public void getFile(@PathVariable String filename, HttpServletResponse response) {
        FileInputStream fis = null;
        OutputStream os = null;
        try {
            fis = new FileInputStream(uploadPath + filename);
            os = response.getOutputStream();
            int count = 0;
            byte[] buffer = new byte[1024 * 8];
            while ((count = fis.read(buffer)) != -1) {
                os.write(buffer, 0, count);
                os.flush();
            }
            fis.close();
            os.close();
        } catch (Exception e) {
            _LOGGER.error("读取文件失败。", e);
        }
    }
}
