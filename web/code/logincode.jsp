<%@page import="java.sql.ResultSet"%>
<%@page import="Mypackage.ConnectionManager"%>
<%
String userid=request.getParameter("userid");
String passwd=request.getParameter("passwd");
ConnectionManager cm=new ConnectionManager();
String query="select usertype from login where userid='"+userid+"' and passwd='"+passwd+"'";
ResultSet rs =cm.selectQuery(query);
if(rs.next())
{
    String usertype=rs.getString(1);
    if(usertype.equals("student")==true)
    {
        session.setAttribute("username",userid);
        response.sendRedirect("../studentzone/student_home.jsp");
    }
    else if(usertype.equals("consultant")==true)
    {
        session.setAttribute("username",userid);
        response.sendRedirect("../consultantzone/consultant_home.jsp");
    }
    else if(usertype.equals("admin")==true)
            {
                session.setAttribute("adminid",userid);
                response.sendRedirect("../adminzone/admin_home.jsp");
            }
}
else
{
    out.println("<script>alert('Incorrect user ID or password');window.location.href='../login.jsp';</script>");
}
  %>