package dbbean;
import javax.servlet.*;
public class CtxListener implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent c) {
		
	}

	public void contextInitialized(ServletContextEvent c) {
		ServletContext ctx=c.getServletContext();
		String param=ctx.getInitParameter("createTables");
		if (param.equals("yes"))
		{
			System.out.println("creating tables...");
			
		String p=ctx.getRealPath("WEB-INF/classes/tables/tables.sql");	
String flv_id_path=ctx.getRealPath("");	
			DBInitializer db=new DBInitializer();
			db.createTables(p);
			AssignFlvId ids=new AssignFlvId();
			ids.assign(flv_id_path);
		}
	}

}
