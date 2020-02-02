<%-- 
    Document   : usermanagementcode
    Created on : 5 Nov, 2017, 8:48:59 PM
    Author     : Prateek Kumar
--%>

<%@page import="Mypackage.ConnectionManager"%>
<%
    String username=request.getParameter("username");
    ConnectionManager cm=new ConnectionManager(); 
    String q="delete from student_registration where username='"+username+"'";
    String p="delete from consultant_registration where username='"+username+"'";
    String msg=(cm.executeNonQuery(q)==true)?"User is deleted" :"User is not deleted";
    String msg2=(cm.executeNonQuery(p)==true)?"User is deleted" :"User is not deleted";
    %>
    <script>
        alert('<%=msg%>');window.location.href="../usermanagement.jsp";
        alert('<%=msg2%>');window.location.href="../consultant_mgmt.jsp";
        </script>