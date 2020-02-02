

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
session. invalidate();
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
        <script>
            function clear()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../login.jsp'",600);
            }
            </script>
    </head>
    <body onload="clear()">
       
    </body>
</html>
