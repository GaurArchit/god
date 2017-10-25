<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-default" style="background-color:green;width:100%">
 <div class="container-fluid">
<div class="navbar-header">
</div>
<a class="navbar-brand" href="#" > <img src="resources\main.jpg" style="width:100px;margin-top:-8px; margin-right:-8px"></a>
<ul class="nav navbar-nav">

<li  class="active"> <a href="#"><span style="color:white">Home</span></a>

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
      <li><a href="#"><span class="glyphicon glyphicon-user" style="color:white">Sign-Up</span> </a>
       <li><a href="#"><span class="glyphicon glyphicon-log-in"style="color:white">Log-in</span> </a>
   </ul>


</div>

</nav>








 <form action="log" method="post" style="border: 3px solid #f1f1f1 ;margin-right:504px;margin-left:459px;">
  <div class="form-group">
  <h2 style="color:green">LOG-IN</h2>
    Email<label for="email"></label><span class="glyphicon glyphicon-user" style="color:white">User name:</span>
    <input type="text" class="form-control" id="username" name="username">
  </div>
  <div class="form-group">
    <label for="pwd"><span class="glyphicon glyphicon-lock" style="color:white">Password:</span></label>
    <input type="password" class="form-control" id="pwd" name="password">
  </div>
  <div class="checkbox">
    <label><input type="checkbox"> Remember me</label>
  </div>
  <button type="submit" class="btn btn-default" > <center>login</button></center>
  <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
</form> 



<br>
<br>
<br>
<br>
<br>
<br>
</body>
</html>





















