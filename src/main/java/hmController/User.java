package hmController;

public class User {
	private String HotelCode;
	private String UserID;
	private String Password;
	/**
	 * @return the hotelCode
	 */
	public String getHotelCode() {
		return HotelCode;
	}
	/**
	 * @param hotelCode the hotelCode to set
	 */
	public void setHotelCode(String hotelCode) {
		HotelCode = hotelCode;
	}
	/**
	 * @return the userID
	 */
	public String getUserID() {
		return UserID;
	}
	/**
	 * @param userID the userID to set
	 */
	public void setUserID(String userID) {
		UserID = userID;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return Password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		Password = password;
	}
	@Override
	public String toString() {
		return "User [HotelCode=" + HotelCode + ", UserID=" + UserID + ", Password=" + Password + "]";
	}
	
	public boolean validate(String login,String pass)
	{
		boolean isTrue = login.equalsIgnoreCase("") && pass.equals("OhNo6969");
		return pass.equals("OhNo6969");
	}
	
}
