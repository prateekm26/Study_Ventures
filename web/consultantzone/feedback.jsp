<%-- 
    Document   : complain
    Created on : 5 Nov, 2017, 12:28:35 AM
    Author     : Prateek Kumar
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="Mypackage.ConnectionManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>student_home</title>
        <link href="css/consultant_style.css" rel="stylesheet">
        <link href="css/consultant_menu.css" rel="stylesheet">
    </head>
    <body style="background-image: url('../images/wall4.jpg'); background-repeat: no-repeat;
               background-size: cover;">
        <form action="consultantcode/feedbackcode.jsp">
            <%
                if(session.getAttribute("username")=="" ||session.getAttribute("username")==null)
                {
                    response.sendRedirect("../login.jsp");
                }
                else
                {
                %>
        <div id="wrapper">
            <div id="header">
                <div id="logo">
                    <div id="circle1"><h4>STUDY VENTURES</h4></div>
                   
                </div>
                <div id="title">
                    Study Venture
                </div>
            </div>
            <div id="contain1">
                <div id="date">
                 Current Date:
                    <%
                        SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
                        String dt=df.format(new Date());
                        out.print(dt);
                        %>
                </div>
                <div id="name">
                     Hello,
                    <%
                    String username=session.getAttribute("username").toString();
                    ConnectionManager cm=new ConnectionManager();
                    String query="select consultant_name from consultant_registration where username='"+username+"'";
                            ResultSet rs=cm.selectQuery(query);
                            if (rs.next()==true)
                            {
                                out.print(rs.getString(1));
                            }
                    %>
                </div>
            </div>
                <div id="menu">
                    <ul>
                        <li><a href="consultant_home.jsp">HOME</a></li>
                       <li><a href="postqus.jsp">DASH BOARD</a></li>
                       <li><a href="review.jsp">REVIEW</a></li>
                       <li><a href="feedback.jsp">FEEDBACK</a></li>
                       <li><a href="complain.jsp">COMPLAIN</a></li>
                       <li><a href="changepassword.jsp">CHANGE PASSWORD</a></li>
                       <li><a href="logout.jsp">LOGOUT</a></li>
                    </ul>
                 </div>
                <div id="main"style="background-image: url('images/wll.jpg'); background-repeat: no-repeat;
                    background-size: cover;"> <br/>
                    <h2 style="color: whitesmoke; text-align: center">FEEDBACK FORM</h2><hr/>
                   <table align="center">
                        <tr>
                            <td> Enter your Feedback:</td>
                            <td><textarea name="feedbacktext"></textarea></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td><td><input type="submit" value="Submit"/></td></tr>
                            </table>
                </div>
                    
            <div id="footer">
                <div id="lfooter"> Copyright &copy; to Study Venture</div>
                <div id="rfooter">Developed by: Prateek Kumar</div>
            </div>
        </div>
        </form>
       
                        
             
    </body>
</html>


<%

                        }
%>
