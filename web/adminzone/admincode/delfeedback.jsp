<%-- 
    Document   : delfeedback
    Created on : 5 Nov, 2017, 9:01:24 PM
    Author     : Prateek Kumar
--%>

<%@page import="Mypackage.ConnectionManager"%>
<%
    String id=request.getParameter("id");
    ConnectionManager cm=new ConnectionManager(); 
    String q="delete from feedback where id='"+id+"'";
    String msg=(cm.executeNonQuery(q)==true)?"Feedback is deleted" :"Feedback is not deleted";
    %>
    <script>
        alert('<%=msg%>');window.location.href="../feedbackmanagement.jsp";
        </script>
