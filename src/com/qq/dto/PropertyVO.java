package com.qq.dto;

public class PropertyVO {
	private int num; // primary key
    private String name; // 작성자
    private String phone; // 작성자 전화
    private String email; // 작성자 이메일
    private String title; // 글제목
    private String add; 
    private String pictureurl1; // 사진 경로 1
    private String pictureurl2;
    private String pictureurl3;
    private String pictureurl4;
    private String pictureurl5;
    private String hometype; // 부동산타입 
    private int rent; // 
    private String boption; //방 옵션
    private String stationkm; // 가까운 역
    private String content; //글 내용
    private int readcount; //조회수
    private String writedate; // 글쓴 날짜
	
    public PropertyVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PropertyVO(int num, String name, String phone, String email, String title, String add, String pictureurl1,
			String pictureurl2, String pictureurl3, String pictureurl4, String pictureurl5, String hometype, int rent,
			String boption, String station, String content, int readcount, String writedate) {
		super();
		this.num = num;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.title = title;
		this.add = add;
		this.pictureurl1 = pictureurl1;
		this.pictureurl2 = pictureurl2;
		this.pictureurl3 = pictureurl3;
		this.pictureurl4 = pictureurl4;
		this.pictureurl5 = pictureurl5;
		this.hometype = hometype;
		this.rent = rent;
		this.boption = boption;
		this.stationkm = station;
		this.content = content;
		this.readcount = readcount;
		this.writedate = writedate;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAdd() {
		return add;
	}

	public void setAdd(String add) {
		this.add = add;
	}

	public String getPictureurl1() {
		return pictureurl1;
	}

	public void setPictureurl1(String pictureurl1) {
		this.pictureurl1 = pictureurl1;
	}

	public String getPictureurl2() {
		return pictureurl2;
	}

	public void setPictureurl2(String pictureurl2) {
		this.pictureurl2 = pictureurl2;
	}

	public String getPictureurl3() {
		return pictureurl3;
	}

	public void setPictureurl3(String pictureurl3) {
		this.pictureurl3 = pictureurl3;
	}

	public String getPictureurl4() {
		return pictureurl4;
	}

	public void setPictureurl4(String pictureurl4) {
		this.pictureurl4 = pictureurl4;
	}

	public String getPictureurl5() {
		return pictureurl5;
	}

	public void setPictureurl5(String pictureurl5) {
		this.pictureurl5 = pictureurl5;
	}

	public String getHometype() {
		return hometype;
	}

	public void setHometype(String hometype) {
		this.hometype = hometype;
	}

	public int getRent() {
		return rent;
	}

	public void setRent(int rent) {
		this.rent = rent;
	}

	public String getBoption() {
		return boption;
	}

	public void setBoption(String boption) {
		this.boption = boption;
	}

	

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public String getWritedate() {
		return writedate;
	}

	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}	

	public String getStationkm() {
		return stationkm;
	}

	public void setStationkm(String stationkm) {
		this.stationkm = stationkm;
	}

	@Override
	public String toString() {
		return "PropertyVO [num=" + num + ", name=" + name + ", phone=" + phone + ", email=" + email + ", title="
				+ title + ", add=" + add + ", pictureurl1=" + pictureurl1 + ", pictureurl2=" + pictureurl2
				+ ", pictureurl3=" + pictureurl3 + ", pictureurl4=" + pictureurl4 + ", pictureurl5=" + pictureurl5
				+ ", hometype=" + hometype + ", rent=" + rent + ", boption=" + boption + ", station=" + stationkm
				+ ", content=" + content + ", readcount=" + readcount + ", writedate=" + writedate + "]";
	}    
    
    
    
    
}
