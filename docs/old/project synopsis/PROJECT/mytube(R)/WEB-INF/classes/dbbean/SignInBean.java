package dbbean;
import java.sql.*;
public class SignInBean
{
boolean flag=false;
Connection con=null;
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
public String getName()
{
return name;
}

public boolean check()
{
try
{
con=ConBean.getCon();
PreparedStatement pst=con.prepareStatement("select * from Account where uname=? and upass=?");
pst.setString(1,name);
pst.setString(2,pass);
ResultSet rs=pst.executeQuery();
if(rs.next())
flag=true;
else
flag=false;
return flag;
}
catch(Exception e)
{
System.out.println(e);
return flag;
}
}
}

