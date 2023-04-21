package hmController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	
	@Autowired
	HotelDAO hdao;
	
	@RequestMapping(path="/findHotel",method = RequestMethod.GET)
	public String findhotelpage() {
		return "findhotel";
	}
	
	@RequestMapping(path="/handleFindHotels",method = RequestMethod.POST)
	public ModelAndView handleFindHotels( @RequestParam("area") String area,Model model) {
		List<Hotel> mylist = hdao.getSelected(area);
		return new ModelAndView("selecthotel", "mylist", mylist);
	}
	
	
	@RequestMapping("/checkin")
	public String checkinpage() {
		return "checkin";
	}
	
	@RequestMapping(path="/handleCheckin",method = RequestMethod.POST)
	public String handleCheckin(@RequestParam("book") String book, Model model) {
		model.addAttribute("successful",": Check In Successful :)");
		model.addAttribute("booking", book);
		return "checkin";
	}
	
	@RequestMapping("/checkout")
	public String checkoutpage() {
		return "checkout";
	}
	
	@RequestMapping(path="/handleCheckout",method = RequestMethod.POST)
	public String handleCheckout(@RequestParam("book") String book, Model model) {
		model.addAttribute("successful","Check Out Successful :)");
		model.addAttribute("booking", book);
		return "checkout";
	}
	
	@RequestMapping("/cancellation")
	public String cancelpage() {
		return "cancelled";
	}

	@RequestMapping(path="/handleCancel",method = RequestMethod.POST)
	public String handleLogin(@RequestParam("book") String book, Model model) {
		model.addAttribute("successful","Booking Cancelled Successfully");
		model.addAttribute("booking", book);
		return "cancelled";
	}
	
	@RequestMapping("/viewhotels")
	public ModelAndView allhotels(){
		List<Hotel> mylist = hdao.geHotels();
		return new ModelAndView("viewhotels", "mylist", mylist);
	}
	
	
}
