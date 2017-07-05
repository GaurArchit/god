<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-default" style="background-color:green">
 <div class="container-fluid">
<div class="navbar-header">
</div>
<a class="navbar-brand" href="#" > <img src="images\main.jpg" style="width:100px;margin-top:-8px; margin-right:-8px"></a>
<ul class="nav navbar-nav">

<li > <a href="#"><span style="color:white">Home</span></a>

</li>
<li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown"   href="#"><span style="color:white">PC Games</span>
<span class="caret"></span>   </a>
<ul class="dropdown-menu">

<li class=""><a href="#"><span style="color:white">Action</span>  </a></li>

<li><a href="#">Advanture </a></li>
<li><a href="#"> Sports</a></li>
<li><a href="#"> Multiplayer </a></li>


</ul>
</li>
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span style="color:white">Consoles</span>
<span class="caret"> </span></a>
<ul class="dropdown-menu">
<li><a href="#"> GamePad</a></li>
<li><a href="#"> Graphic card</a></li>
<li><a href="#"> Processors</a></li>
</ul></li>


<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span style="color:white">Xbox</span>
<span class="caret"> </span></a>
<ul class="dropdown-menu">
<li><a href="#"> Games</a></li>
<li><a href="#"> Xbox acessories</a></li>

</ul></li>









<li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown"   href="#"><span style="color:white">Play Station</span>
<span class="caret"></span>   </a>
<ul class="dropdown-menu">


<li><a href="#">PlayStation 2 </a></li>
<li><a href="#"> PlayStation 3  </a></li>
<li><a href="#"> PlayStation 4   </a></li>
</ul>
</li>
</ul>


   
   
   <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="WEB-INF/views/sign.jsp"><span class="glyphicon glyphicon-user" style="color:white">Sign-Up</span> </a>
       <li><a href="#"><span class="glyphicon glyphicon-log-in"style="color:white">Log-in</span> </a>
   </ul>


</div>

</nav>






































































<h2 align="center" style="color:green"> SIGN-UP</h2>
<form action="add" method="post">
ENTER YOUR NAME<input type="text" name="t1">
ENTER YOUR EMAIL<input type="text" name="t2">
ENTER YOUR PASSWORD<input type="text" name="t3">
COMFIRM PASSWORD<input type="text" name="t4">
<p align="center"><input type="submit" value="submit">
</p>
</form>
</body>
</html>