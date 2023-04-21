package hmController;

public class Hotel {
	private String hotelID;
	private String hotelname;
	private String State;
	private String City;
	private String Area;
	private Double Price;
	/**
	 * @return the hotelID
	 */
	public String getHotelID() {
		return hotelID;
	}
	/**
	 * @param hotelID the hotelID to set
	 */
	public void setHotelID(String hotelID) {
		this.hotelID = hotelID;
	}
	/**
	 * @return the hotelname
	 */
	public String getHotelname() {
		return hotelname;
	}
	/**
	 * @param hotelname the hotelname to set
	 */
	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}
	/**
	 * @return the state
	 */
	public String getState() {
		return State;
	}
	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		State = state;
	}
	/**
	 * @return the city
	 */
	public String getCity() {
		return City;
	}
	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		City = city;
	}
	/**
	 * @return the area
	 */
	public String getArea() {
		return Area;
	}
	/**
	 * @param area the area to set
	 */
	public void setArea(String area) {
		Area = area;
	}
	/**
	 * @return the price
	 */
	public Double getPrice() {
		return Price;
	}
	/**
	 * @param price the price to set
	 */
	public void setPrice(Double price) {
		Price = price;
	}
	@Override
	public String toString() {
		return "Hotel [hotelID=" + hotelID + ", hotelname=" + hotelname + ", State=" + State + ", City=" + City
				+ ", Area=" + Area + ", Price=" + Price + "]";
	}
	
	

}
