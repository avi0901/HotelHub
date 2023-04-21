package hmController;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BillingController {
	@Autowired
	BillingDAO bdao;
	
	public Double calculateBill(Double price, Integer person, Integer days) {
		Double bill = price*person*days;
		return bill;
	}
	
	public Double tax(Double bill) {
		Double taxi = (bill*18)/100;
		return taxi;
	}
	
	public Double total(Double bill, Double tax) {
		return bill+tax;
	}
	
	public static int getDaysBetween(String date1Str, String date2Str) {
        LocalDate date1 = LocalDate.parse(date1Str);
        LocalDate date2 = LocalDate.parse(date2Str);
        long daysBetween = ChronoUnit.DAYS.between(date1, date2);
        return (int) daysBetween;
    }
	
	@RequestMapping(path="/bill")
	public String handleBilling(@RequestParam("BookingID") Integer bookingid, Model model) {
		Billing main =  bdao.getDetails(bookingid).get(0);
		Integer days = getDaysBetween(main.getCheckInDate(), main.getCheckOutDate());
		Double Rent = calculateBill(main.getRent(),main.getNo_Of_People(),days);
		Double Tax = tax(Rent);
		Double Total = total(Rent, Tax);
		LocalDate today = LocalDate.now();
		model.addAttribute("today", today);
		model.addAttribute("details", main);
		model.addAttribute("total", Total);
		model.addAttribute("rent", Rent);
		model.addAttribute("tax", Tax);
		return "bill";
	}
	
	@RequestMapping(path="/generatebill")
	public String generateBillpage() {
		return "generatebill";
	}
}
