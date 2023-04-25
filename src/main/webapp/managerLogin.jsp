<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
</head>
<body>
<style>
body{
background-image: linear-gradient(to right, rgba(0,0,0,0.5), rgba(0,0,0,1)),url("a2.jpg");
background-repeat: no-repeat;
background-position: centre centre;
background-size: 100% 100%;
background-attachment: fixed;
}
.form{
background-color:#fbf2f2e0;
border:0.5px solid black;
width:300px;
height:450px;
margin-top:10%;
margin-left: 42%; 
padding:30px;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
transition:0.5s ease;
}
.form:hover{
background-color: #fff;
}
.form h3{
margin:5px;
padding:5px;
font-size:150%;
}
.form span{
margin-left: 23%;
}
.form p{
padding:5px;
margin: -10px 51px 20px 56px;
}
.logo1{
text-decoration:none;
padding:8px 67px;
background-color: #4141e4;
color: white;
border-radius: 2px;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  
}
.logo2{
border:0.5px solid black;
text-decoration:none;
padding:5px 76px;
background-color: #f5eeee;
color: black;
border-radius: 2px;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.form ion-icon{
width:25px;
height:15px;
margin:-1%;
}
.form input{
width:292px;
height:30px;
}
.btn{
background-color: #10c815;
color: #fff;
font-size: 15px;
font-weight: bold;
border: none;
margin:4px;
transition:1s ease;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.btn:hover{
background-color: #10c815;
color: #fff;
}

.forgot{
text-decoration:none;
padding:10px ;
}
.signup{
text-decoration:none;
color: black;
margin-top:10%;
padding:0px 110px;
}
.signup:hover{
color: blue;
}
.btm{
margin-top:10%;
}


</style>


<div class="form">
<h3>Hello Manager ! Sign In to <span>manage data</span> </h3>

<p>and save your progress</p>
<a class="logo1" href="#"><ion-icon name="logo-facebook"> </ion-icon> sign in with facebook</a><br><br>
<a class="logo2" href="#"><ion-icon name="logo-google"></ion-icon>sign in with google</a><br><br>

<form action="login" method="post">
<input type="email" placeholder=" email" name="managerEmail"><br><br>
<input type="password" placeholder=" password" name="manegerPassword"><br><br>
<input class="btn" type="submit" value="Sign in"> 
<a class="forgot" href="#">Forgot password?</a><br><br>
<div class="btm">
<p>Don't have an acoount?</p>
<a class="signup" href="managerSignup.jsp">Sign up</a>
</div>
</form>
</div>
<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
</body>
</html>