package bean;

import java.util.Date;

public class TUser {
	Integer uid;
	String uname;
	String upwd;
	String umessage;
	Date   utime;
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getUmessage() {
		return umessage;
	}
	public void setUmessage(String umessage) {
		this.umessage = umessage;
	}
	public Date getUtime() {
		return utime;
	}
	public void setUtime(Date utime) {
		this.utime = utime;
	}
	
}
