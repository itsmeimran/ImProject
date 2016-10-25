package com.niit.Edevice;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserDAO r ;
	@RequestMapping(value = "/signup")
	public String gotreg(Model model){
		model.addAttribute("user", new User());
		return "signup";
	}

	@PostMapping(value = "/in")
	public String go(@ModelAttribute ("user") User user1,BindingResult bindingResult, Model model){
		
		
	
		r.insertUser(user1);	
		
		return "/signup";
	}

}
