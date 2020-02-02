<%
    String id=request.getParameter("id");
    String q="delete from studymaterial where id='"+id+"'";
    String msg=(new Mypackage.ConnectionManager().executeNonQuery(q)==true)?"Record is deleted":"Record is not deleted";
    %>
    <script>
        alert('<%=msg%>');
        window.location.href="../materialupload.jsp";
        </script>