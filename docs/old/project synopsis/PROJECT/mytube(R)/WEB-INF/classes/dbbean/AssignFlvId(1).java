package dbbean;
import java.sql.*;
import java.io.File;
public class AssignFlvId
{
Connection con=null;
PreparedStatement pst=null;
public void assign(String id_path)
{
int id=1;
try
{
File f=new File(id_path+"\\"+"flv-files");
File list[]=f.listFiles();
con=ConBean.getCon();
pst=con.prepareStatement("insert into upload_user_info values(?,?,?,?,?,?,?,?)");
for(int i=0;i<list.length;i++)
{
String name=list[i].getName();
System.out.println(name);
if(name.contains(".flv")||name.contains(".FLV"))
{
int index=name.indexOf('.');
name=name.substring(0,index);
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from upload_user_info");
while(rs.next())
{
id++;
}
pst.setString(1,name+(100+id));
pst.setString(2,name);
pst.setString(3,id_path+"\\"+"uploaded_by_user");
pst.setString(4,id_path+"\\"+"flv-files"+"\\"+name);
pst.setString(5,id_path+"\\"+"thumbnails"+"\\"+name);
pst.setString(6,name);
pst.setString(7,"Entertainment");
pst.setString(8,"public");
pst.addBatch();
}
}
pst.executeBatch();
}
catch(Exception e)
{
System.out.println(e);
}
}

}

