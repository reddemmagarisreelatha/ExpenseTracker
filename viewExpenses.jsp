<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
    <%@page import="com.jsp.expensetracker.entity.Expense" %>
    <%@page import="com.jsp.expensetracker.entity.User" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">

<title>viewExpenses</title>

</head> 

<body>

	<table border="2px"  width="1100px"  cellspacing="3px">

		<tr>

			<th>sl.no</th>

			<th>amount</th>

			<th>category</th>

			<th>Date</th>

			<th>Description</th>

			<th>operation</th>

		</tr>

		<%
		List<Expense> listOfExpenses=(List)request.getAttribute("list");
		System.out.println("listOfExpenses - "+listOfExpenses );
		int sl=1;
		if(listOfExpenses!=null)

		{

			for(Expense e:listOfExpenses )

			{

			%>

			<tr>
				<td><%= sl++ %></td>

				<td><%=e.getAmount()%></td>

				<td><%=e.getCategory() %></td>

				<td><%=e.getDate() %></td>

				<td><%=e.getDescription() %></td>

				<td>

					<a href="UpdateExpense.jsp?expenseId=<%=e.getExpenseId()%>"><button type="button" >update</button></a>

					<a href="DeleteExpense?expenseId=<%=e.getExpenseId()%>"><button type="button" >delete</button></a>

				</td>
			</tr>

			<%}} else System.out.println("listOfExpenses is null in viewExpenses"); %>

	</table>

</body>

</html>