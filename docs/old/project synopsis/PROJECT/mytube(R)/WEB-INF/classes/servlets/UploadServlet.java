package servlets;
import convert.*;
import dbbean.*;
import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*; 
import com.oreilly.servlet.*; 
public class UploadServlet extends HttpServlet
{
public void service(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
{
response.setContentType("text/html");
PrintWriter out=response.getWriter();
ServletContext ctx=this.getServletContext();
String path=ctx.getRealPath("uploaded_by_user");
String dpath=ctx.getRealPath("flv-files");
String thumbPath=ctx.getRealPath("thumbnails");
System.out.println("inpath="+path);
System.out.println("dpath="+dpath);
System.out.println("thumbPath="+thumbPath);
MultipartRequest mpr=new MultipartRequest(request,path,2000*1024*1024);
String fname=mpr.getOriginalFileName("file");
out.println("<body bgcolor=green/>");
HelperConversion helper=new HelperConversion();
helper.title=mpr.getParameter("title");
helper.category=mpr.getParameter("category");
helper.type=mpr.getParameter("type");
helper.fname=fname;
helper.path=path;
helper.dpath=dpath;
helper.thumbPath=thumbPath;
UploadDbBean udb=new UploadDbBean();
if(helper.getInputInfo() && udb.insert_upload_Info(helper))
response.sendRedirect("upload.jsp?msg=success&fileName="+fname);
else
response.sendRedirect("upload.jsp?msg=fail");
out.close();
}
}

