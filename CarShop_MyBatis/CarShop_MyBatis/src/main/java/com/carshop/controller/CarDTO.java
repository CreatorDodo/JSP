package com.carshop.controller;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

@SuppressWarnings("serial")
public class CarDTO implements Serializable {
	//private static final long serialVersionUID = 3414129893883786050L;
	
	private String cid, cname, cprice, ccate, cdesc;
	private MultipartFile carimage;
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCprice() {
		return cprice;
	}
	public void setCprice(String cprice) {
		this.cprice = cprice;
	}
	public String getCcate() {
		return ccate;
	}
	public void setCcate(String ccate) {
		this.ccate = ccate;
	}
	public String getCdesc() {
		return cdesc;
	}
	public void setCdesc(String cdesc) {
		this.cdesc = cdesc;
	}
	public MultipartFile getCarimage() {
		return carimage;
	}
	public void setCarimage(MultipartFile carimage) {
		this.carimage = carimage;
	}
	
	public CarDTO(String cid, String cname, String cprice, String ccate, String cdesc, MultipartFile carimage) {
		this.cid = cid;
		this.cname = cname;
		this.cprice = cprice;
		this.ccate = ccate;
		this.cdesc = cdesc;
		this.carimage = carimage;
	}
	
	public CarDTO() {
		super();
	}
	
	

	
}
