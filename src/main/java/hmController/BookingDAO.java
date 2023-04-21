package hmController;

import java.util.List;

public interface BookingDAO {
	void add(Booking ref);
	List<Booking> viewall();
}
