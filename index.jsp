<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <style>
    	body{padding: 0px;margin: 0px;}
        #heading{
            width: 100%; height: 14vh; 
            background-color: rgb(233, 90, 138);
            display: flex;
           
            flex-direction: row;
        }
        #head1{margin-left: 2%;margin-top: 19px;}
        #head2{margin-left: 1%;}
        #head3{margin-left: 70%;margin-top: 25px;}

        #body{
            height: 82vh; width: 100%;
            display: flex;
            align-items: center;
            justify-content: space-evenly;
        }
        #body1{
            display: flex;
            align-items: center;
            justify-content:center;
        }
        #body1,#body2{width: 400px; height: 300px;}
        #img{width: 100%;height: 100%;}
        h3{text-align: justifyare;}
    </style>
</head>
<body>
    <div id="heading">
        <div id="head1"><img src="./media/logo.png" width="50px" height="50px" alt=""></div>
        <div id="head2"><h2>Spring Expense Tracker</h2></div>
        <div id="head3"><a href="Home.jsp"><span class="material-symbols-outlined">person</span></a></div>
    </div>
    <div id="body">
        <div id="body1"><img src="./media/image.jpg" alt="" id="img"></div>
        <div id="body2"><h3><br><br>Expenses tracker Simplify your persional reimersement management <br><br> Epense tracker is used by user's to recover their daily routine expenses in a disital and hassle free way as opposed to conventional manual documentation of expenses.</h3></div>
    </div>
</body>
</html>