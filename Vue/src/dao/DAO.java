package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;


public class DAO {
	private DataSource ds;	
    public DAO() {
    	try {
			Context init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		} catch (Exception ex) {
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
    }
    @SuppressWarnings("unchecked")
	public JSONArray getList() {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		JSONArray array = new JSONArray();
		try {
			con = ds.getConnection();

			String sql = "select * from emp";
			pstmt = con.prepareStatement(sql);
			rs =  pstmt.executeQuery();	
			
			while(rs.next()){
				HashMap<String,Object> map = new HashMap<String,Object>();	
				map.put("empno",rs.getInt("empno"));
				map.put("ename",rs.getString("ename"));
				map.put("comm",rs.getInt("comm"));
				map.put("hiredate",rs.getString("hiredate"));
				map.put("deptno",rs.getInt("deptno"));
				map.put("mgr",rs.getString("mgr"));
				map.put("sal",rs.getString("sal"));
				JSONObject obj = new JSONObject(map);
				array.add(obj);
		}
		}catch (SQLException ex) {
				ex.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
    		if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
		}
		return array;
	}
	
	@SuppressWarnings("unchecked")
	public JSONArray getMemberList() {
		System.out.println("getMemberList()");
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		JSONArray array = new JSONArray();
		try {
			con = ds.getConnection();

			String sql = "select * from db_member";
			pstmt = con.prepareStatement(sql);
			rs =  pstmt.executeQuery();	
			
			while(rs.next()){
				HashMap<String,String> map = new HashMap<String,String>();				
				map.put("email",rs.getString("email"));
				map.put("id",rs.getString("id"));
				map.put("pass",rs.getString("pass"));
				map.put("gender",rs.getString("gender"));
				JSONObject obj = new JSONObject(map);
				array.add(obj);
		}
		}catch (SQLException ex) {
				ex.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
    		if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
		}
		return array;
	}
	public int insert(Map<String, String> map) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int result =0;
		try {
			con = ds.getConnection();

			String sql = "insert into db_member values(?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, map.get("email"));
			pstmt.setString(2, map.get("id"));
			pstmt.setString(3, map.get("pass"));
			pstmt.setString(4, map.get("gender"));
			result=pstmt.executeUpdate();	
		}catch (SQLException ex) {
				ex.printStackTrace();
		} finally {
    		if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
		}
		return result;
	}

}
