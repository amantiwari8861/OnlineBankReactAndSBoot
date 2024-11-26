package dbbean;
import java.sql.*;
public class UploadDbBean
{
boolean flag=false;
Connection con=null;
private int f_id=100;
public boolean insert_upload_Info(convert.HelperConversion h)
{
int id=1;
try
{
con=ConBean.getCon();
PreparedStatement pst=con.prepareStatement("insert into upload_user_info values(?,?,?,?,?,?,?,?)");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from upload_user_info");
while(rs.next())
{
id++;
}
pst.setString(1,h.fname+(100+id));
pst.setString(2,h.fname);
pst.setString(3,h.path);
pst.setString(4,h.dpath);
pst.setString(5,h.thumbPath);
pst.setString(6,h.title);
pst.setString(7,h.category);
pst.setString(8,h.type);
int i=pst.executeUpdate();
if(i>0)
flag=true;
return flag;
}
catch(Exception e)
{
System.out.println(e);
return flag;
}
}
}

