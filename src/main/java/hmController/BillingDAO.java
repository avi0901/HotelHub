package hmController;

import java.util.List;

public interface BillingDAO {
	List<Billing> getDetails(Integer bookingid);
}
