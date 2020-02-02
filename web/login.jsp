<%-- 
    Document   : student_login
    Created on : 2 Nov, 2017, 4:22:33 PM
    Author     : Prateek Kumar
--%>

<%-- 
    Document   : registration
    Created on : 2 Nov, 2017, 1:20:00 PM
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
            </script>
    </head>
    <body onload="moveSlider()">
        <form action="code/logincode.jsp" method="post">
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
            <li> <a href="consultantreg.jsp">CONSULTANT</a></li>
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
                    <h2 style ="text-align: center; color:whitesmoke; background-color: #00cc66;font-size: 30px;">Login</h2>
                <table align="center" cellspacing="6px" cellpadding="6px" >
                 <tr><th style ="color:whitesmoke;font-size: 20px;">User Id </th><td><input type="text" name="userid" required="true"/></td></tr>
                              <tr><th  style ="color:whitesmoke;font-size: 20px;">Password </th><td><input type="password" name="passwd" required="true"/></td></tr>
                               <tr><td>&nbsp</td><th><input style="height:30px; width:175px; background-color:#00cc66; color:white;font-size: 20px; "type="submit" value="Login"></th>
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

