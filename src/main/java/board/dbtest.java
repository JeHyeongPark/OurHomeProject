package board;


import java.sql.*;

public class dbtest {
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection con;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","space","1234");
			System.out.println("디비 접속 성공");
		}  catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("SQLException : 디비 연동에 실패했습니다" );
			e.printStackTrace();
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		
		
		
		

	}

}

