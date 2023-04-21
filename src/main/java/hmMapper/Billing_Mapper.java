package hmMapper;

import java.util.List;

import org.apache.ibatis.annotations.*;

import hmController.Billing;

public interface Billing_Mapper {
	final String Bill = "SELECT h.hotelName, h.Price, b.Booking_Id, b.Name, b.FromCity, b.PhoneNumber, b.No_Of_People, b.CheckInDate, b.CheckOutDate from booking b JOIN hotels h ON b.Hotel_Id=h.hotelID WHERE b.Booking_Id = #{bookingid}";
	
	@Select(Bill)
	@Results(value={
			   @Result(property="Booking_Id", column="Booking_Id"),
			   @Result(property="Name", column="Name"),
			   @Result(property="FromCity", column="FromCity"),
			   @Result(property="PhoneNumber", column="PhoneNumber"),
			   @Result(property="CheckInDate", column="CheckInDate"),
			   @Result(property="CheckOutDate", column="CheckOutDate"),
			   @Result(property="Hotel_Name", column="hotelName"),
			   @Result(property="Rent", column="Price"),
			   @Result(property="No_Of_People", column="No_Of_People"),
	})

	List<Billing> getBill(Integer bookingid);
}
