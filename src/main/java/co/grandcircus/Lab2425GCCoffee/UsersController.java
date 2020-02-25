package co.grandcircus.Lab2425GCCoffee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.Lab2425GCCoffee.Dao.UsersDao;
import co.grandcircus.Lab2425GCCoffee.beans.Users;

@Controller
public class UsersController {
		
	@Autowired
	private UsersDao usersDao;
	
//	@RequestMapping("/")
//	public ModelAndView index() {
//		return new ModelAndView("index");
//	}
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
	
	
	
}

