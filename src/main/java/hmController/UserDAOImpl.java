package hmController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import hmMapper.User_Mapper;

@Component
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private User_Mapper mapper;

	@Override
	public List<User> searchUser(User myuser) {
		// TODO Auto-generated method stub
		return mapper.search(myuser);
	}

}
