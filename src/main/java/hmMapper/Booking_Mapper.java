package hmMapper;

import java.util.List;

import org.apache.ibatis.annotations.*;

import hmController.Booking;


public interface Booking_Mapper {
	   final String insert = "INSERT INTO booking ( Booking_Id ,Hotel_ID, Name, FromCity,PhoneNumber,CheckInDate,CheckOutDate,No_Of_People,Cancelled) VALUES (#{Booking_Id}, #{Hotel_ID}, #{Name},#{FromCity},#{PhoneNumber}, #{CheckInDate},#{CheckOutDate},#{No_Of_People}, #{Cancelled})";
	   final String getAll = "select * from booking";
	       
	   @Insert(insert)
	   void insert(Booking booking);

	   @Select(getAll)
	   @Results(value = {
			   @Result(property="Booking_Id", column="Booking_Id"),
			   @Result(property="Hotel_ID", column="Hotel_ID"),
			   @Result(property="Name", column="Name"),
			   @Result(property="PhoneNumber", column="PhoneNumber"),
			   @Result(property="CheckInDate", column="CheckInDate"),
			   @Result(property="CheckOutDate", column="CheckOutDate"),
			   @Result(property="No_Of_People", column="No_Of_People"),
			   @Result(property="Cancelled", column="Cancelled"),
	   })
	   List<Booking> getAll();
}
