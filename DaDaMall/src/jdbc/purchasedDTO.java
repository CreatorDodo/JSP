package jdbc;

public class purchasedDTO {

	private String pid, id, name, pquantity, email, address;

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPquantity() {
		return pquantity;
	}

	public void setPquantity(String pquantity) {
		this.pquantity = pquantity;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public purchasedDTO(String pid, String id, String name, String pquantity, String email, String address) {
		super();
		this.pid = pid;
		this.id = id;
		this.name = name;
		this.pquantity = pquantity;
		this.email = email;
		this.address = address;
	}

	public purchasedDTO() {
		super();
	}
	
	
}
