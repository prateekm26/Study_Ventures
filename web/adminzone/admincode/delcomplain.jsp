<%-- 
    Document   : delcomplain
    Created on : 5 Nov, 2017, 9:07:19 PM
    Author     : Prateek Kumar
--%>

<%-- 
    Document   : delfeedback
    Created on : 5 Nov, 2017, 9:01:24 PM
    Author     : Prateek Kumar
--%>

<%@page import="Mypackage.ConnectionManager"%>
<%
    String id=request.getParameter("id");
    ConnectionManager cm=new ConnectionManager(); 
    String q="delete from complain where id='"+id+"'";
    String msg=(cm.executeNonQuery(q)==true)?"complain is deleted" :"complain is not deleted";
    %>
    <script>
        alert('<%=msg%>');window.location.href="../compmanagement.jsp";
        </script>
