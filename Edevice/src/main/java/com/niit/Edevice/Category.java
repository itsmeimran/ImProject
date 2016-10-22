package com.niit.Edevice;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.annotations.Table;

@Entity
public class Category {
@Id
	private int catid;
	private String catname;
	public int getCatid() {
		return catid;
	}
	public void setCatid(int catid) {
		this.catid = catid;
	}
	public String getCatname() {
		return catname;
	}
	public void setCatname(String catname) {
		this.catname = catname;
	}

}
