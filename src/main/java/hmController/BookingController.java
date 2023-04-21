package hmController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class BookingController {
	
	@Autowired
	BookingDAO bdao;
	
	
	@RequestMapping(path="/booking",method = RequestMethod.GET)
	public String bookingpage(@RequestParam("HotelID") String HotelId, Model model) {
		model.addAttribute("HotelId",HotelId);
		return "booking";
	}
	
	@RequestMapping(path="/handleBooking",method = RequestMethod.POST)
	public String handleLogin(@ModelAttribute Booking booking, Model model) {
		booking.randomNumber();
		bdao.add(booking);
		return "bookingsuccess";
	}
	
	@RequestMapping(path="/viewall")
	public ModelAndView viewall() {
		List<Booking> mylist = bdao.viewall();
		return new ModelAndView("viewall", "mylist", mylist);
	}
	
}
