package com.movie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.movie.vo.MovieVO;

import util.DBManager;

public class MovieDAO {
	
	private MovieDAO() {
	}
	
	private static MovieDAO instance = new MovieDAO();
	
	public static MovieDAO getInstance() {
		return instance;
	}
	
	// 목록 메서드
	public List<MovieVO> listAll() {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from movie";
		List<MovieVO> list = new ArrayList<MovieVO>();
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MovieVO vo = new MovieVO();
				vo.setCode(rs.getInt("code"));
				vo.setTitle(rs.getString("title"));
				vo.setPrice(rs.getInt("price"));
				vo.setDirector(rs.getString("director"));
				vo.setActor(rs.getString("actor"));
				vo.setPoster(rs.getString("poster"));
				vo.setSynopsis(rs.getString("synopsis"));
				list.add(vo);
			} 
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return list;
	}
	
	// 상세 목록 메서드
	public MovieVO detail(int code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from movie where code=";
		MovieVO vo = new MovieVO();
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, code);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setCode(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setPrice(rs.getInt(3));
				vo.setDirector(rs.getString(4));
				vo.setActor(rs.getString(5));
				vo.setPoster(rs.getString(6));
				vo.setSynopsis(rs.getString(7));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return vo;
	}
	
	
}
