package com.model;

public class Product {
    private int pid;
    private String pName;
    private String pCategory;
    private String pPrice;
    private String pStatus;
    private String pImage;
    
	public Product(int pid, String pName, String pCategory, String pPrice, String pStatus, String pImage) {
		super();
		this.pid = pid;
		this.pName = pName;
		this.pCategory = pCategory;
		this.pPrice = pPrice;
		this.pStatus = pStatus;
		this.pImage = pImage;
	}
	
	public Product() {
		
	}

	public int getPid() {
		return pid;
	}

	public String getpName() {
		return pName;
	}

	public String getpCategory() {
		return pCategory;
	}

	public String getpPrice() {
		return pPrice;
	}

	public String getpStatus() {
		return pStatus;
	}

	public String getpImage() {
		return pImage;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public void setpCategory(String pCategory) {
		this.pCategory = pCategory;
	}

	public void setpPrice(String pPrice) {
		this.pPrice = pPrice;
	}

	public void setpStatus(String pStatus) {
		this.pStatus = pStatus;
	}

	public void setpImage(String pImage) {
		this.pImage = pImage;
	}
	
}
