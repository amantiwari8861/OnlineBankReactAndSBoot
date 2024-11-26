<%@page import="beans.StudentRecord"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%
int roll_no=Integer.parseInt(request.getParameter("rollno"));
Configuration cfg=new Configuration();
cfg.configure();
SessionFactory sf=cfg.buildSessionFactory();
Session session2=sf.openSession();
StudentRecord st=(StudentRecord)session2.get(StudentRecord.class, roll_no);
if(st==null)
{
out.print("invalid email.....");	
}
int total=st.getPhy()+st.getChem()+st.getMaths();
%>
<h2>Your Record:</h2>
<table>
  <tr>
    <th>Name</th>
    <th>Email</th>
    <th>Physics</th>
    <th>Chemistry</th>
    <th>Total</th>
    <th>Marks</th>
  </tr>
  <tr>
    <td><input type="text" value="<%=st.getName()%>"></td>
    <td><input type="text" value="<%=st.getEmail()%>"></td>
    <td><input type="text" value="<%=st.getPhy()%>"></td>
    <td><input type="text" value="<%=st.getMaths()%>"></td>
    <td><input type="text" value="<%=st.getChem()%>"></td>
    <td><input type="text" value="<%=total%>"></td>
    <td><input type="text" value="<%=st.getGrade()%>"></td>
  </tr>
</table>


