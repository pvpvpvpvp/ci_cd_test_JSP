package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.bit.conan.MembersDTO;

public class MemberDAO {
	private static MemberDAO dao = new MemberDAO();
	private MemberDAO() {}
	public static MemberDAO getInstance() {return dao;}
	
	public Connection getConnection() throws NamingException, SQLException {
		InitialContext ic = new InitialContext();
		DataSource ds =(DataSource) ic.lookup("java:comp/env/jdbc/myoracle");
		Connection conn = ds.getConnection();
		return conn;}
	public void close(Connection conn,PreparedStatement pstmt, ResultSet rs) throws SQLException{conn.close(); pstmt.close(); rs.close();}
	public void close(Connection conn,PreparedStatement pstmt)throws SQLException{conn.close(); pstmt.close();}
	
	public ArrayList<MembersDTO> selectMemberAll() throws SQLException, NamingException{
		Connection conn = getConnection();
		ArrayList<MembersDTO> dtos = new ArrayList<>();
		MembersDTO	dto;
		String selectAll = "SELECT * FROM member";
		PreparedStatement pstmt = conn.prepareStatement(selectAll);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			dto = new MembersDTO();
			dto.setAddress(rs.getString(4));
			dto.setEmail(rs.getString(5));
			dto.setPhone(rs.getString(7));
			dto.setRegDate(rs.getString(6));
			dto.setUserId(rs.getString(2));
			dto.setUserName(rs.getString(8));
			dto.setUserPwd(rs.getString(3));
			dtos.add(dto);
		}
		close(conn,pstmt,rs);
		return dtos;
	}
	
	public MembersDTO selectMember(String userId) throws NamingException, SQLException{
		Connection conn = getConnection();
		MembersDTO	dto = new MembersDTO();
		String selectAll = "SELECT * FROM member WHERE user_id=?";
		PreparedStatement pstmt = conn.prepareStatement(selectAll);
		pstmt.setString(1, userId);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {		
			dto.setAddress(rs.getString(4));
			dto.setEmail(rs.getString(5));
			dto.setPhone(rs.getString(7));
			dto.setRegDate(rs.getString(6));
			dto.setUserId(rs.getString(2));
			dto.setUserName(rs.getString(8));
			dto.setUserPwd(rs.getString(3));
		}
		close(conn,pstmt,rs);
		return dto;
	}

	public int insertMember(MembersDTO dto) throws NamingException, SQLException{
		Connection conn = getConnection();
		String strInsert = "INSERT INTO member(user_id,user_pwd,address,email,phone,user_name)\r\n" +
                " VALUES(?,?,?,?,?,?)";
	    PreparedStatement pstmt = conn.prepareStatement(strInsert);
	    pstmt.setString(1, dto.getUserId());
	    pstmt.setString(2, dto.getUserPwd());
	    pstmt.setString(3, dto.getAddress());
	    pstmt.setString(4, dto.getEmail());
	    pstmt.setString(5, dto.getPhone());
	    pstmt.setString(6, dto.getUserName());
	    int cnt = pstmt.executeUpdate();
	    close(conn,pstmt);
		return cnt;
	}
	
	public int updateMember(MembersDTO dto) throws NamingException, SQLException{
		Connection conn = getConnection();
		String strUpdate = "UPDATE MEMBER SET "+
			    	" user_id =?, user_pwd=?, user_name=?, phone=?,"+
			    	" address=?, email=?"+
			    	" WHERE user_id=?";
		PreparedStatement pstmt = conn.prepareStatement(strUpdate);
		    
	    pstmt.setString(1, dto.getUserId());
	    pstmt.setString(2, dto.getUserPwd());
	    pstmt.setString(3, dto.getAddress());
	    pstmt.setString(4, dto.getEmail());
	    pstmt.setString(5, dto.getPhone());
	    pstmt.setString(6, dto.getUserName());
	    pstmt.setString(7, dto.getUserId());
	    int cnt = pstmt.executeUpdate();
	    close(conn,pstmt);
		return cnt;
	}
	public int deleteMember(String userId) throws NamingException, SQLException{
		Connection conn = getConnection();
		String strDelete = "DELETE FROM member WHERE user_id=?";
		PreparedStatement pstmt = conn.prepareStatement(strDelete);
		pstmt.setString(1, userId);
		int cnt = pstmt.executeUpdate();
		close(conn,pstmt);
		return cnt;
	}
}
