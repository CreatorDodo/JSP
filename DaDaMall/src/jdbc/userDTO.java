package jdbc;


public class userDTO {
	
	private String id, password, name, ts, email, gender;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTs() {
		return ts;
	}

	public void setTs(String ts) {
		this.ts = ts;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public userDTO(String id, String password, String name, String ts, String email, String gender) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.ts = ts;
		this.email = email;
		this.gender = gender;
	}

	public userDTO() {
		super();
	}

	
}