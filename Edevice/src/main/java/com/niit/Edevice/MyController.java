package com.niit.Edevice;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class MyController {
	
	@Autowired
	ProductDAO productDAO ;
	@RequestMapping(value={"/","/index"})
	public ModelAndView index()
	{
	
		ModelAndView obj1=new ModelAndView("index");
		return obj1;
	}
	@RequestMapping(value={"/login"})
	public ModelAndView loginPage()
	{
		ModelAndView obj1=new ModelAndView("login");
		return obj1;
	}
	@RequestMapping(value={"/home"})
	public ModelAndView homepage()
	{
		ModelAndView obj1=new ModelAndView("home");
		return obj1;
	}
	@RequestMapping(value={"/about"})
	public ModelAndView aboutPage()
	{
		ModelAndView obj1=new ModelAndView("about");
		return obj1;
	}
	@RequestMapping(value={"/contact"})
	public ModelAndView contactPage()
	{
		ModelAndView obj1=new ModelAndView("contact");
		return obj1;
	}
	


	@RequestMapping(value={"/viewall"})
	public String viewallPage(@ModelAttribute("product")Product product,Model model)
	{model.addAttribute("product", product);
	 model.addAttribute("productData",productDAO.getAll());
		
		//ModelAndView obj1=new ModelAndView("viewall");
		return ("viewall");
	}
	//for Category wise starts here
	
	@RequestMapping("/viewall/{catgory}")
	public ModelAndView Productcategory(@PathVariable("catgory") String cate) {
		ModelAndView modelAndView = new ModelAndView("viewallbycat");
		List<Product> products = productDAO.getProductByCategory(cate);
	
		modelAndView.addObject("productData", products);
		return modelAndView;
	}
	
	@RequestMapping("/singlepro/{id}")
	public ModelAndView singledata(@PathVariable("id")int id) {
		ModelAndView modelAndView = new ModelAndView("singlepro");

		modelAndView.addObject("product", productDAO.getProductById(id));
		
		return modelAndView;
	}
	
	
	//for Category wise ends here
	
/*	@RequestMapping(value={"/mobile"})
	public ModelAndView mobilePage()
	{
		ModelAndView obj1=new ModelAndView("mobile");
		return obj1;
	}
	@RequestMapping(value={"/computers"})
	public ModelAndView computerPage()
	{
		ModelAndView obj1=new ModelAndView("computers");
		return obj1;
	}
	@RequestMapping(value={"/ac"})
	public ModelAndView acPage()
	{
		ModelAndView obj1=new ModelAndView("ac");
		return obj1;
	}
	*/
	/*@RequestMapping(value={"/cart"})
	public ModelAndView cartpage()
	{
		ModelAndView obj1=new ModelAndView("cart");
		return obj1;
	}
	@RequestMapping(value={"/addtocart"})
	public ModelAndView  addCart()
	{
		ModelAndView obj1=new ModelAndView("cart");
		return obj1;
	}
	*
	*/
	@RequestMapping(value={"/singleproduct"})
	public ModelAndView singlepage()
	{
		ModelAndView obj1=new ModelAndView("singleproduct");
		return obj1;
	}
	
}
