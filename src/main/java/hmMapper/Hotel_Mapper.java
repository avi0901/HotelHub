package hmMapper;

import java.util.List;

import org.apache.ibatis.annotations.*;

import hmController.Hotel;

public interface Hotel_Mapper {
	final String getAll = "select * from hotels";
	final String findHotel = "select * from hotels where Area = #{area}";
	
	@Select(getAll)
	@Results(value = {
			@Result(property = "hotelID", column="hotelID"),
			@Result(property = "hotelname", column="hotelname"),
			@Result(property = "State", column="State"),
			@Result(property = "City", column="City"),
			@Result(property = "Area", column="Area"),
			@Result(property = "Price", column="Price"),
	})
		
	List<Hotel> getAll();

	
	@Select(findHotel)
	@Results(value = {
			@Result(property = "hotelID", column="hotelID"),
			@Result(property = "hotelname", column="hotelname"),
			@Result(property = "State", column="State"),
			@Result(property = "City", column="City"),
			@Result(property = "Area", column="Area"),
			@Result(property = "Price", column="Price"),
	})
	
	List<Hotel> getHotels(String area);
}
