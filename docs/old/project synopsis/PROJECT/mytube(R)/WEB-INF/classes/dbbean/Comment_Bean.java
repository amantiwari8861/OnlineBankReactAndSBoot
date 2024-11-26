package dbbean;
import java.sql.*;
import java.util.*;

public class Comment_Bean
{
	private String comment;
	private String uname;
	private String video,date;
	java.util.Date d;
	Connection con=null;
	ResultSet rs=null;
	boolean b=false;
	public void setComment(String comment)
	{
		this.comment=comment;
	}
	public String getComment()
	{
		return comment;
	}

	public void setUname(String uname)
	{
		this.uname=uname;
	}

	public String getUname()
	{
		return uname;
	}

	public void setVideo(String video)
	{
		this.video=video;
		System.out.println("set Video check from comment bean: "+video);
	}

	public String getVideo()
	{
		return video;
	}

public boolean check_comment()
{

	if(comment!=null)
	{
		d=new java.util.Date();
		int dt=d.getDate();
		int m=d.getMonth();
		int mth=m+1;

		int y=d.getYear();
		int yr=y+1900;
		int h=d.getHours();
		int min=d.getMinutes();
		int se=d.getSeconds();
		date=""+dt+"/"+mth+"/"+yr+"  "+h+":"+min+":"+se;
		//date=d.toString();
	System.out.println("check uname : "+uname);
	System.out.println("check date : "+date);
	System.out.println("check video name :"+getVideo());
	System.out.println("check comment : "+comment);
		try
		{
			con=ConBean.getCon();
			PreparedStatement ps=con.prepareStatement("insert into upload_Comments values(?,?,?,?)");
			ps.setString(1,uname);
			ps.setString(2,date);
			ps.setString(3,getVideo());
			ps.setString(4,comment);
			ps.executeUpdate();
			ps.close();
		}
		catch(Exception e){System.out.println(e);}
		System.out.println("successfull insert video comment");
		return true;
	}
	else
	{
		return b;
	}
}

public ResultSet getCommentList()
	{
			try
			{
				con=ConBean.getCon();
				Statement ps=con.createStatement();
				rs=ps.executeQuery("select * from upload_Comments where vedio_name='"+video+"'");
				System.out.println("MyVideo name :"+video);
			}
			catch(Exception e){}
		return rs;
	}
}