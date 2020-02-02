<%-- 
    Document   : postqus
    Created on : 5 Nov, 2017, 2:05:26 AM
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
        <link href="css/student_style.css" rel="stylesheet">
        <link href="css/student_menu.css" rel="stylesheet">
    </head>
    <body style="background-image: url('images/wall4.jpg'); background-repeat: no-repeat;
               background-size: cover;">
        <form action="../code/quscode.jsp">
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
                    String query="select student_name from student_registration where username='"+username+"'";
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
                        <li><a href="student_home.jsp">HOME</a></li>
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
                    <center>
                    <h2 style="color: blue; text-align: center;">Post Query</h2><hr/>
                    <table align="center">
                        <tr>
                            <th>Enter question</th>
                            <td><textarea name="qtext"></textarea></td>
                        </tr>
                        <tr><td>&nbsp</td><td><input type="submit" value="Post Query"></td></tr>
                    </table>
                    <br/><br/>
                    <table border="1px"cellspacing="0px" cellpadding="10px" align="center" bgcolor="lightblue">
                        <tr>
                            <th>S.No.</th>
                            <th>Comments</th>
                           
                            <th>User Name</th>
                            <th>Post Date</th>
                            <th>Reply</th>
                            <th>Show</th>
                        </tr>
                        <%
                            int n=1;
                            String q="select  * from qus order by id desc";   
                         ResultSet qrs=cm.selectQuery(q);
                            while(qrs.next())
                            {
                                    %>
                                    <tr>
                                        <td><%=n%></td>
                                        <td><%=qrs.getString("qtext")%></td>
                                        
                                        <td><%=qrs.getString("username")%></td>
                                        <td><%=qrs.getString("cdate")%></td>
                                        <td><a href="postans.jsp?id=<%=qrs.getInt("id")%>">Reply</a></td>
                                        <td><a href="showans.jsp">Show</a></td>
                                    </tr>
                                    <%
                            
                                    n++;
                            
                            }
                                    %>
                    </table></center>         </center>    

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
