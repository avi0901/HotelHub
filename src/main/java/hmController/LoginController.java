package hmController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class LoginController {
	
	@Autowired
	UserDAO udao;
	
	@RequestMapping("/")
	public String welcomepage() {
		return "welcome";
	}
	
	@RequestMapping("/login")
	public String loginPage() {
		return "login";
	}
	
	@RequestMapping(path="/handleLogin",method = RequestMethod.POST)
	public String handleLogin(@ModelAttribute User user, Model model) {
//		boolean isUser = user.validate(user.getUserID(), user.getPassword());
//		if(isUser) {
//			System.out.println("Logged In");
//			return "useroptions";
//		}else {
//			System.out.println("Unsuccessful LogIn Attempt");
//			model.addAttribute("successful","Unsuccessful LogIn Attempt Please Login Again");
//			return "login";
//		}
		User myUser = new User();
		myUser.setHotelCode(user.getHotelCode());
		myUser.setUserID(user.getUserID());
		myUser.setPassword(user.getPassword());
		
		List<User> s = null;
		s=udao.searchUser(myUser);
		if(s.size()!=0) {
			String userPass = user.getPassword();
			String daoPass = s.get(0).getPassword();
			if(userPass.equals(daoPass)) {
				System.out.println("Logged In");
				return "useroptions";
			}else {
				System.out.println("Unsuccessful LogIn Attempt");
				model.addAttribute("successful","Unsuccessful LogIn Attempt Please Login Again");
				return "login";
			}
			
		}else {
//			System.out.println("Unsuccessful LogIn Attempt");
			model.addAttribute("successful","Unsuccessful LogIn Attempt Please Login Again");
			return "login";
		}
		
	}
	
	@RequestMapping("/temp")
	public String temp() {
		return "welcome";
	}
	
}
