package hmController;

public class Billing {
	Integer Booking_Id;
	String Name;
	String FromCity;
	String PhoneNumber;
	String CheckInDate;
	String CheckOutDate;
	String Hotel_Name;
	Double Rent;
	Integer No_Of_People;
	/**
	 * @return the booking_Id
	 */
	public Integer getBooking_Id() {
		return Booking_Id;
	}
	/**
	 * @param booking_Id the booking_Id to set
	 */
	public void setBooking_Id(Integer booking_Id) {
		Booking_Id = booking_Id;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return Name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		Name = name;
	}
	/**
	 * @return the fromCity
	 */
	public String getFromCity() {
		return FromCity;
	}
	/**
	 * @param fromCity the fromCity to set
	 */
	public void setFromCity(String fromCity) {
		FromCity = fromCity;
	}
	/**
	 * @return the phoneNumber
	 */
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	/**
	 * @param phoneNumber the phoneNumber to set
	 */
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	/**
	 * @return the checkInDate
	 */
	public String getCheckInDate() {
		return CheckInDate;
	}
	/**
	 * @param checkInDate the checkInDate to set
	 */
	public void setCheckInDate(String checkInDate) {
		CheckInDate = checkInDate;
	}
	/**
	 * @return the checkOutDate
	 */
	public String getCheckOutDate() {
		return CheckOutDate;
	}
	/**
	 * @param checkOutDate the checkOutDate to set
	 */
	public void setCheckOutDate(String checkOutDate) {
		CheckOutDate = checkOutDate;
	}
	/**
	 * @return the hotel_Name
	 */
	public String getHotel_Name() {
		return Hotel_Name;
	}
	/**
	 * @param hotel_Name the hotel_Name to set
	 */
	public void setHotel_Name(String hotel_Name) {
		Hotel_Name = hotel_Name;
	}
	/**
	 * @return the rent
	 */
	public Double getRent() {
		return Rent;
	}
	/**
	 * @param rent the rent to set
	 */
	public void setRent(Double rent) {
		Rent = rent;
	}
	/**
	 * @return the no_Of_People
	 */
	public Integer getNo_Of_People() {
		return No_Of_People;
	}
	/**
	 * @param no_Of_People the no_Of_People to set
	 */
	public void setNo_Of_People(Integer no_Of_People) {
		No_Of_People = no_Of_People;
	}
	@Override
	public String toString() {
		return "Billing [Booking_Id=" + Booking_Id + ", Name=" + Name + ", FromCity=" + FromCity + ", PhoneNumber="
				+ PhoneNumber + ", CheckInDate=" + CheckInDate + ", CheckOutDate=" + CheckOutDate + ", Hotel_Name="
				+ Hotel_Name + ", Rent=" + Rent + ", No_Of_People=" + No_Of_People + "]";
	}
	
}
