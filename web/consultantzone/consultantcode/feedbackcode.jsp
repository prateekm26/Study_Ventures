<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Mypackage.ConnectionManager"%>
<%
    ResultSet rs=null;
    String name="",emailaddress="";
    long contactno=0;
    String  feedbacktext=request.getParameter("feedbacktext");
    ConnectionManager cm=new ConnectionManager();
    rs=cm.selectQuery("select nvl(max(id),0)+1 from feedback");
    rs.next();
    int id=rs.getInt(1);
    String username=session.getAttribute("username").toString();
    String query="select consultant_name,contactno,emailaddress from consultant_registration where username='"+username+"'";
    rs=cm.selectQuery(query);
    if(rs.next())
    {
    name=rs.getString(1);
    contactno=rs.getLong(2);
    emailaddress=rs.getString(3);
    
    }
    SimpleDateFormat df=new SimpleDateFormat();
    String feedbackdt=df.format(new Date());
    query="insert into feedback values("+id+",'"+name+"',"+contactno+",'"+emailaddress+"','"+feedbacktext+"','"+feedbackdt+"')";
    if(cm.executeNonQuery(query))
    {
    out.print("<script>alert ('Your feedback is submitted successfully');window.location.href='../feedback.jsp'</script>");
    }
    else
    {
        out.print("<script>alert ('Database Err');window.location.href='../feedback.jsp'</script>");
    }
    
    
    %>