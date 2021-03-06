package com.xjp.web.manage;

import com.xjp.common.constants.ResultConstants;
import com.xjp.common.result.Result;
import com.xjp.dao.MenuMapper;
import com.xjp.model.Menu;
import com.xjp.service.MenuService;

import org.apache.ibatis.session.RowBounds;
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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 菜单控制器
 *
 * @author xujiping 2017-11-16 16:18
 */
@Controller
@RequestMapping("/manage/menu")
public class MenuController {

    private static Logger _log = LoggerFactory.getLogger(MenuController.class);

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private MenuService menuService;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private MenuMapper menuMapper;

    @RequestMapping(value = "index")
    public String index(Model model) {
        return "manage/menu/index";
    }

    /**
     * 查询菜单列表.
     *
     * @param offset 第几页
     * @param limit  每页多少行
     * @param sort   排序（未实现）
     * @param order  排序列
     * @return Map
     */
    @RequestMapping(value = "list")
    @ResponseBody
    public Object list(
        @RequestParam(required = false, defaultValue = "0", value = "offset") int offset,
        @RequestParam(required = false, defaultValue = "10", value = "limit") int limit,
        @RequestParam(required = false, value = "sort") String sort,
        @RequestParam(required = false, value = "order") String order) {
        // TODO 排序未实现
        Menu menu = new Menu();
        RowBounds rowBounds = new RowBounds(offset, limit);
        List<Menu> rows = menuMapper.selectByRowBounds(menu, rowBounds);
        long total = menuMapper.selectCount(menu);
        Map<String, Object> result = new HashMap<>();
        result.put("rows", rows);
        result.put("total", total);
        return result;
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
            count = menuService.deleteByPrimaryKeys(ids.split("-"));
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
        Menu menu = menuMapper.selectByPrimaryKey(Integer.parseInt(id));
        model.addAttribute("menu", menu);
        return "manage/menu/update";
    }

    /**
     * 修改
     *
     * @param menu menu
     * @return json
     */
    @RequestMapping(value = "update", method = RequestMethod.POST)
    public Object doUpdate(Menu menu) {
        int count = menuMapper.updateByPrimaryKeySelective(menu);
        if (count != 1) {
            return "manage/menu/update";
        }
        return "manage/menu/index";
    }

}
