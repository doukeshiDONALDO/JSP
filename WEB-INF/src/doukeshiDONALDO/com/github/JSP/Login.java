package doukeshiDONALDO.com.github.JSP;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Login implements Serializable{
	public Login(){}

	public int insertInfo(){
		int result = 0;
		Connection db = null;
		PreparedStatement ps = null;
		try{
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/test");
			db = ds.getConnection();
			ps = db.prepareStatement("insert into account(id,uname,password) values(6,'a','b')");
			result = ps.executeUpdate();
			ps.close();
			db.close();
		}catch (NamingException e){
			e.printStackTrace();
		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			try{
				if(ps != null) ps.close();
				if(db != null) db.close();
			}catch (SQLException e){
				e.printStackTrace();
			}
		}
	return result;
	}
}