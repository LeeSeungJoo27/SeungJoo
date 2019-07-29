package model;

import java.sql.Timestamp;

public class MemberDataBean {
	private String id;
	private String password;
	private String name;
	private int year;
	private String gender;
	private String addr1;
	private String addr3;
	private String tel;
	private String mailcode;
	
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
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr3() {
		return addr3;
	}
	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMailcode() {
		return mailcode;
	}
	public void setMailcode(String mailcode) {
		this.mailcode = mailcode;
	}
	
	@Override
	public String toString() {
		return "MemberDataBean [id=" + id + ", password=" + password + ", name=" + name + ", year=" + year + ", gender="
				+ gender + ", addr1=" + addr1 + ", addr3=" + addr3 + ", tel=" + tel + ", mailcode=" + mailcode + "]";
	}
	
	
}	
	