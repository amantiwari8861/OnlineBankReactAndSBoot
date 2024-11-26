package dbbean;
import java.sql.*;
import java.util.*;
//import dbbean.SearchBean1;
public class SearchBean
{
	boolean flag=false;
	private String search;
	private Set searched_video;

	public void setSearch(String search)
	{
		this.search=search;
	}

	public String getSearch()
	{

		return search;
	}

	public Set getSearchedVideoList()
	{
		return searched_video;
	}
	public boolean check()
	{
		StringTest1 stest=new StringTest1(getSearch());
		searched_video=stest.searchVideo();

		if(searched_video.size()==0)
		{
			flag=false;
		}
		else
		{
			flag=true;
		}

	return flag;
	}

}


