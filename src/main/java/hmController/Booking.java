package hmController;

import java.util.Random;

public class Booking {
	Integer Booking_Id;
	String Hotel_ID;
	String Name;
	String FromCity;
	String PhoneNumber;
	String CheckInDate;
	String CheckOutDate;
	Integer No_Of_People;
	boolean Cancelled;
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
	 * @return the hotel_ID
	 */
	public String getHotel_ID() {
		return Hotel_ID;
	}
	/**
	 * @param hotel_ID the hotel_ID to set
	 */
	public void setHotel_ID(String hotel_ID) {
		Hotel_ID = hotel_ID;
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
	/**
	 * @return the cancelled
	 */
	public boolean isCancelled() {
		return Cancelled;
	}
	/**
	 * @param cancelled the cancelled to set
	 */
	public void setCancelled(boolean cancelled) {
		Cancelled = cancelled;
	}
	@Override
	public String toString() {
		return "Booking [Booking_Id=" + Booking_Id + ", Hotel_ID=" + Hotel_ID + ", Name=" + Name + ", FromCity="
				+ FromCity + ", PhoneNumber=" + PhoneNumber + ", CheckInDate=" + CheckInDate + ", CheckOutDate="
				+ CheckOutDate + ", No_Of_People=" + No_Of_People + ", Cancelled=" + Cancelled + "]";
	} 
	
	public void randomNumber() {
		Random random = new Random();
        int randomNumber = random.nextInt(90000) + 10000;
        Booking_Id = randomNumber;
	}
	
}
