package sec02.ex01;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.jasper.tagplugins.jstl.core.Catch;


public class MemberDAO {

	private DataSource dataFactory;
	private PreparedStatement pstmt;
	private Connection conn;

	public MemberDAO() {
		try {
			System.out.println("MemberDAO 객체 생성");
			Context ctx = new InitialContext();
			Context enContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) enContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			System.out.println("DB 연결을 위한 MemberDAO 객체 생성시 에러");
		}
	}

	public List<MemberBean> listMembers() {
		List<MemberBean> list = new ArrayList<MemberBean>();
		try {
			conn = dataFactory.getConnection();
			String sql = "select * from T_MEMBER";
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery(sql);

			while (rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				System.out.println(id + " " + pwd + " " + name + " " + email + " " + joinDate);

				MemberBean vo = new MemberBean();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate);

				list.add(vo);
			}

			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("SQL 실행시 에러");
		}
		return list;
	}

	public void addMember(MemberBean memberBean) {
		try {
			conn = dataFactory.getConnection();
			String id = memberBean.getId();
			String pwd = memberBean.getPwd();
			String name = memberBean.getName();
			String email = memberBean.getEmail();

			String query = "insert into t_member(id,pwd,name,email) VALUES(?,?,?,?)";
			System.out.println("회원 추가 sql문: " + query);

			pstmt = conn.prepareStatement(query);

			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			System.out.println(id + pwd + name + email);

			pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			System.out.println("회원 추가시 에러");
		}
	}

	public void delMember(String id) {
		System.out.println("삭제하고자 하는 id: " + id);
		try {
			conn = dataFactory.getConnection();
			String query = "delete from t_member" + " where id=?";
			System.out.println("preparedStatement: " + query);

			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);

			pstmt.executeUpdate();
			pstmt.close();

		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
