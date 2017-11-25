package com.xjp.web.front;

import com.xjp.dao.CustomerMessageMapper;
import com.xjp.dao.MenuMapper;
import com.xjp.model.CustomerMessage;
import com.xjp.model.Menu;
import org.apache.shiro.authz.annotation.RequiresGuest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping(value = "message")
public class MessageResult {

	@SuppressWarnings("SpringJavaAutowiringInspection")
	@Autowired   
	private MenuMapper menuMapper;

	@SuppressWarnings("SpringJavaAutowiringInspection")
	@Autowired
	private CustomerMessageMapper customerMessageMapper;

	/**
	 * message.
	 *
	 * @return message.html
	 */
	@RequestMapping(value = "")
	public String message(Model model) {
		List<Menu> menus = menuMapper.selectAll();
		model.addAttribute("menus", menus);
		return "front/message";
	}

	@RequiresGuest
	@RequestMapping(value = "/addMsg", method = RequestMethod.POST)
	public String add(CustomerMessage customerMessage){
		customerMessageMapper.insertSelective(customerMessage);

		return "/front/message";
	}
}
