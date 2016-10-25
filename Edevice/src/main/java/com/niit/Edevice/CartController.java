package com.niit.Edevice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cart")
public class CartController {

	@Autowired
	CartDAO cartDAO;
	@RequestMapping(value = "/view")
	public ModelAndView cartView() {
		ModelAndView mv = new ModelAndView("cart");
		mv.addObject("products", cartDAO.getAll());
		mv.addObject("product", new Product());
		return mv;
	}
	@RequestMapping(value = "/cartview/{id}", method = RequestMethod.GET)
	public ModelAndView getById(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("cart");
		//CartModel products = cartDAO.getCartById(id);
		
	//mv.addObject("productData", products);
		mv.addObject("products", cartDAO.getAll());
		mv.addObject("product", cartDAO.getCartById(id));
		return mv;
	}
	@RequestMapping(value = "/cartdel/{id}")
	public String cartdelete(@PathVariable("id") Integer id) {
		cartDAO.removeProduct(id);
		return "redirect:/cart/cartview";
	}

	@PostMapping("/cartsave")
	public String cartedit(@ModelAttribute("cart") CartModel cart, HttpServletRequest request)
	{
		if (cart.getCartid() == 0)
		{
			cartDAO.addProduct(cart);
			// need to have a transient field of type MultipartFile in Product
			// model class
			  }	
			else
			{
				cartDAO.updateProduct(cart);;
			}
		return "redirect:/cart/cartview";
		}


}
