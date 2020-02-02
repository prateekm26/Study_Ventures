<%-- 
    Document   : index
    Created on : 6 Nov, 2017, 3:01:58 AM
    Author     : Prateek Kumar
--%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
        <div id="outer">
            <div id="banner">
                <div id="logo" >
                    <div id="circle1"><div id="circle2" ><h4>STUDY VENTURES</h4></div>
                    </div>
                </div>
                
               <div id="name"> <h1 style="font-family:'Adobe Fan Heiti Std'; "><span style="color:#41f7e8;"> STUDY VENTURE</span> <br />
</h1></div>
                <div id="menu">
                <ul>
	    <li><a href="index.jsp">HOME</a></li>
	    <li><a href="aboutus.jsp">ABOUT US</a></li>
	    <li><a href="student_reg.jsp">REGISTRATION</a>
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
                <img id="slide"  width="100%" height="200px"/>
            </div>
            <div id="main">
             <br/>
             <h1 style=" text-align: center; color:whitesmoke;font-size: 30px;background-color: #00cc66;"> Welcome to our portal</h1>
                   <p style="margin: 0px 15px 0px 15px;"><font face="Veranda" color="white" size="4.5" >Study Ventures is a web application that provides a platform to the students to learn computer languages and learn computer fundamentals. They can register on our web portal and can learn the all courses offered by this portal in the same environment. After learning the students have to qualify tests series and see their result on the portal to evaluate their preparation. Also they can see the performance of other students that are registered to the portal. After qualification of all test series students will provided their certificate . </font></p>
                    <p style="margin: 10px 10px 0px 10px;">Read More...</p>
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
       </body>
</html>

