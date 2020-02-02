<%-- 
    Document   : teacher_reg
    Created on : 2 Nov, 2017, 4:52:34 PM
    Author     : Prateek Kumar
--%>

<%@page import="Mypackage.CaptchaGenerator"%>
<html>
    <head>
        <title>Study Ventures</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/generalstyle.css" rel="stylesheet"/>
                <link href="css/generalmenu.css" rel="stylesheet"/>
<script>
            var i=0;
            var imglist=["slider1.jpg","slider2.jpg","slider3.jpg","slider4.jpg","slider5.jpg","slider6.jpg","slider7.jpg"];

function moveSlider()
{

var imgslide=document.getElementById("slide");
imgslide.src="images/"+imglist[i];
//imgslide.style.backgroundSize="cover";
i++;
if(i===imglist.length)
{
i=0;
}
window.setTimeout("moveSlider()",2000);

}
function phonenumber()
{
var n=document.getElementById("phoneno");

var tv=n.value;

if(/^\d{10}$/.test(tv))
{
//value is ok
}
else
{
alert("Enter valid mobile number");
return false;
}
}
            </script>
    </head>
    <body onload="moveSlider()">
        <form action="code/consultant_regcode.jsp" method="post">
        <div id="outer">
            <div id="banner">
                <div id="logo">
                    <div id="circle1"><div id="circle2"><h4>STUDY VENTURES</h4></div>
                    </div>
                </div>
                
               <div id="name"> <h1>STUDY VENTURES</h2></div>
                <div id="menu">
                <ul>
	    <li><a href="index.jsp">HOME</a></li>
	    <li><a href="aboutus.jsp">ABOUT US</a></li>
            <li><a href="#">REGISTRATION</a>
            <ul>
                <li><a href="student_reg.jsp">STUDENT</a>
            </li>
            <li> <a href="consultant_reg.jsp">TEACHER</a></li>
           </ul>
                </li>
	    
	    <li><a href="login.jsp">LOGIN</a></li>
                     <li><a href="Enquiry.jsp">ENQUIRY</a></li>
                     <li><a href="contactus.jsp">CONTACT US</a></li>
            
	</ul>
                    </div>
            </div>
            <div id="slider">
                <img id="slide"  width="800px" height="200px"/>
            </div>
            <div id="main">
                
                  <br/>
                    <h2 style ="text-align: center; color: whitesmoke; background-color: #00cc66;font-size: 30px;">CONSULTANT REGISTRATION FORM</h2>
               
                        <table align="center" cellspacing="3px" cellpadding="3px" >
                            <tr><th>CONSULTANT NAME </th><th><input type="text" name="consultant_name"/></th></tr>
                            <tr><th>GENDER </th><td><input type="radio" name="gender" value="male"/>MALE
                                <input type="radio" name="gender" value="female"/>FEMALE</td></tr>
                            <tr><th>ADDRESS</th><td><textarea name="address"></textarea></td></tr>
                           
                            
                             <tr><th>QUALIFICATION</th>
                             <td><select name="qualification">
                                     <option>--select--</option>
                                     <option>B.Tech(CS/IT)</option>
                                     <option>M.Tech</option>
                                      <option>B.C.A</option>
                                      <option>M.C.A</option>
                                       <option>Diploma in CS/IT</option>
                                       <option>B.Sc(CS/IT)</option>
                                       
                            
                             <tr><th>CONTACT</th><td><input id="phoneno" onblur="phonenumber()" type="number" name="contactno"/></td></tr>
                            <tr><th>E-MAIL </th><td><input type="email" name="emailaddress"/></td></tr>
                            
                              <tr><th>USER NAME </th><td><input type="text" name="username"/></td></tr>
                              <tr><th>PASSWORD </th><td><input type="password" name="passwd"/></td></tr>
                                <tr><th>CAPTCHA</th><td>
                                    <%
                                    CaptchaGenerator c=new CaptchaGenerator();
                                    String capecode=c.CaptchaCode();      
                                    %>
<h3><strike><%=capecode%></strike></h3>
<input type="hidden" name="capcode" value="<%=capecode%>"/>
</td></tr>
                              <tr><th>ENTER CAPTCHA CODE<td><input type="captcha" name="captchacode"/></th></tr>
                               <tr><td>&nbsp</td><th><input style="height:30px; width:150px; background-color:#00cc66; color:white; "type="submit"value="Submit"></th>
                        </table>
                
                </div>
            
            <div id="footer">
                <div class="subfooter">
	  <h3 align="center" style="color:lightgrey;">Image Gallery</h3>
	 <center><a href="images/slider1.jpg"><img src="images/slider1.jpg" height="50px" width="50px"/></a>
	 <a href="images/slider2.jpg"><img src="images/slider2.jpg" height="50px" width="50px"/></a>
	 <a href="images/slider3.jpg"><img src="images/slider3.jpg" height="50px" width="50px"/></a><br/>
	 <a href="images/slider4.jpg"><img src="images/slider4.jpg" height="50px" width="50px"/></a>
	 <a href="images/slider5.jpg"><img src="images/slider5.jpg" height="50px" width="50px"/></a>
	 <a href="images/slider6.jpg"><img src="images/slider6.jpg" height="50px" width="50px"/></a><br/>
	
	  </div>
	 
	  <div class="subfooter">
	 <center> <h3 style="color: lightgray;">Developed By: Prateek Kumar Maurya</h3>
	  <p style="line-height:25px; text-align:center; color:lightgrey; ">To contact us kindly
	  email me at <a href="#">prateekm26@gmail.com</a><br/>
	  <a href="http//www.google.co.in">Help</a><br/>
	  +917376509194, +918574612394<br/>
	  Lucknow - 226016  <br/>
          Copyright &copy 2017 </p> </center>
	  
	  
            </div>
            
            </div>
        </div>
        </form>
       </body>
</html>
