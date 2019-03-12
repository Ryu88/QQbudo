package com.qq.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import com.qq.dto.PropertyVO;

import util.DBManager;

public class PropertyDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	/**
	 * 마지막 글번호 검색
	 * 글등록
	 * 글삭제
	 * 글업데이트
	 * 글검색 1개
	 * 글목록
	 * 조회수 증가
	 * */
	
	public int maxnum() {
		int num = 0 ;  
		String sql = "select max(num) from property";
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				num = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return num;
	}
	//글등록
	public int setup(PropertyVO dto) {
		int res = 0;
		int num = maxnum()+1;
		
		String sql = "insert into property values"
				+ "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
				+ " ?, ?, ?, ?, ?, ?, 0, ?)";
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt	(1, num);
			pstmt.setString	(2, dto.getName());
			pstmt.setString	(3, dto.getPhone());
			pstmt.setString	(4, dto.getEmail());
			pstmt.setString	(5, dto.getTitle());
			pstmt.setString	(6, dto.getAdd());
			pstmt.setString	(7, dto.getPictureurl1());
			pstmt.setString	(8, dto.getPictureurl2());
			pstmt.setString	(9, dto.getPictureurl3());
			pstmt.setString	(10, dto.getPictureurl4());
			pstmt.setString	(11, dto.getPictureurl5());
			pstmt.setString	(12, dto.getHometype());
			pstmt.setInt	(13, dto.getRent());
			pstmt.setString	(14, dto.getBoption());
			pstmt.setString	(15, dto.getStationkm());
			pstmt.setString	(16, dto.getContent());
			pstmt.setString	(17, dto.getWritedate());
			res = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn,pstmt,null);
		}
		return res;
	}
	// 글삭제
	public int delete(int num) {
		int res = 0;
		String sql = "delete from property where num = ?";
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			res = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn,pstmt,null);
		}
		return res;
	}
	// 글 업뎃
	public int update(PropertyVO dto) {
		int res = 0;
		String sql = "update property set name = ?,"
				+ " phone = ?, email = ?,"
				+ " title = ?, add = ?,"
				+ " pictureurl1 = ?, pictureurl2 = ?,"
				+ " pictureurl3 = ?, pictureurl4 = ?,"
				+ " pictureurl5 = ?, hometype = ?,"
				+ " rent = ?, boption = ?,"
				+ " stationkm = ?, content = ?"
				+ " where num = ?";
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString	(1, dto.getName());
			pstmt.setString	(2, dto.getPhone());
			pstmt.setString	(3, dto.getEmail());
			pstmt.setString	(4, dto.getTitle());
			pstmt.setString	(5, dto.getAdd());
			pstmt.setString	(6, dto.getPictureurl1());
			pstmt.setString	(7, dto.getPictureurl2());
			pstmt.setString	(8, dto.getPictureurl3());
			pstmt.setString	(9, dto.getPictureurl4());
			pstmt.setString	(10, dto.getPictureurl5());
			pstmt.setString	(11, dto.getHometype());
			pstmt.setInt	(12, dto.getRent());
			pstmt.setString	(13, dto.getBoption());
			pstmt.setString	(14, dto.getStationkm());
			pstmt.setString	(15, dto.getContent());
			pstmt.setInt	(16, dto.getNum());
			res = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn,pstmt,null);
		}
		return res;
	}
	// 조회수 증가
	public void readcountupdate(int num) {
		String sql = "update property set readcount + 1 where num = ?";
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt	(1, num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn,pstmt,null);
		}
	}
	// 글검색 1개
	public  PropertyVO selectOne(int num) {
		String sql = "select * from property where num = ?";
		PropertyVO dto = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto = new PropertyVO(
					rs.getInt	("num"),
					rs.getString("name"),
					rs.getString("phone"),
					rs.getString("email"),
					rs.getString("title"),
					rs.getString("add"),
					rs.getString("pictureurl1"),
					rs.getString("pictureurl2"),
					rs.getString("pictureurl3"),
					rs.getString("pictureurl4"),
					rs.getString("pictureurl5"),
					rs.getString("hometype"),
					rs.getInt	("rent"),
					rs.getString("boption"),
					rs.getString("stationkm"),
					rs.getString("content"),
					rs.getInt	("readcount"),
					rs.getString("writedate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn,pstmt,rs);
		}
		return dto;
	}
	// 글목록
	public  ArrayList<PropertyVO> selectAllList(int num) {
		String sql = "select * from property";
		ArrayList<PropertyVO> list = new ArrayList<PropertyVO>();
		PropertyVO dto = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				dto = new PropertyVO(
						rs.getInt	("num"),
						rs.getString("name"),
						rs.getString("phone"),
						rs.getString("email"),
						rs.getString("title"),
						rs.getString("add"),
						rs.getString("pictureurl1"),
						rs.getString("pictureurl2"),
						rs.getString("pictureurl3"),
						rs.getString("pictureurl4"),
						rs.getString("pictureurl5"),
						rs.getString("hometype"),
						rs.getInt	("rent"),
						rs.getString("boption"),
						rs.getString("stationkm"),
						rs.getString("content"),
						rs.getInt	("readcount"),
						rs.getString("writedate"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn,pstmt,rs);
		}
		return list;
	}
}
