package jdbc;

public class productDTO {

	private String pno, pid, pname, price, description, maker, category, pimage;

	public String getPno() {
		return pno;
	}

	public void setPno(String pno) {
		this.pno = pno;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}

	public productDTO(String pno, String pid, String pname, String price, String description, String maker,
			String category, String pimage) {
		super();
		this.pno = pno;
		this.pid = pid;
		this.pname = pname;
		this.price = price;
		this.description = description;
		this.maker = maker;
		this.category = category;
		this.pimage = pimage;
	}

	public productDTO() {
		super();
	}
	
	

	
}
