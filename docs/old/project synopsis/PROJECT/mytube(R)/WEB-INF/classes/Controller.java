//package dbbean;
import java.io.IOException;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import dbbean.SearchBean;
public class Controller extends HttpServlet
{
	//StoreObject so;
	static final long serialVersionUID = 1L;
	int offset;
	int length;
	Set arrlist;
	ArrayList list;

	protected void service(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
		ServletContext con=getServletContext();
		HttpSession sess=request.getSession();
		arrlist=(Set)sess.getAttribute("searchedVideo");
		System.out.println("check check : "+arrlist);
		list = new ArrayList(arrlist);


		//so=(StoreObject)con.getAttribute("connect");

		int maxEntriesPerPage = 4;
		int page = 1;

		String pageNumberValue = request.getParameter("pageNumber");

		if (pageNumberValue != null) {
			try {
				page = Integer.parseInt(pageNumberValue);
				System.out.println("Page Number:" + page);
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
		}
		int offset = maxEntriesPerPage * (page - 1);
		TestList(offset, maxEntriesPerPage);

		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("pages", getPages());
		httpSession.setAttribute("empDetails", getListByOffsetAndLength());


		RequestDispatcher dispatcher = request.getRequestDispatcher("checkplaylist1.jsp");
		dispatcher.forward(request, response);
	}

	/*public void fillList()
	{
		//int count=0;
		list = new ArrayList();
		try
		{
			Connection c=so.getConn();
			Statement stm=c.createStatement();
			ResultSet rs=stm.executeQuery("select * from emp");
			while(rs.next())
			{
				list.add(new Bean_pagin(rs.getInt(1),rs.getString(2)));
				//count++;
			}
			//System.out.println("test count:"+count);
		}
		catch(Exception ee){}

	}
*/
	/**
	 * @param offset
	 * @param length
	 */
	public void TestList(int offset, int length) {
		this.offset = offset;
		this.length = length;
	//	fillList();
	}

	/**
	 * @return List
	 */
	public ArrayList getListByOffsetAndLength() {

		ArrayList arrayList = new ArrayList();
		int to = this.offset + this.length;
		if (this.offset > list.size())
			this.offset = list.size();
		if (to > list.size())
			to = list.size();
		for (int i = this.offset; i < to; i++) {
			arrayList.add(list.get(i));
		}
		return arrayList;
	}

	/**
	 * @return List with page numbers
	 */
	public List getPages() {
		List pageNumbers = new ArrayList();
		int pages = list.size() / this.length;
		if (list.size() % this.length != 0) {
			pages = pages + 1;
		}

		for (int i = 1; i <= pages; i++) {
			pageNumbers.add(new Integer(i));
		}
		return pageNumbers;
	}
}