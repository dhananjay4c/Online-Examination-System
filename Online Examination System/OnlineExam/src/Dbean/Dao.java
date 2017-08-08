package Dbean;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dao {
static Connection con;
public static Connection getCon(){
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
	}catch (Exception e) {
		System.out.println(e);
	}
	return con;
}
}
