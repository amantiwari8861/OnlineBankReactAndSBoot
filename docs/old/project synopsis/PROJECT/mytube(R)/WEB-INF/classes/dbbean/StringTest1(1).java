package dbbean;
import java.sql.*;
import java.util.*;
public class StringTest1 extends ConBean
{
ArrayList list;
Set hst;
public String search;
StringTokenizer title,stss;

	public StringTest1(String search)
	{
		this.search=search;
	}


  public Set searchVideo()
   {
	list=new ArrayList();
	stss=new StringTokenizer(search);
	try
	{
	Connection c=this.getCon();
  	Statement st=c.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
	ResultSet rs=st.executeQuery("select file_title,file_name from upload_user_info");
	 while(stss.hasMoreTokens())
	  {
		String usr_token=(String)stss.nextToken();

		while(rs.next())
 		{
		  title=new StringTokenizer(rs.getString(1));
		  while(title.hasMoreTokens())
		   {
		     if(usr_token.equalsIgnoreCase(title.nextToken()))
			{
			list.add(rs.getString(2));
			break;
			}
		   }
                 }
		rs.first();

	}

    }
catch(Exception e)
{
System.out.println(e);
}
System.out.println("String Test : kamal   "+list);
return new HashSet(list);
}
}

