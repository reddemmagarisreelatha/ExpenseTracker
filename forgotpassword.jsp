<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>forgotpassword</title>
</head>
<body>
	<style>
        *{padding: 0px;margin: 0px;}
        body{
            width: 100%;height: 100vh;
          
            display: flex;align-items: center;justify-content: center;
            background: linear-gradient(195deg,purple,transparent 30% ,purple);
        }
        #for{
            width: 30%;height: 50vh;
            background: linear-gradient(-70deg,purple,transparent 30% ,purple);
            border-radius:40px;
            display: flex;align-items: center;justify-content: center;
        }
        #sign{
        margin-left: 14px;
        margin-top: 10px;
        width: 300px;
        border-radius: 10px;
        background-color: black;
        color: white;
        height: 40px;
            font-size:17px;
    }
        input{width: 100%;height: 60px;border-radius: 7px;border: 0px;}
        input::placeholder{
        text-align:center;
        text-transform:uppercase;
        font-size:17px;
        }
    </style>

    <div id="for">
        <form action="ForgotPassword" method="post">
            <input type="text" placeholder="enter user email" name="email"><br>
            <br><center><button id="sign">FORGOT</button></center>
        </form>
    </div>
</body>
</html>