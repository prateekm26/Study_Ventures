<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Mypackage.ConnectionManager"%>
<%
    int rating=Integer.parseInt(request.getParameter("rating"));
    String reviewtext=request.getParameter("reviewtext");
    String query="select nvl(max(id),0)+1 from review";
    ConnectionManager cm=new ConnectionManager();
    ResultSet rs =cm.selectQuery(query);
     rs.next();
   
        int id=rs.getInt(1);
       String postedby= session.getAttribute("username").toString();
       SimpleDateFormat df=new SimpleDateFormat();
    String posteddt=df.format(new Date());
    query="insert into review values("+id+",'"+postedby+"','"+reviewtext+"',"+rating+",'"+posteddt+"')";
    if(cm.executeNonQuery(query)==true)
    {
        out.print("<script>alert('Your Review is posted');window.location.href='../studentzone/review.jsp'</script>");
    }
      else
    {
        out.print("<script>alert('Database error');window.location.href='../studentzone/review.jsp'</script>");
    }
    
    %>