package hmController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import hmMapper.Hotel_Mapper;

@Component
public class HotelDAOImpl implements HotelDAO {
	
	@Autowired
	private Hotel_Mapper mapper;
	
	@Override
	public List<Hotel> geHotels() {
		// TODO Auto-generated method stub
		return mapper.getAll();
	}

	@Override
	public List<Hotel> getSelected(String area) {
		// TODO Auto-generated method stub
		return mapper.getHotels(area);
	}
	
}
