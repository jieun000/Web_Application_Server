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
	
	// product DB목록 보기
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
	}
