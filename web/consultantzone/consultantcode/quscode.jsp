<%@page import="java.sql.ResultSet"%>
<%@page import="Mypackage.ConnectionManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
   String qtext=request.getParameter("qtext");
   String userid=session.getAttribute("username").toString();
   String username=session.getAttribute("username").toString();
   SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
   java.util.Date d=new java.util.Date();
    String cdate=sdf.format(d);
    ConnectionManager cm=new ConnectionManager();
    ResultSet rs =cm.selectQuery("select nvl (max(id),0)+1 from qus");
            rs.next();
            int id=rs.getInt(1);
            String query="insert into qus values("+id+",'"+qtext+"','"+userid+"','"+username+"','"+cdate+"')";
            cm.executeNonQuery(query);
            response.sendRedirect("../postqus.jsp");
            
   %>