/*
package com.xjp.web.manage;

import com.xjp.dao.ContactMapper;
import com.xjp.model.Contact;
import com.xjp.web.IndexController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/manage/contact")
public class ContactController {

    private Logger _LOGGER = LoggerFactory.getLogger(IndexController.class);

    @Autowired
    private ContactMapper contactMapper;

    @RequestMapping(value = "/index")
    public String contactManage(Model model){
        Contact contact = contactMapper.selectByPrimaryKey(1);
        model.addAttribute("contact", contact);
        return "manage/contact/index";
    }
}
*/