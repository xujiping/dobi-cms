package com.xjp.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "contact")
public class ContactController {

    private Logger _LOGGER = LoggerFactory.getLogger(IndexController.class);

    /**
     * contactMe.
     *
     * @return index.html
     */
    @RequestMapping(value = {"", "/index"})
    public String contact() {
        return "front/contact";
    }
}
