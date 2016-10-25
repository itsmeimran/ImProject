package com.niit.Edevice;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	ProductDAO productDAO;

	

	@RequestMapping(value = "/product")
	public ModelAndView adminProduct() {
		ModelAndView mv = new ModelAndView("adminProduct");
		mv.addObject("products", productDAO.getAll());
		mv.addObject("product", new Product());
		return mv;
	}
	

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertdata(@Valid @ModelAttribute("product") Product product, BindingResult results, HttpServletRequest request, Model model) {
	
		if (results.hasErrors()) {
			model.addAttribute("product", product);
			model.addAttribute("productData", productDAO.getAll());
			return ("adminProduct");
		}
		if (product.getId() == 0) {
			
			productDAO.addProduct(product);
			
			
			// ................................... multi part starts
			// here....................

			// need to have a transient field of type MultipartFile in Product
			// model class
			MultipartFile productImage = product.getFile();

			// only if file exist upload the image
			if(productImage!=null && productImage.getSize() > 0) {
					// first get the root directory and then append the directory where
					// you want to store
					String rootPath = request.getSession().getServletContext().getRealPath("/");
					String directoryPath = rootPath + "resources\\images\\product";
					// append the file name
					String filePath = directoryPath + File.separator + product.getId() + ".jpg";
	
					// ========================================================
					// If directory does not exist create the directory
					if (!Files.exists(Paths.get(directoryPath))) {
						try {
							// create the directories recursively
							Files.createDirectories(Paths.get(directoryPath));
						}
	
						catch (IOException ex) {
							ex.printStackTrace();
						}
					}
					// =======================================================
					// transfer the file
	
					try {
						productImage.transferTo(new File(filePath));
					} catch (Exception ex) {
						ex.printStackTrace();
					}
	
					// ................................... ends
					// here..................................				
			}
			
		} else {
			productDAO.updateProduct(product);
		}
		return "redirect:/admin/product";
	}

	@RequestMapping(value = "/delete/{product}")
	public String adminProductDelete(@PathVariable("product") Integer id) {
		productDAO.removeProduct(id);
		return "redirect:/admin/product";
	}

	@RequestMapping(value = "/view/{id}")
	public ModelAndView adminProductView(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView("adminProduct");
		mv.addObject("product", productDAO.getProductById(id));
		mv.addObject("products", productDAO.getAll());
		return mv;
	}

}
