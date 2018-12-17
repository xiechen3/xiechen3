package citic.wang.springboot.model;


import java.util.Date;

import citic.wang.springboot.base.BaseEntity;

public class User extends BaseEntity{
	private String name;
	private String password;
	private Integer ye;
	private Date dqsj;
	private Integer dj;
	private Integer qx;
	private String email;
	private String tel;
	private Date scsj;
	private Integer ljje;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getYe() {
		return ye;
	}
	public void setYe(Integer ye) {
		this.ye = ye;
	}
	public Date getDqsj() {
		return dqsj;
	}
	public void setDqsj(Date dqsj) {
		this.dqsj = dqsj;
	}
	public Integer getDj() {
		return dj;
	}
	public void setDj(Integer dj) {
		this.dj = dj;
	}
	public Integer getQx() {
		return qx;
	}
	public void setQx(Integer qx) {
		this.qx = qx;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Date getScsj() {
		return scsj;
	}
	public void setScsj(Date scsj) {
		this.scsj = scsj;
	}
	public Integer getLjje() {
		return ljje;
	}
	public void setLjje(Integer ljje) {
		this.ljje = ljje;
	}
	
	

} 
