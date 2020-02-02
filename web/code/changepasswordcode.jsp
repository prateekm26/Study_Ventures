
<%@page import="Mypackage.ConnectionManager"%>
<%
   String oldpassword=request.getParameter("oldpassword");
   String newpassword=request.getParameter("newpassword");
   String confirmpassword=request.getParameter("confirmpassword");
   if (newpassword.equals(confirmpassword))
   {
    String userid=session.getAttribute("username").toString();
    String query1="update login set passwd='"+newpassword+"' where userid='"+userid+"' and passwd='"+oldpassword+"'";
     String query2="update student_registration set passwd='"+newpassword+"' where username='"+userid+"' and passwd='"+oldpassword+"'";
     ConnectionManager cm=new ConnectionManager();
     if(cm.executeNonQuery(query1))
     {
     if (cm.executeNonQuery(query2))   
     {
         out.print("<script>alert('Password updated');window.location.href='../studentzone/student_home.jsp';</script>");
     }
     else
        {
         out.print("<script>alert('Password is not updated in registration');window.location.href='../studentzone/changepassword.jsp';</script>");
     } 
   }
   else
     
         {
         out.print("<script>alert('Data Base Errr');window.location.href='../changepassword.jsp';</script>");
     } 
   }
     else
   {
       out.print("<script>alert('Password is not matched');window.location.href='../studentzone/changepassword.jsp';</script>");
   }
    %>