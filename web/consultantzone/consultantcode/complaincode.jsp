<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Mypackage.ConnectionManager"%>
<%
    ResultSet rs=null;
    String name="",emailaddress="";
    long contactno=0;
    String  complaintext=request.getParameter("complaintext");
    ConnectionManager cm=new ConnectionManager();
    rs=cm.selectQuery("select nvl(max(id),0)+1 from complain");
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
    String complaindt=df.format(new Date());
    query="insert into complain values("+id+",'"+name+"',"+contactno+",'"+emailaddress+"','"+complaintext+"','"+complaindt+"')";
    if(cm.executeNonQuery(query))
    {
    out.print("<script>alert ('Your complain is submitted successfully');window.location.href='../complain.jsp'</script>");
    }
    else
    {
        out.print("<script>alert ('Database Err');window.location.href='../complain.jsp'</script>");
    }
    
    
    %>