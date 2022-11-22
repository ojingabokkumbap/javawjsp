package study.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class JusorokDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	JusorokVO vo = null;
	
	public JusorokDAO() {
		String url = "jdbc:mysql://localhost:3306/javaworks";
		String user = "root";
		String password = "1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password); //변수생성
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 검색 실패~~~");
		} catch (SQLException e) {
			System.out.println("database 연동 실패~~~");
		}
	}
	
	public void pstmtClose() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch(SQLException e ) {}
		}
	}
	
	public void rsClose() {
		if(rs != null) {
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
			}
		}
	}
	
	//로그인 체크처리
	public JusorokVO loginCheck(String mid, String pwd) {
		vo = new JusorokVO(); //vo 데려오기
		try {
			sql = "select * from jusorok where mid =? and pwd =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,mid);
			pstmt.setString(2,pwd);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				//vo 안에 있는 필드 값 모두 넣기(set)
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setPwd(rs.getString("pwd"));
				vo.setName(rs.getString("name")); 
				vo.setLastDate(rs.getString("lastDate"));
				vo.setPoint(rs.getInt("point"));
				
			
			}
		} catch (SQLException e) {
			System.out.println("SQL오류 : " + e.getMessage());
		} finally {
			rsClose();
		}
		return vo;
	}

	public void logout() {
		
	}
	
	//회원 정보 조회
	public JusorokVO getMemberSearch(String mid) {
		vo = new JusorokVO(); //vo 데려오기
		try {
			sql = "select * from jusorok where mid =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,mid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				//vo 안에 있는 필드 값 모두 넣기(set)
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setPwd(rs.getString("pwd"));
				vo.setName(rs.getString("name")); 
				vo.setPoint(rs.getInt("point"));
				vo.setLastDate(rs.getString("lastDate"));
			}
		} catch (SQLException e) {
			System.out.println("SQL오류 : " + e.getMessage());
		} finally {
			rsClose();
		}
		return vo;
	}

	//방문 포인터 증가와 최종 방문 일자 업데이트 작업
	public void setVisitUpdate(int visitPoint, String mid) {
		try {
			sql = "update jusorok set point=?, lastdate=now() where mid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, visitPoint);
			pstmt.setString(2, mid);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("SQL오류 : " + e.getMessage());
		} finally {
			pstmtClose();
		}
	}

	public int setJoinOk(JusorokVO vo) {
		int res = 0; //에러나면 res=0
		try {
			sql = "insert into jusorok (mid, pwd, name) values (?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getPwd());
			pstmt.setString(3, vo.getName());
			pstmt.executeUpdate();
			
			res = 1; //정상 처리되면 res=1
		} catch (SQLException e) {
			System.out.println("SQL오류 : " + e.getMessage());
		} finally {
			pstmtClose();
		}
		return res;
	}
	//전체 회원 조회하기
	public ArrayList<JusorokVO> getMemberList() {
		ArrayList<JusorokVO> vos = new ArrayList<>();
		try {
			sql = "select * from jusorok order by idx";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			//반복문 돌려서 idx 내림차순으로 값 가져오기..
			while(rs.next()) {
				vo = new JusorokVO();
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setPwd(rs.getString("pwd"));
				vo.setName(rs.getString("name"));
				vo.setPoint(rs.getInt("point"));
				vo.setLastDate(rs.getString("lastDate"));
				
				vos.add(vo);
			}
			
		} catch (SQLException e) {
			System.out.println("SQL오류 : " + e.getMessage());
		} finally {
			rsClose();
		}
		return vos;
	}
}
