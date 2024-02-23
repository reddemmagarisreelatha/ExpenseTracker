<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    body{
        display: flex;
        justify-content: center;
        background-size: 100vw 100vh;
        align-items: center;
        font-size: 30px;
        letter-spacing: 3px;
        text-shadow: 3px 3px 3px;
    }

    #a{
        width: 600px;
        border-radius: 20px;
        height: 500px;
        background: linear-gradient(green,white,purple);
        background-repeat: no-repeat;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }
    input{
        width: 300px;
        height: 30px;
    }
</style>
<body>
   <form action="TotalExpense">
    <div id="a">
                <label for="start">Start Date</label>
                <br>
                <input type="date" id="start" name="start"><br>
                 <label for="end">End Date</label>
                  <br>
                  <input type="date" id="end" name="end">
                  <button>Find</button>
    </div>
   </form>
</body>
</html>