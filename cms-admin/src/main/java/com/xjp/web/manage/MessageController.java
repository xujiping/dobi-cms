package com.xjp.web.manage;

import com.xjp.dao.CustomerMessageMapper;
import com.xjp.model.CustomerMessage;
import com.xjp.web.IndexController;
import org.apache.ibatis.session.RowBounds;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping(value = "/manage/message")
public class MessageController {

    private Logger _LOGGER = LoggerFactory.getLogger(IndexController.class);

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private CustomerMessageMapper customerMessageMapper;

    @RequestMapping(value = "index")
    public String index(Model model) {
        return "manage/message/index";
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
        CustomerMessage message = new CustomerMessage();
        RowBounds rowBounds = new RowBounds(offset, limit);
        List<CustomerMessage> rows = customerMessageMapper.selectByRowBounds(message, rowBounds);
        long total = customerMessageMapper.selectCount(message);
        Map<String, Object> result = new HashMap<>();
        result.put("rows", rows);
        result.put("total", total);
        return result;
    }

}
