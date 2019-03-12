package com.qq.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.qq.dto.MemberVO;

import static util.DBManager.*;
public class MemberDAO {
	private MemberDAO () {}
	
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
//고객,업자용
	
	//회원등록
	public int insertMember(MemberVO mem) {
		String sql = "insert into member values (?,?,?,?,?,?,?,?,?,?,?,?)";
		int res = 0;
		Connection conn = null;
		PreparedStatement  pstmt = null;
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem.getId());
			pstmt.setString(2, mem.getPassword());
			pstmt.setString(3, mem.getName_h());
			pstmt.setString(4, mem.getName_k());
			pstmt.setString(5, mem.getAddr1());
			pstmt.setString(6, mem.getAddr2());
			pstmt.setString(7, mem.getPhone());
			pstmt.setString(8, mem.getEmail());
			pstmt.setInt(9, mem.getAuthority());
			pstmt.setString(10, mem.getCity());
			pstmt.setString(11, mem.getBorough());
			pstmt.setString(12, mem.getZipcode());
			res = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn,pstmt,null);
		}
		return res;
	}
	//아이디 중복확인 중복 일시 1, 중복 아닐시 -1
	public int confirmId(String id) {
		String sql="select id from member where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int res = -1;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				res = 1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn, pstmt, rs);
		}
		
		return res;
	}
	//회원정보수정 
	public int updateMember(MemberVO mem) {
		int res = 0;
		String sql = "update member set password= ?, name_h = ? , name_k = ? , addr1 = ? , addr2= ? , phone = ?, email = ?, city = ?, borough = ? ,zipcode = ? where id =?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem.getPassword());
			pstmt.setString(2, mem.getName_h());
			pstmt.setString(3, mem.getName_k());
			pstmt.setString(4, mem.getAddr1());
			pstmt.setString(5, mem.getAddr2());
			pstmt.setString(6, mem.getPhone());
			pstmt.setString(7, mem.getEmail());
			pstmt.setString(8, mem.getCity());
			pstmt.setString(9, mem.getBorough());
			pstmt.setString(10, mem.getZipcode());
			pstmt.setString(11, mem.getId());
			res = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn,pstmt,null);
		}
		return res;
	}
	
	//회원탈퇴
	public int removeMember(MemberVO mem) {
		int res = 0;
		String sql = "delete * from member where id = ? and pass = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem.getId());
			pstmt.setString(2, mem.getPassword());
			res = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn, pstmt, null);
		}
		return res;
	}

	
//관리자용
	
	//회원목록보기
	public ArrayList<MemberVO> selectMember(){
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		String sql = "select * from member";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberVO mem = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				mem = new MemberVO(rs.getString("id"),
									rs.getString("password"),
									rs.getString("name_h"),
									rs.getString("name_k"),
									rs.getString("addr1"),
									rs.getString("addr2"),
									rs.getString("phone"),
									rs.getString("email"),
									rs.getInt("authority"),
									rs.getString("city"),
									rs.getString("borough"),
									rs.getString("zipcode")
						);
				list.add(mem);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn, pstmt, rs);
		}
		
		return list;
	}
	//회원삭제 
	public void deleteMember(String id) {
		String sql = "delete from member where id = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
	
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn, pstmt, null);
		}
	}
}
