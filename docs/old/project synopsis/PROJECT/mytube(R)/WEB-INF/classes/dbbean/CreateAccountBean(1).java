package dbbean;
import java.sql.*;
public class CreateAccountBean
{
boolean flag=false;
Connection con;
private String email;
private String name;
private String pass1;
private String pass2;
private String birthday_mon;
private String birthday_day;
private String birthday_yr;
private String gender;

public void setEmail(String email)
{
this.email=email;
} 

public void setName(String name)
{
this.name=name;
} 
public void setPass1(String pass1)
{
this.pass1=pass1;
} 
public void setPass2(String pass2)
{
this.pass2=pass2;
}
 
public void setBirthday_mon(String birthday_mon)
{
this.birthday_mon=birthday_mon;
} 
public void setBirthday_day(String birthday_day)
{
this.birthday_day=birthday_day;
} 
public void setBirthday_yr(String birthday_yr)
{
this.birthday_yr=birthday_yr;
} 
public void setGender(String gender)
{
this.gender=gender;
} 

public boolean insert()
{
try
{
con=ConBean.getCon();

PreparedStatement pstmt1=con.prepareStatement("select email,uname from Account where email=? or uname=?");
pstmt1.setString(1,email);
pstmt1.setString(2,name);

ResultSet rs=pstmt1.executeQuery();
if(rs.next())
{
return flag;
}
else
{
PreparedStatement pstmt=con.prepareStatement("insert into Account values(?,?,?,?,?,?)");

pstmt.setString(1,email);
pstmt.setString(2,name);
pstmt.setString(3,pass1);
pstmt.setString(4,pass2);
pstmt.setString(5,birthday_mon+"/"+birthday_day+"/"+birthday_yr);
pstmt.setString(6,gender);

int i=pstmt.executeUpdate();
if(i==1)
flag=true;
return flag;
}
}
catch(Exception e)
{
System.out.println(e);
return false;
}
}
}

