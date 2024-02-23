<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Expense Tracker</title>
</head>
<style>
    body{
        background: linear-gradient(transparent 50% ,purple);
        background-repeat: no-repeat;
        background-size: 100% 100vh;
    }
    a{
        color: grey;
    }
    .header{
        width: 100%;
        height: 10vh;
        display: flex;
        font-size: 36px;
        padding: 10px;
        background-color: rgb(216, 132, 146);
    }
    .main{
        display: flex;
        flex-direction: column;
        text-align: center;
        background-color: white;
        border: 1px solid ;
        border-radius: 10px;
        box-shadow: 2px 2px 9px;
        width: 400px;
        height: 430px;
        margin-left: 480px;
        margin-top: 40px;

    }
    label{
        margin-top: 10px;
        margin-left: -200px;
    }
    #sign{
        margin-left: 14px;
        margin-top: 10px;
        width: 300px;
        border-radius: 10px;
        background-color: black;
        color: white;
        height: 40px;
    }
    input{
        margin-left: 14px;
        width: 300px;
        height: 40px;
        outline: none;
        border-radius: 10px;
        font-size: 20px;
        border: none;
        background-color:rgb(221, 219, 219);
    }  
    img{
        width: 20px;
        height: 20px;
        margin-right: 10px;
        box-sizing: content-box;
    }
    #logo{
        width: 50px;
        height: 50px;
    }
    .buttons{
        display: flex;
        justify-content: center;
    }
    #facebook,#google{
        width: 140px;
        margin-left: 10px;
        display: flex;
        justify-content: center;
        align-items: center;
        float: left;
        border-radius: 10px;
        height: 60px;
        margin-right: 10px;
        box-shadow: 2px 2px 2px grey,-2px -2px 2px grey;
    }
    a{
        color: rgb(75, 71, 71);
    }
    #facebook{
        background-color: blue;
    }
    #facebook a{
        color: white;
    }
</style>
<body>
<%
	//to retrive data transfered from servlet class
	String message=(String)request.getAttribute("msg");
	if(message!=null)
	{
	%>
		<script>
			alert("<%= message%>");
		</script>
	<%
	}
	message=null;
%>
  <form method="post" action="Login">
  
    <div class="header">
        <img src="" alt="" id="logo">
        <span>Spring Expense Tracker</span>
    </div>
    <div class="main">
        <h1>Sign In With</h1>
        <div class="buttons">
            <div id="facebook">
                <a href="https://www.facebook.com/login/" target="_blank"><img src="/media/images/facebook.png" alt=""></a>
                <a href="https://www.facebook.com/login/" target="_blank">Facebook</a>
            </div>
            <div id="google">
                <a href="https://www.google.com/" target="_blank"><img src="/media/images/download (1).png" alt=""></a>
                <a href="https://www.google.com/" target="_blank">Google</a>
            </div>
        </div>
        <br>
       <table>
        <tr>
            <td><label for="user">UserName</label></td>
        </tr>
        <tr>
            <td>
                <input type="text" required id="user" name="username">
            </td>
        </tr>
        <tr>
            <td>
                &ensp;&emsp;<label for="Password"> Password <a href="">Forgot?</a></label>
                
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" required id="Password" name="password">
            </td>
        </tr>
        <tr>
            <td><button id="sign">Sign In</button></td>
        </tr>
       </table>
       <br>
       <br>
        <span>Not a Member? <a href="register.jsp">Sign Up Now</a></span>
    </div>
  </form>
    
</body>
</html>