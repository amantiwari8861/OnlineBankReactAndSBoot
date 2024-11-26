<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="beans.StudentRecord"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String grade=request.getParameter("grade");
int phy=Integer.parseInt(request.getParameter("phy"));
int chem=Integer.parseInt(request.getParameter("chem"));
int maths=Integer.parseInt(request.getParameter("maths"));
int total=Integer.parseInt(request.getParameter("total"));
Configuration cfg=new Configuration();
cfg.configure();
SessionFactory sf=cfg.buildSessionFactory();
Session session2=sf.openSession();
Transaction tx=session2.beginTransaction();
StudentRecord st=new StudentRecord();
st.setName(name);
st.setEmail(email);
st.setGrade(grade);
st.setPhy(phy);
st.setChem(chem);
st.setMaths(maths);
st.setTotal(total);
session2.save(st);
tx.commit();
session2.close();


%>
<p style="color: green;">Student Record Saved.....</p>
<br>
<a href="index.html">Go to Link </a>