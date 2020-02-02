
<%@page import="Mypackage.ConnectionManager"%>
<%
   String oldpassword=request.getParameter("oldpassword");
   String newpassword=request.getParameter("newpassword");
   String confirmpassword=request.getParameter("confirmpassword");
   if (newpassword.equals(confirmpassword))
   {
    String adminid=session.getAttribute("adminid").toString();
    String query1="update login set passwd='"+newpassword+"' where userid='"+adminid+"' and passwd='"+oldpassword+"'";
    // String query2="update student_registration set passwd='"+newpassword+"' where username='"+adminid+"' and passwd='"+oldpassword+"'";
     ConnectionManager cm=new ConnectionManager();
     if(cm.executeNonQuery(query1))
     {
    
         out.print("<script>alert('Password updated ');window.location.href='../admin_home.jsp';</script>");
     } 
   
   else
     
         {
         out.print("<script>alert('Data Base Errr');window.location.href='../adminpasswd.jsp';</script>");
     } 
   }
     else
   {
       out.print("<script>alert('Password is not matched');window.location.href='../adminpasswd.jsp';</script>");
   }
    %>