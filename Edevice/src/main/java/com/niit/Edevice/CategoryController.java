package com.niit.Edevice;
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
@RequestMapping("/category")
public class CategoryController {
	
	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping(value = "/view")
	public ModelAndView show() {
		ModelAndView mv = new ModelAndView("categoryPg");
		mv.addObject("categories", categoryDAO.getAll());
		mv.addObject("category", new Category());
		return mv;
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertdata(@Valid @ModelAttribute("product") Category category, BindingResult results, Model model) {
	
		if (results.hasErrors()) {
			model.addAttribute("category", category);
			model.addAttribute("categoryData", categoryDAO.getAll());
			return ("categoryPg");
		}
		if (category.getCatid() == 0) {
			/*// ................................... multi part starts
			// here....................

			// need to have a transient field of type MultipartFile in Product
			// model class
			MultipartFile productImage = product.getFile();
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
			// here..................................*/
			categoryDAO.addCategory(category);
		} else {
			categoryDAO.updateCategory(category);
		}
		return "redirect:/category/view";
	}

	@RequestMapping(value = "/delete/{category}")
	public String CategoryDel(@PathVariable("category") Integer id) {
		categoryDAO.removeCategory(id);
		return "redirect:/category/view";
	}

	@RequestMapping(value = "/view/{id}")
	public ModelAndView categoryView(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView("categoryPg");
		mv.addObject("category", categoryDAO.getCategoryById(id));
		mv.addObject("categories", categoryDAO.getAll());
		return mv;
	}

	
}
