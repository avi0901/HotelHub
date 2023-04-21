package hmController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import hmMapper.Booking_Mapper;

@Component
public class BookingDAOImpl implements BookingDAO {
	@Autowired
	private Booking_Mapper mapper;

	@Override
	public void add(Booking ref) {
		// TODO Auto-generated method stub
		mapper.insert(ref);
	}

	@Override
	public List<Booking> viewall() {
		// TODO Auto-generated method stub
		return mapper.getAll();
	}
	
	

}
