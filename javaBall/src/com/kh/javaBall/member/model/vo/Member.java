/**
 * 
 */
package com.kh.javaBall.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

/**
 * @author raejin
 *
 */
public class Member implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6883548496434897897L;
	
	private String mNo;
	private Date enrollDate;
	private String email;
	private String pwd;
	private String mName;
	private Date birth;
	private String phone;
	private String mSort;
	
	/**
	 * 기본생성자
	 */
	public Member() {
		super();
	}

	
	/**
	 * @param mNo
	 * @param enrollDate
	 * @param email
	 * @param pwd
	 * @param mName
	 * @param birth
	 * @param phone
	 * @param mSort
	 */
	public Member(String mNo, Date enrollDate, String email, String pwd, String mName, Date birth, String phone,
			String mSort) {
		super();
		this.mNo = mNo;
		this.enrollDate = enrollDate;
		this.email = email;
		this.pwd = pwd;
		this.mName = mName;
		this.birth = birth;
		this.phone = phone;
		this.mSort = mSort;
	}

	public String getmNo() {
		return mNo;
	}

	public void setmNo(String mNo) {
		this.mNo = mNo;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getmSort() {
		return mSort;
	}

	public void setmSort(String mSort) {
		this.mSort = mSort;
	}

	@Override
	public String toString() {
		return "Member [mNo=" + mNo + ", enrollDate=" + enrollDate + ", email=" + email + ", pwd=" + pwd + ", mName="
				+ mName + ", birth=" + birth + ", phone=" + phone + ", mSort=" + mSort + "]";
	}
}
