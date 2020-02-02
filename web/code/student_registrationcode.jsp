<%@page import="Mypackage.SmsSender"%>
<%@page import="Mypackage.ConnectionManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
    String capcode=request.getParameter("capcode");
    String captchacode=request.getParameter("captchacode");
    if(capcode.equals (captchacode))
    {
   String student_name= request.getParameter("student_name");
   String gender= request.getParameter("gender");
  String address=  request.getParameter("address");

   String qualification= request.getParameter("qualification");
   String training_type= request.getParameter("training_type");
      String college_name= request.getParameter("college_name");
      String contactno=request.getParameter("contactno");
   // long contactno=Long.parseLong(request.getParameter("contactno"));
   String emailaddress= request.getParameter("emailaddress");
    long guardian_contactno=Long.parseLong(request.getParameter("guardian_contactno"));
   String username= request.getParameter("username");
    String passwd=request.getParameter("passwd");
    SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
    String registration_dt=df.format(new Date());
    String usertype="student";
    String status="no";
     ConnectionManager cm=new ConnectionManager(); 
String query1="insert into student_registration values('"+student_name+"','"+gender+"','"+address+"','"+college_name+"','"+qualification+"','"+training_type+"',"+contactno+",'"+emailaddress+"',"+guardian_contactno+",'"+username+"','"+passwd+"','"+registration_dt+"')";
String query2="insert into login values('"+username+"','"+passwd+"','"+usertype+"','"+status+"')";

if (cm.executeNonQuery(query1)==true)
{
if(cm.executeNonQuery(query2)==true)
{
    SmsSender sms=new SmsSender();
               sms.SendSms(contactno, "Hello! "+student_name+"\n Your registration is successfull for study venture. Your User ID is "+username+"and Pwd is"+passwd+"");
out.print("<script>alert('Registration Successfull');window.location.href='../student_reg.jsp'</script>");
}
else
{
out.print("<script>alert('Registration is done but login details are not saved');window.location.href='../student_reg.jsp'</script>");
}
}
else
{
out.print("<script>alert('Database Error');window.location.href='../student_reg.jsp'</script>");
}
}
else
{
 out.print("<script>alert('Invalid captcha code');window.location.href='../student_reg.jsp'</script>");
 
}

%>