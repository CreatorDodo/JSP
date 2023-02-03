package jdbc;


public class user {
	
	private String userName;
	private String userAge;
	private String userGender;
	private String userEmail;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserAge() {
		return userAge;
	}
	public void setUserAge(String userAge) {
		this.userAge = userAge;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	
	
	public user(java.lang.String userName, java.lang.String userAge, java.lang.String userGender,
			java.lang.String userEmail) {
		super();
		this.userName = userName;
		this.userAge = userAge;
		this.userGender = userGender;
		this.userEmail = userEmail;
	}
	
	public user() {
		super();
	}
	
	
	
	
	
	
	
	
}
