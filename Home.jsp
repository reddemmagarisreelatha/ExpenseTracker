<%@page import="com.jsp.expensetracker.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
</head>
<style>
    *{
        margin: 0px;

    }
    #header{
        padding: 10px;
        width: 100%;
        height: 100px;
        position: fixed;
        top: 0px;
        background-color: burlywood;
        display: flex;
        justify-content: space-between;
    }
    img{
        width: 80px;
        height: 50px;
    }
    body{
        height: calc(100vh - 100px);
        background:linear-gradient(35deg,rgb(250, 11, 51),transparent,rgb(252, 4, 45));
        background-repeat: no-repeat;
        background-size: 100vw 100vh;
        display: flex;
        justify-content:space-evenly;
        flex-direction: column;
    }
    .material-symbols-outlined{
        font-size: 60px;
    }
    #main{
        width: 100%;
        height:100vh;
        z-index: 4;
        margin-top: 200px;
        display: flex;
        justify-content: space-evenly;
        flex-direction: column;
        /* background-color: red; */

    }
    .symbols{
        width: 100%;
        height: 200px;
        display: flex;
        justify-content: space-evenly;
        /* background-color: blue; */
    }
    .common{
        width: 100px;
        position: absolute;
        z-index: -1;
        margin-left: 250px;
        height: 100px;
        border-radius: 100%;
        background-color: aqua;
        animation: rotate 10s infinite;

        opacity: 0.6;
        
    }  
    @keyframes rotate {
    }
    .red{
        background-color: red;
        box-shadow: 4px 4px 4px,4px 4px 4px,-4px 4px 4px,-4px -4px 4px;
    }
    .blue{
        background-color: blue;
    }
    .yellow{
        background-color: yellow;
    }
    #last{
    margin-right:70px;
    }
     a{
        text-decoration: none;
        color: black;
        font-size: 30px;
    }
    ul{
    display:none;
    }
    #clean:hover ul{
    display:block;
    
    }
</style>
<body>
    <%
    String message=(String)request.getAttribute("msg");
    //User user=(User)request.getAttribute("userInfo");
    User user=(User)session.getAttribute("userInfo");
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
    <div id="header">
       <div>
      
        <table>
            <tr>
                <td>
                    <img src="media/logo.png" alt="">
                </td>
                <td>
                    <h1>Spring Expense Tracker</h1>
                </td>
            </tr>
        </table>
       </div>
       <div id="clean">
       <table>
       <tr>
       <td>
         <div><span class="material-symbols-outlined" id="last">
            account_circle
        </span></div>
       </td>
       </tr>
       <tr>
       <td><div class="total">
	        <ul>
	        <li><a href="UpdateProfile.jsp">Update Profile</a></li>
	        <li><a>Update us</a></li>
	        <li><a>Contct us</a></li>
	        <li><a>Logout</a></li>
	        </ul>
        </div></td>
       </tr>
       </table>
       </div>
    </div>
    <br>

    <div id="main">
        <div class="symbols">
            <a href="AddExpenses.jsp"><span class="material-symbols-outlined">volunteer_activism</span>
            <br>
            Add Expenses</a>
            <!-- addexpense -->
            <a href="viewExpenses.jsp"><span class="material-symbols-outlined">visibility</span>
            <br>
             view Expense
            </a>
        </div>
         <%
       if(user!=null)
       {
       %>
       <center><h1>Welcome <%=user.getFullname() %></h1></center>
       <%} %>
        <div class="symbols down">
            <a href="totalExpenses.jsp"><span class="material-symbols-outlined">functions</span>
            <br>
             Total Expense 
            </a>
            
            <a href="filterExpenses.jsp"><span class="material-symbols-outlined">filter_alt</span>
            <br>
              filter Expense 
            </a>
           

        </div>
    </div>
</body>
</html>