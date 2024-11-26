package dbbean;
import java.sql.*;
public class ConBean
{
static Connection con=null;

public static Connection getCon()
{
	if(con==null)
	{
		try

		{



			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","MyTube","MyTube");


/*

                         Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql:///mytube","root","");
			System.out.println("Connection.."+con);
*/


		}

		catch(Exception e)
		{
			System.out.println(e);
		}


	}
		return con;
}

}