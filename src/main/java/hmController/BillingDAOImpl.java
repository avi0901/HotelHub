package hmController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import hmMapper.Billing_Mapper;

@Component
public class BillingDAOImpl implements BillingDAO{

	@Autowired
	private Billing_Mapper mapper;
	
	
	@Override
	public List<Billing> getDetails(Integer bookingid) {
		// TODO Auto-generated method stub
		return mapper.getBill(bookingid);
	}

}
