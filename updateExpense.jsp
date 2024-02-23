<%@page import="com.jsp.expensetracker.service.ExpenseService"%>
<%@page import="com.jsp.expensetracker.service.ExpenseServiceImp1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jsp.expensetracker.entity.Expense" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>
<style>
    *{
        margin: 0px;
    }
    body{
        background:radial-gradient(rgb(246, 88, 246)5% ,rgb(191, 2, 2) 68% );
        background-repeat: no-repeat;
        background-size: 100vw 100vh;
        height: calc(100vh - 60px);
    }
    #head-img{
        width: 50px;
        height: 50px;
    }
    #header{
        height: 60px;
        display: flex;
        justify-content: space-between;
        background-color: rgb(237, 148, 237);
        padding: 10px;
        font-size: 30px;
        font-weight: bold;
    }
    #home{
        margin-right: 199px;
        color: rgb(11, 173, 11);
    }
    .material-symbols-outlined{
       
        font-size: 49px;
    }
    .main{
        width: 700px;
        height: 400px;
        margin-top: 25px;
        border-radius: 10px;
        display: flex;
        justify-content: space-between;
        background: radial-gradient(transparent 13%,rgb(146, 32, 102));
    }
    .main img{
        margin-top: 60px;
        width: 250px;
        height: 250px;
    }
    button{background-color: rgb(52, 186, 52);
        border-radius: 20px;
        width: 150px;
        height: 45px;
        border: none;
        color: white;
        font-size: 20px;
        font-weight: bold;
    }
    .Add{
        padding: 20px;
        display: flex;
    }
    input{
        width: 250px;
        padding: 4px;
        height: 29px;
        border-radius: 4px;
        outline: none;
        border: none;

    }
    textarea{
        border-radius: 13px;
        width: 250px;
    }
    select{
        width: 260px;
        appearance: none;
        outline: none;
        border-radius: 4px;
        height: 29px;
    }
    #footer{
        position: fixed;
        bottom: 0px;
        width: 100%;
        height: 50px;
        background-color: black;
        color: white;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    
</style>
<body>
<%
int eId=Integer.parseInt(request.getParameter("expenseId"));
ExpenseService expenseService=new ExpenseServiceImp1();
Expense expense=expenseService.findExpenseById(eId);
%>
    
        <div id="header">
            <table>
                <tr>
                    <td>
                        <img src="media/logo.png" alt="" id="head-img">
                    </td>
                    <td>
                        Expenses Tracker
                    </td>
                </tr>
            </table>
           <div>
            <span class="material-symbols-outlined" id="home">
                home_app_logo
                </span>
           </div>
            <div>
                <span class="material-symbols-outlined" id="last">
                    account_circle
                </span>
                <div id="profile">
                    <ul>
                        <li>Updatte Profile</li>
                        <li>About us</li>
                        <li>Contact Us</li>
                        <li>Logout</li>
                    </ul>
                </div>
            </div>
        </div>
        <center><div class="main">
            <div id="purse">
                <img src="media/purse.png" alt="" id="purse-img">
         <form action="UpdateExpense">
            </div>
            <div class="Add">
                <table>
                    <th>
                        Update Expenses
                    </th>
                   <input value=<%=expense.getExpenseId() %> hidden name="eId"> 
                    <tr>
                        <td><input type="text" placeholder="Amount" name="amount" value=<%=expense.getAmount() %>></td>
                    </tr>
                    <tr>

                       <td> <input type="date" name="date" value=<%=expense.getDate() %>></td>
                    </tr>
                    <tr>
                       <td>
                        <select   name="category">
                        
                        	<option ><%=expense.getCategory() %></option>
                            <option value="category">Category</option>
	                        <option value="Transportation">Transportation</option>
	                        <option vaue="Groceries">Groceries</option>
	                        <option value="DiningOut">DiningOut</option>
	                        <option  value="Entertainment">Entertainment</option>
	                        <option value="HealthCare">HealthCare</option>
	                        <option value="Education">Education</option>
	                        <option value="PersonalCare">PersonalCare</option>
	                        <option value="Clothing">Clothing</option>
	                        <option value="HomeMaintainance">HomeMaintainance</option>
	                        <option value="Gifts&Donations">Gifts&Donations</option>
	                        <option value="Saving&investments">Saving&investments</option>
	                        <option value="Tax">Tax</option>
                        <option value="Others">Others</option>
                        </select>
                       </td>
                    </tr>
                    <tr>
                        <td><textarea  cols="30" rows="10" id="big-box" placeholder="Description" name="description" ><%=expense.getDescription()%></textarea></td>
                    </tr>
                    <tr>
                        <td>
                            <button>Update +</button>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
         </form></center>
        <div id="footer">
            <p>&copy;2023JSpiders.All rights reserved.</p>
        </div>
           
</body>
</html>