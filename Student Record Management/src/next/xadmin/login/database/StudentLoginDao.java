package next.xadmin.login.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import next.xadmin.login.bean.LoginBean;

public class StudentLoginDao {
	public boolean validate(LoginBean sloginBean) {
		boolean status = false;
		try {
			Connection con =Project.ConnectionProvider.getCon();
			String sql = "select * from student where rollno = ? and pass = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, sloginBean.getUsername());
			ps.setString(2, sloginBean.getPassword());
			System.out.println(sloginBean.getUsername());
			System.out.println(sloginBean.getPassword());
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			System.out.println(status);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return status;
		
	}
}
