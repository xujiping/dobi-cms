package com.xjp.web;

import com.xjp.dao.ContactMapper;
import com.xjp.common.constants.ResultConstants;
import com.xjp.common.result.Result;
import com.xjp.dao.ArticleMapper;
import com.xjp.dao.MenuMapper;
import com.xjp.dao.UploadMapper;
import com.xjp.model.Contact;
import com.xjp.model.Article;
import com.xjp.model.Menu;
import com.xjp.model.Upload;
import com.xjp.service.MenuService;

import org.apache.ibatis.session.RowBounds;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private MenuMapper menuMapper;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private UploadMapper uploadMapper;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private ContactMapper contactMapper;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private ArticleMapper articleMapper;

    /**
     * index.
     *
     * @return index.html
     */
    @RequestMapping(value = {"", "/index"})
    public String index(Model model) {
        List<Menu> menus = menuMapper.selectAll();
        model.addAttribute("menus", menus);
        List<Upload> bigImages = uploadMapper.selectUploadByElementId(1);
        model.addAttribute("bigImages", bigImages);
        return "front/index";
    }

    /**
     * about.
     *
     * @return about.html
     */
    @RequestMapping(value = "/about")
    public String about(Model model) {
        List<Menu> menus = menuMapper.selectAll();
        model.addAttribute("menus", menus);
        List<Upload> bigImages = uploadMapper.selectUploadByElementId(1);
        model.addAttribute("bigImages", bigImages);
        return "front/about";
    }

    /**
     * service.
     *
     * @return service.html
     */
    @RequestMapping(value = "/service")
    public String service(Model model) {
        List<Menu> menus = menuMapper.selectAll();
        model.addAttribute("menus", menus);
        List<Upload> bigImages = uploadMapper.selectUploadByElementId(1);
        model.addAttribute("bigImages", bigImages);
        return "front/service";
    }

    /**
     * success.
     *
     * @return success.html
     */
    @RequestMapping(value = "/success")
    public String success(Model model) {
        List<Menu> menus = menuMapper.selectAll();
        model.addAttribute("menus", menus);
        List<Upload> bigImages = uploadMapper.selectUploadByElementId(1);
        model.addAttribute("bigImages", bigImages);
        return "front/success";
    }

    /**
     * tube.
     *
     * @return tube.html
     */
    @RequestMapping(value = "/tube")
    public String tube(Model model) {
        List<Menu> menus = menuMapper.selectAll();
        model.addAttribute("menus", menus);
        List<Upload> bigImages = uploadMapper.selectUploadByElementId(1);
        model.addAttribute("bigImages", bigImages);
        return "front/tube";
    }

    /**
     * message.
     *
     * @return message.html
     */
    @RequestMapping(value = "/message")
    public String message(Model model) {
        List<Menu> menus = menuMapper.selectAll();
        model.addAttribute("menus", menus);
        List<Upload> bigImages = uploadMapper.selectUploadByElementId(1);
        model.addAttribute("bigImages", bigImages);
        return "front/message";
    }

    /**
     * contact.
     *
     * @return contact.html
     */
    @RequestMapping(value = "/contact")
    public String contact(Model model) {
        List<Menu> menus = menuMapper.selectAll();
        model.addAttribute("menus", menus);
        Contact contact = contactMapper.selectByPrimaryKey(1);
        model.addAttribute("contact", contact);
        return "front/contact";
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

    /**
     * 获取某类型文章列表
     * @param type
     * @param offset
     * @param limit
     * @return
     */
    @GetMapping("/article/{type}")
    @ResponseBody
    public Object article(@PathVariable(name = "type") Integer type,
                          @RequestParam(required = false, defaultValue = "0", value = "offset")
                              int offset,
                          @RequestParam(required = false, defaultValue = "10", value = "limit")
                              int limit) {
        Article article = new Article();
        article.setType(type);
        RowBounds rowBounds = new RowBounds(offset, limit);
        List<Article> rows = articleMapper.selectByRowBounds(article, rowBounds);
        long total = articleMapper.selectCount(article);
        Map<String, Object> result = new HashMap<>();
        result.put("rows", rows);
        result.put("total", total);
        return result;
    }
}
