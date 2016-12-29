package utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBOpen {

	public static final Connection open() {
		Connection con=null;
		try {
			Class.forName(Constant.driver);
		try {
			 con=DriverManager.getConnection(Constant.url,Constant.user,Constant.password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		
		return con;
	}

}
