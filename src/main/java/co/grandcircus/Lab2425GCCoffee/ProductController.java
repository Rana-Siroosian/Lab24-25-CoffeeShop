package co.grandcircus.Lab2425GCCoffee;
/**
 * 
 * @author >>RanaSiroosian<<
 */
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.Lab2425GCCoffee.Dao.ProductDao;
import co.grandcircus.Lab2425GCCoffee.Dao.UsersDao;
import co.grandcircus.Lab2425GCCoffee.entity.Product;
import co.grandcircus.Lab2425GCCoffee.entity.Users;

@Controller
public class ProductController {
	
	@Autowired 
	private ProductDao productDao;
	
	@Autowired
	private UsersDao usersDao;
	
	
//	
//	@RequestMapping("/")
//	public ModelAndView list() {
//		
//		List<Product> products = productDao.findAll();
//		return new ModelAndView ("index","product",products);
//	}
	
	
	
	
	@RequestMapping("/")
	public ModelAndView homePage() {
		return new ModelAndView("index");
	}
	
	@RequestMapping("/product")
	public ModelAndView productList(
			@RequestParam(value="name" , required=false) String name){
		ModelAndView mv = new ModelAndView ("products");

		if (name != null && !name.isEmpty()) {
			mv.addObject("product",productDao.findByName(name));

		}
		 
		else {
			mv.addObject("product", productDao.findAll());
		}
//		 mv.addObject("product1", productDao.findAll());
		 System.out.println(mv);
		return mv;
	}
	
	@RequestMapping("/register")
	public ModelAndView register() {
		return new ModelAndView ("register");
	}
	
	@PostMapping("/register")
	public ModelAndView register(@RequestParam("firstName") String firstName, 
			@RequestParam("lastName") String lastName,
			@RequestParam("email") String email, 
			@RequestParam("phoneNumber") String phoneNumber, 
			@RequestParam("password") String password ) {
		Users user = new Users(firstName, lastName, email, phoneNumber, password);
		ModelAndView mv = new ModelAndView ("confirm");
		mv.addObject("firstName",firstName);
		mv.addObject("email",email);
		mv.addObject("phoneNumber",phoneNumber);
		mv.addObject(user);
		usersDao.addUser(user);
		return mv;
	}
	

	
	@RequestMapping("/admin")
	public ModelAndView showAdmin() {
		List<Product> products = productDao.findAll();
		return new ModelAndView("admin","product",products);
	}
	
	
	
	@RequestMapping("/products")
	public ModelAndView showShop() {
		List<Product> products = productDao.findAll();
		return new ModelAndView("products","product",products);
	}
	

	@RequestMapping("/product/create")
	public ModelAndView showCreate() {
		return new ModelAndView("product-form", "title", "Add a Product");

	}
	@PostMapping("/product/create")
	public ModelAndView submitCreateForm(Product pro) {
		productDao.addProduct(pro);
		return new ModelAndView("redirect:/admin");
	}
	
	@RequestMapping("/product/edit")
	public ModelAndView submitEdit(@RequestParam("id") Long id) {
		List<String> names = productDao.findNames();
		ModelAndView mav = new ModelAndView ("product-edit");
		mav.addObject("product", productDao.findById(id));
		mav.addObject("names", names);
		mav.addObject("title","Edit");
		return mav;
	}
	
	@PostMapping("/product/edit")
	public ModelAndView submitEditForm(Product prod) {
		productDao.edit(prod);
		return new ModelAndView("redirect:/admin");
	}
	
	@RequestMapping("/product/delete")
	public ModelAndView submitDelete(@RequestParam("id") Long id) {
		productDao.delete(id);
		return new ModelAndView("redirect:/admin");
	}
		
}

