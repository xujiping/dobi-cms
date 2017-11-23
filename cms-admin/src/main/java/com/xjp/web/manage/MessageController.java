package com.xjp.web.manage;

import com.xjp.dao.CustomerMessageMapper;
import com.xjp.model.CustomerMessage;
import com.xjp.web.IndexController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value = "/manage/message")
public class MessageController {

    private Logger _LOGGER = LoggerFactory.getLogger(IndexController.class);

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private CustomerMessageMapper customerMessageMapper;

    @RequestMapping(value = "/index")
    public String messageManager(Model model){
        CustomerMessage customerMessage = customerMessageMapper.selectByPrimaryKey(1);
        model.addAttribute("contact", customerMessage);
        return "manage/contact/index";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(CustomerMessage customerMessage){
        customerMessageMapper.insertSelective(customerMessage);

        return "/front/message";
    }
}
