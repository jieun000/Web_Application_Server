package com.sm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.sm.vo.ProductVO;

import util.DBManager;

public class ProductDAO {

	private ProductDAO() {	
	}
	
	private static ProductDAO instance = new ProductDAO();
	
	public static ProductDAO getInstance() {
		return instance;
	}
	
	// product DB목록 보기 메서드
	public List<ProductVO> list() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<ProductVO> l = new ArrayList<>();
		ProductVO vo = null;
		
		String sql = "select * from product order by code desc";
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new ProductVO();
				
				vo.setCode(rs.getInt(1));
				vo.setName(rs.getString("name")); // 표기 가능
				vo.setPrice(rs.getInt("price")); // 4번은 파일경로라서 패스
				vo.setPictureurl(rs.getString(4));
				vo.setDescription(rs.getNString(5));
				
				l.add(vo);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return l;
		}
	
	// Product DB 데이터 추가하는 메서드
	public void add(ProductVO vo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into product values(product_seq.nextval, ?, ?, ?, ?)";
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getName());
			pstmt.setInt(2, vo.getPrice());
			pstmt.setString(3, vo.getPictureurl());
			pstmt.setString(4, vo.getDescription());
			
			pstmt.executeUpdate(); // 실행 코드
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	// Product DB 데이터 삭제하는 메서드
	public void delete(int code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "delete from product where code=?";
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, code);
			
			pstmt.executeUpdate(); 
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	// 코드에 해당하는 상품 정보를 조회하는 메서드
	public ProductVO select(int code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from product where code=?";
		ProductVO vo = new ProductVO();
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, code);
			rs = pstmt.executeQuery();
			
			// rs.next()는 저장 결과가 없을 때는 안 됨
			if(rs.next()) {
				vo.setCode(rs.getInt("code"));
				vo.setName(rs.getString("name"));
				vo.setPrice(rs.getInt("price"));
				vo.setPictureurl(rs.getString("pictureurl"));
				vo.setDescription(rs.getString("description"));
			} 
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return vo;
	}
	
	// Product DB 데이터 수정하는 메서드
	public void update(ProductVO vo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "update product set name=?, price=?, pictureurl=?, description=? where code=?";
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getName());
			pstmt.setInt(2, vo.getPrice());
			pstmt.setString(3, vo.getPictureurl());
			pstmt.setString(4, vo.getDescription());
			pstmt.setInt(5, vo.getCode());
			
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
}
