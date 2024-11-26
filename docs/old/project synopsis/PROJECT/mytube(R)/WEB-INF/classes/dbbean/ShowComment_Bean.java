package dbbean;
import java.sql.*;
import java.util.*;

public class ShowComment_Bean
{
	//String name,date,comment;
	Connection con=null;
	String video;
	ResultSet rs=null;
	public void setVideo(String video)
		{
			this.video=video;
		}

		public String getVideo()
		{
			return video;
		}

	public ResultSet getCommentList()
	{
		System.out.println("start result set");
			try
			{
				con=ConBean.getCon();
				Statement ps=con.createStatement();
				System.out.println("check MyVideo name :"+video);
				rs=ps.executeQuery("select * from upload_Comments where vedio_name='"+video+"'");
			System.out.println("end result set");
			}
			catch(Exception e){}
		return rs;
	}
}