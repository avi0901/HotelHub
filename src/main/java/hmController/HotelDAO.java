package hmController;

import java.util.List;

public interface HotelDAO {
	List<Hotel> geHotels();
	List<Hotel> getSelected(String area);
}
