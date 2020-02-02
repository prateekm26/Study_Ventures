<%-- 
    Document   : delreview
    Created on : 5 Nov, 2017, 10:53:28 PM
    Author     : Prateek Kumar
--%>

<%@page import="Mypackage.ConnectionManager"%>
<%
String id=request.getParameter("id");
ConnectionManager cm=new ConnectionManager();
String q="delete from review where id='"+id+"'";
String msg=(cm.executeNonQuery(q)==true)?"Review is deleted":"Review is not deleted";

%>
<script>
    alert('<%=msg%>');
    window.location.href="../revmanagement.jsp";
    </script>
