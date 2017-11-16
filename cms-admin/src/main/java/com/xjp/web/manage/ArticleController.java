package com.xjp.web.manage;

import com.xjp.common.constants.ResultConstants;
import com.xjp.common.result.Result;
import com.xjp.dao.ArticleMapper;
import com.xjp.model.Article;
import com.xjp.service.ArticleService;

import org.apache.ibatis.session.RowBounds;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 文章控制器
 *
 * @author xujiping 2017-11-16 16:18
 */
@Controller
@RequestMapping("/manage/article")
public class ArticleController {

    private static Logger _log = LoggerFactory.getLogger(ArticleController.class);

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private ArticleService articleService;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private ArticleMapper articleMapper;

    /**
     * 查询文章列表.
     *
     * @param offset 第几页
     * @param limit  每页多少行
     * @param sort   排序（未实现）
     * @param order  排序列
     * @return Map
     */
    @RequiresPermissions("cms:article:view")
    @RequestMapping(value = "list")
    @ResponseBody
    public Object list(
        @RequestParam(required = false, defaultValue = "0", value = "offset") int offset,
        @RequestParam(required = false, defaultValue = "10", value = "limit") int limit,
        @RequestParam(required = false, value = "sort") String sort,
        @RequestParam(required = false, value = "order") String order) {
        // TODO 排序未实现
        Article article = new Article();
        RowBounds rowBounds = new RowBounds(offset, limit);
        List<Article> rows = articleMapper.selectByRowBounds(article, rowBounds);
        long total = articleMapper.selectCount(article);
        Map<String, Object> result = new HashMap<>();
        result.put("rows", rows);
        result.put("total", total);
        return result;
    }

    /**
     * 新增页面
     * @return
     */
    @RequestMapping(value = "add")
    public String add() {
        return "manage/article/add";
    }

    /**
     * 增加
     *
     * @param article article
     * @return json
     */
    @RequiresPermissions(value = "cms:article:create")
    @RequestMapping(value = "add", method = RequestMethod.POST)
    @ResponseBody
    public Object doAdd(Article article) {
        article.setDate(new Date());
        int count = articleMapper.insertSelective(article);
        return new Result(ResultConstants.SUCCESS, count);
    }

    /**
     * 删除
     *
     * @param ids 多个id以-分隔
     * @return json
     */
    @RequestMapping(value = "/delete/{ids}", method = RequestMethod.GET)
    @ResponseBody
    public Object delete(@PathVariable("ids") String ids) {
        int count = 0;
        try {
            count = articleService.deleteByPrimaryKeys(ids.split("-"));
            if (count != 1){
                return new Result(ResultConstants.FAILED, count);
            }
        } catch (SQLException e) {
            return new Result(ResultConstants.FAILED, count);
        }
        return new Result(ResultConstants.SUCCESS, count);
    }

    /**
     * 修改页面
     *
     * @param id    user_id
     * @param model model
     * @return html
     */
    @RequestMapping(value = "update/{id}")
    public String update(@PathVariable("id") String id, Model model) {
        Article article = articleMapper.selectByPrimaryKey(Integer.parseInt(id));
        model.addAttribute("article", article);
        return "manage/article/update";
    }

    /**
     * 修改
     *
     * @param article article
     * @return json
     */
    @RequestMapping(value = "update", method = RequestMethod.POST)
    @ResponseBody
    public Object doUpdate(Article article) {
        int count = articleMapper.updateByPrimaryKeySelective(article);
        if (count != 1) {
            return new Result(ResultConstants.FAILED, count);
        }
        return new Result(ResultConstants.SUCCESS, count);
    }

}
