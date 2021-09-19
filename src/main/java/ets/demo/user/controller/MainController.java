package ets.demo.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ets.demo.user.dao.UserDAO;
import ets.demo.user.model.User;

@Controller
public class MainController {

	//Remove annotation since wiring is configured in the xml file
	//@Autowired
	private UserDAO userDAO;

	//Autowiring is configured in the xml file to be done by setter method
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@RequestMapping(value = "/")
	public ModelAndView anasayfa(ModelAndView model) {

		model.setViewName("anasayfa");

		return model;
	}
	
	@RequestMapping(value = "/yenikisi", method = RequestMethod.GET)
	public ModelAndView newUser(ModelAndView model) {

		User newUser = new User();

		model.addObject("user", newUser);
		model.setViewName("kayit_formu");

		return model;
	}
	

	@RequestMapping(value = "/kullanici_listesi", method= RequestMethod.GET)
	public ModelAndView listUser(ModelAndView model) {

		List<User> listUser = userDAO.getAll();

		model.addObject("listUser", listUser);
		model.setViewName("kullanici_listesi");

		return model;
	}

	@RequestMapping(value = "/kaydet", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute User user) {

		if (user.getId() == null) {
			userDAO.add(user);
		} else {
			userDAO.update(user);
		}

		return new ModelAndView("redirect:/");

	}

	@RequestMapping(value = "/guncelle", method = RequestMethod.GET)
	public ModelAndView updateUser(HttpServletRequest req) {
		Integer id = Integer.parseInt(req.getParameter("id"));

		ModelAndView model = new ModelAndView();
		User user = userDAO.get(id);

		model.addObject("user", user);
		model.setViewName("kayit_formu");

		return model;

	}

	@RequestMapping(value = "/sil", method = RequestMethod.GET)
	public ModelAndView deleteUser(HttpServletRequest req) {
		Integer id = Integer.parseInt(req.getParameter("id"));
		userDAO.delete(id);

		return new ModelAndView("redirect:/kullanici_listesi");

	}

}
