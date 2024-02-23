<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>filterExpenses</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <style>
        *{margin: 0px;padding: 0px;}
        body{
         background: linear-gradient(195deg,transparent 50% ,purple);
        background-repeat: no-repeat;
        background-size: 100% 100vh;
        }
        #heading{
            width: 100%; height: 14vh; 
            background-color: rgb(216, 132, 146);
            display: flex;
            flex-direction: row;
        }
        #head1{margin-left: 2%;margin-top: 19px;}
        #head2{margin-left: 1%;margin-top: 21px;}
        #head3{margin-left: 30%;margin-top: 25px;}
        #body{width: 100%; height: 86vh;display: flex;align-items: center;justify-content: center;}
        #body1{width: 60%;height: 80%; border: 1px solid blue;display: flex;align-items: center;justify-content: center;}
        #body2{width: 98.2%;height: 97%;border: 1px solid blue;
   
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
        input{width: 500px;height: 35px;border-radius: 10px;}
        form{height: 100%;display: flex;align-items: center;justify-content: space-evenly;flex-direction: column;}
    </style>
</head>
<body>
    <div id="heading">
        <div id="head1"><img src="./media/INDIA_flag.jpg" alt="" width="30px" height="30px"></div>
        <div id="head2"><h2>String expense tracker</h2></div>
        <div id="head3"><a href="Home.jsp"><span class="material-symbols-outlined">home</span></a></div>
    </div>
    <div id="body">
        <div id="body1">
            <div id="body2">
                <form action="FilterExpenses">
                	<h2>F&nbsp;i&nbsp;l&nbsp;t&nbsp;e&nbsp;r  &nbsp;&nbsp; E&nbsp;x&nbsp;p&nbsp;e&nbsp;n&nbsp;s&nbsp;e&nbsp;s </h2>
	                <label for="">select Date</label>
    	            <input type="date" name="date">
        	        <label for="">category</label>
            	    <input type="text" name="category">
                    <label for="">selectAmount</label>
                    <input type="text" name="amount">
                	<button id="sign">submit</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>