package com.kms.po;

import java.io.Serializable;

public class Person implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1591635658439875596L;
	//private static final SimpleDateFormat FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	private String pwd;
	private String pnm;
	private String nm;
	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getNm() {
		return nm;
	}

	public void setNm(String nm) {
		this.nm = nm;
	}
	
	public String getPnm() {
		return pnm;
	}
	
	public void setPnm(String pnm) {
		this.pnm = pnm;
	}

	public Person(String pwd,String pnm,String nm) {
		this.pwd = pwd;
		this.pnm = pnm;
		this.nm = nm;
	}
}

