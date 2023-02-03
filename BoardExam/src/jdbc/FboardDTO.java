package jdbc;


public class FboardDTO {
	
	private String bno;
	private String btitle;
	private String bwriter;
	private String bcontent;
	private String bfile;
	private String bdate;
	
	
	
	public String getBno() {
		return bno;
	}
	public void setBno(String bno) {
		this.bno = bno;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBwriter() {
		return bwriter;
	}
	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBfile() {
		return bfile;
	}
	public void setBfile(String bfile) {
		this.bfile = bfile;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	
	
	public FboardDTO(String bno, String btitle, String bwriter, String bcontent, String bfile, String bdate) {
		super();
		this.bno = bno;
		this.btitle = btitle;
		this.bwriter = bwriter;
		this.bcontent = bcontent;
		this.bfile = bfile;
		this.bdate = bdate;
	}
	
	

	
	
	
	
	
	
	
	
	
	
}
