<%-- 
    Document   : usermanagement
    Created on : 5 Nov, 2017, 8:44:15 PM
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
        <title>user home</title>
        <link href="css/admin_style.css" rel="stylesheet">
        <link href="css/admin_menu.css" rel="stylesheet">
    </head>
    <body >
        
             <form>
            <%
                if(session.getAttribute("adminid")=="" ||session.getAttribute("adminid")==null)
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
           
                <div id="menu">
                <ul>
                        <li title="Home Page"><a href="admin_home.jsp">HOME</a></li>
                       <li title="user management"><a href="#">USER MANAGEMENT</a>
                           <ul>
                               <li> <a href="usermanagement.jsp">STUDENT </a></li>
                               <li><a href="consultant_mgmt.jsp">CONSULTANT </a></li>
                       </ul>
                       </li>
                        
                      <li><a href="#">RESPONSE</a>
                           
                       <ul>
                           <li title="Enquiry Management"><a href="enqmanagement.jsp">ENQUIRY</a></li>
                          <li title="Feedback Management"><a href="feedbackmanagement.jsp">FEEDBACK</a></li>
                           <li title="Complain Management"><a href="compmanagement.jsp">COMPLAIN</a></li>
                           <li title="Review Management"><a href="revmanagement.jsp">REVIEW</a></li>
                       </ul>
                       </li>
                       <li><a href="#">SETTING</a>
                       <ul>
                           <li><a href="adminpasswd.jsp">CHANGE PASSWORD</a></li>
                           <li><a href="logout.jsp">LOGOUT</a></li>
                       </ul>
                       </li>
                       <li title="upload study material"><a href="materialupload.jsp">UPLOAD</a></li>
                       
                       
                </ul></div>
                <div id="main"style="//background-image: url('images/wll.jpg'); background-repeat: no-repeat;
                    background-size: cover;"><br/>
                         <center>
                    <h2 style="color:whitesmoke;">USER MANAGEMENT</h2>
                    <br/><br/><br/>
                    <table border="1px"cellspacing="0px" cellpadding="0px" align="center" bgcolor="lightblue">
                        <tr>
                            <th>S.NO.</th>
                            <th>STUDENT NAME</th>
                            <th>GENDER</th>
                            <th>ADDRESS</th>
                            <th>COLLEGE NAME</th>
                            <th>QUALIFICATION</th>
                           
                            <th>CONTACT NO.</th>
                            <th>EMAIL ADDRESS</th>
                        
                            <th>REGISTRATION DATE</th>
                            <th>DELETE</th>
                        </tr>
                <%
                int n=1;
                ConnectionManager cm=new ConnectionManager();
                String q="select * from student_registration";
                
                ResultSet rs=cm.selectQuery(q);
                
                while(rs.next())
                {
                %>
                                
              
                
             <tr>
                 <td><%=n%> </td>
                  <td><%=rs.getString(1)%> </td>
                 <td><%=rs.getString(2)%> </td>
                 <td><%=rs.getString(3)%> </td>
                 <td><%=rs.getString(4)%> </td>
                 <td><%=rs.getString(5)%> </td>
                  <td><%=rs.getString(7)%> </td>
                 <td><%=rs.getString(8)%> </td>     
                  <td><%=rs.getString(12)%> </td>
                 <td><a href="admincode/usermanagementcode.jsp?username=<%=rs.getString(10)%>">delete</a></td>
                        </tr>
                 <%
                 n++;
                }
                 %>                               
                    </table>
                    
                </center>
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