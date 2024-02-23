<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expense Account</title>
</head>
<style>
    body{
        display: flex;
        justify-content: center;
        height: 500px;
        align-items: center;
    }
    div{
        display: flex;
        width: 450px;
        height: 400px;
        border-radius: 19px;
        padding: 20px;
        justify-content: center;
        background-color: violet;
    }
    #sign{
        background-color: rgb(62, 62, 240,0.9);
        box-shadow: 3px 3px 3px;
    }
    #sign:active{
        box-shadow: 0px 0px 0px;
        transform: scale(0.9);
        transition: 0.1s;
    }
    input{
        width: 400px;
        margin-top: 1PX;
        height: 28px;
        border-radius: 5px;
        box-shadow: 2px 2px 2px;

        border: none;
    }
    span{
        margin-left: 90px;
    }
</style>
<body>
    <form action="Registration" method="post">
        <div>
            <table>
                <center><th><h2>CREATE ACCOUNT</h2></th></center>
                <tr>
                    <td>
                        <input type="text" placeholder="Your Name" name="fullname">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" placeholder="UserName" name="username">
                    </td>
                    
                </tr><tr>
                    <td>
                        <input type="text" placeholder="Email" name="email">
                    </td>
                </tr><tr>
                    <td>
                        <input type="text" placeholder="Mobile Num" name="mobile">
                    </td>
                </tr><tr>
                    <td>
                        <input type="text" placeholder="Password" name="password">
                    </td>
                </tr><tr>
                    <td>
                        <input type="text" placeholder="Confirm Password" name="cpassword">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="signIn" id="sign">
                    </td>
                </tr>
                <tr>
                    <td>
                        <span>Already Have Account?</span>  
                     <a onclick="" target="_blank" href="login.jsp">Login Here</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>