package com.xjp.web;

import com.xjp.dao.ArticleMapper;
import com.xjp.dao.ContactMapper;
import com.xjp.dao.MenuMapper;
import com.xjp.dao.UploadMapper;
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
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
