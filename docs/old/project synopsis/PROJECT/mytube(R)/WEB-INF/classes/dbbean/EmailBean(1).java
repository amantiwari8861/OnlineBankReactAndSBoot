package dbbean;
import java.sql.*;
public class EmailBean
{
boolean flag=false;
Connection con=null;
private String email;

public void setEmail(String email)
{
this.email=email;
}

public String getEmail()
{
return email;
}

public boolean check()
{
try
{

con=ConBean.getCon();
PreparedStatement pst=con.prepareStatement("select * from Account where email=?");
pst.setString(1,email);

ResultSet rs=pst.executeQuery();
if(rs.next())
{

new SendMailExample(getEmail(),rs.getString(2),rs.getString(3));
flag=true;
}
else
{
flag=false;
}
return flag;
}
catch(Exception e)
{
System.out.println(e);
return flag;
}
}
}

