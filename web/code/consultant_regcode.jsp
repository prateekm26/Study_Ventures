<%-- 
    Document   : consultant_regcode
    Created on : 2 Nov, 2017, 5:17:24 PM
    Author     : Prateek Kumar
--%>

<%@page import="Mypackage.SmsSender"%>
<%@page import="Mypackage.ConnectionManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
    String capcode=request.getParameter("capcode");
    String captchacode=request.getParameter("captchacode");
    if(capcode.equals (captchacode))
    {
   String consultant_name= request.getParameter("consultant_name");
   String gender= request.getParameter("gender");
  String address=  request.getParameter("address");

   String qualification= request.getParameter("qualification");
   
      
      String contactno=request.getParameter("contactno");
   // long contactno=Long.parseLong(request.getParameter("contactno"));
   String emailaddress= request.getParameter("emailaddress");
   String username= request.getParameter("username");
    String passwd=request.getParameter("passwd");
    SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
    String registration_dt=df.format(new Date());
    String usertype="consultant";
    String status="no";
     ConnectionManager cm=new ConnectionManager(); 
String query1="insert into consultant_registration values('"+consultant_name+"','"+gender+"','"+address+"','"+qualification+"',"+contactno+",'"+emailaddress+"','"+username+"','"+passwd+"','"+registration_dt+"')";
String query2="insert into login values('"+username+"','"+passwd+"','"+usertype+"','"+status+"')";

if (cm.executeNonQuery(query1)==true)
{
if(cm.executeNonQuery(query2)==true)
{
    SmsSender sms=new SmsSender();
               sms.SendSms(contactno, "Hello! "+consultant_name+"\n You have successfully registerd to study ventures.");
out.print("<script>alert('Registration Successfull');window.location.href='../consultant_reg.jsp'</script>");
}
else
{
out.print("<script>alert('Registration is done but login details are not saved');window.location.href='../consultant_reg.jsp'</script>");
}
}
else
{
out.print("<script>alert('Database Error');window.location.href='../consultant_reg.jsp'</script>");
}
}
else
{
 out.print("<script>alert('Invalid captcha code');window.location.href='../consultant_reg.jsp'</script>");
 
}

%>
