package hmMapper;

import java.util.List;

import org.apache.ibatis.annotations.*;

import hmController.User;

public interface User_Mapper {
	final String searchU = "select * from users where hotelId = #{HotelCode} and userid = #{UserID}";
	
	@Select(searchU)
	@Results(value = {
			@Result(property = "HotelCode", column ="hotelID"),
			@Result(property = "UserID", column ="userid"),
			@Result(property = "Password", column ="password"),
	})
	List<User> search(User myuser);
}
