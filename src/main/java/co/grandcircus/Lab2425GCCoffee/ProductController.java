package co.grandcircus.Lab2425GCCoffee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.Lab2425GCCoffee.Dao.ProductDao;
import co.grandcircus.Lab2425GCCoffee.beans.Product;

@Controller
public class ProductController {
	
	@Autowired 
	private ProductDao productDao;
	
	
	@RequestMapping("/")
	public ModelAndView list() {
		
		List<Product> products = productDao.findAll();
		return new ModelAndView ("index","product",products);
	}
	
	
}
