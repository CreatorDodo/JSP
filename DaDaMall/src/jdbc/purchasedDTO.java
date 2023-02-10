package jdbc;

public class purchasedDTO {

	private String purno, pname, id, name, pquantity, email, address;

	public String getPurno() {
		return purno;
	}

	public void setPurno(String purno) {
		this.purno = purno;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
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

	public purchasedDTO(String purno, String pname, String id, String name, String pquantity, String email,
			String address) {
		super();
		this.purno = purno;
		this.pname = pname;
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
