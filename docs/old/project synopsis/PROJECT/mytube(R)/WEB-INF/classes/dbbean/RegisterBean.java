package dbbean;
import java.sql.*;
public class RegisterBean
{
boolean flag=false;
Connection con;
private String name;
private String pass;

public void setName(String name)
{
this.name=name;
} 
public void setPass(String pass)
{
this.pass=pass;
} 

public boolean insert()
{
try
{
con=ConBean.getCon();
PreparedStatement pstmt=con.prepareStatement("insert into login_tube values(?,?)");
pstmt.setString(1,name);
pstmt.setString(2,pass);
int i=pstmt.executeUpdate();
if(i==1)
flag=true;
return flag;
}
catch(Exception e)
{
System.out.println(e);
return false;
}
}
}

