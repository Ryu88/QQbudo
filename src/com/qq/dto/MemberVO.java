package com.qq.dto;

public class MemberVO {
	private String id;// primary key
	private String password;// not null
	private String name_h;// not null
	private String name_k;// not null
	private String addr1;
	private String addr2;
	private String phone;
	private String email;
	private int authority;// 0이면 고객, 1이면 업자, 2이면 관리자
	// 추가함.
	private String city; //시 
	private String borough; //구
	private String zipcode; //우편번호

	public MemberVO(String id, String password, String name_h, String name_k, String addr1, String addr2, String phone,
			String email, int authority, String city, String borough, String zipcode) {
		super();
		this.id = id;
		this.password = password;
		this.name_h = name_h;
		this.name_k = name_k;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.phone = phone;
		this.email = email;
		this.authority = authority;
		this.city = city;
		this.borough = borough;
		this.zipcode = zipcode;
	}

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

	public String getName_h() {
		return name_h;
	}

	public void setName_h(String name_h) {
		this.name_h = name_h;
	}

	public String getName_k() {
		return name_k;
	}

	public void setName_k(String name_k) {
		this.name_k = name_k;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAuthority() {
		return authority;
	}

	public void setAuthority(int authority) {
		this.authority = authority;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getBorough() {
		return borough;
	}

	public void setBorough(String borough) {
		this.borough = borough;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public MemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name_h=" + name_h + ", name_k=" + name_k
				+ ", addr1=" + addr1 + ", addr2=" + addr2 + ", phone=" + phone + ", email=" + email + ", authority="
				+ authority + ", city=" + city + ", borough=" + borough + ", zipcode=" + zipcode + "]";
	}

}
