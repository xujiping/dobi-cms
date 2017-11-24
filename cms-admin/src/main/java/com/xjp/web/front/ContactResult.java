package com.xjp.web.front;

import com.xjp.dao.ContactMapper;
import com.xjp.dao.MenuMapper;
import com.xjp.model.Contact;
import com.xjp.model.Menu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "contact")
public class ContactResult {

	@SuppressWarnings("SpringJavaAutowiringInspection")
	@Autowired   
	private MenuMapper menuMapper;

	@SuppressWarnings("SpringJavaAutowiringInspection")
	@Autowired
	private ContactMapper contactMapper;

	/**
	 * contact.
	 *
	 * @return contact.html
	 */
	@RequestMapping(value = "")
	public String contact(Model model) {
		List<Menu> menus = menuMapper.selectAll();
		model.addAttribute("menus", menus);
		Contact contact = contactMapper.selectByPrimaryKey(1);
		model.addAttribute("contact", contact);
		return "front/contact";
	}
}
