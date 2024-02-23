<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.jsp.expensetracker.entity.User" %>
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
    }
    #a{
        width: 300px;
        height: 300px;
        padding: 20px;
        border: 2px dotted ;
    }
</style>
<body>
<%
User user=(User)session.getAttribute("userInfo");
%>

   <form action="UpdateProfile" method="POST" enctype="multipart/form-data">
    <div id="a" >
        <table>
               <h1> Update Your Profile</h1>
            <tr>
                <td><label for="username">UserName:</label></td>
                <td><input type="text" id="username" value=<%=user.getUsername() %> name="username"></td>
            </tr>
	             <tr>
	                <td><label for="fullname">FullName:</label></td>
	                <td><input type="text" id="fullname"  value=<%=user.getFullname()%> name="fullname"></td>
	            </tr>
            <tr>
                <td><label for="email">Email:</label></td>
                
                <td><input type="email" id="email" value=<%=user.getEmail() %> name="email"></td>
            </tr>
            <tr>
                <td><label for="mobile" >Mobile:</label></td>
                
                <td><input type="number" id="mobile" value=<%=user.getMobile()%> name="mobile"></td>
            </tr>
            <tr>
                <td><label for="password">Password:</label></td>
                
                <td>
                    <input type="password" id="password" value=<%=user.getPassword() %> name="password">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="">Profile Photo:</label>
                </td>
                <td>
                    <input type="file" id="fileInput" accept="image/*" name="imageFile">
                    <img id="displayImage">
                </td>
            </tr>
            <tr>
                <td></td>
                <td> <a ><button onclick=>Update Profile</button></a></td>
            </tr>
        </table>
    </div>
   </form>
</body>
		<script>
    const fileInput=document.getElementById("fileInput");
    const displayImage=document.getElementById("displayImage");
    fileInput.addEventListener("change",function())
    {
        const file=file.files[0]
        if(file&& file.type.startsWith("image/"))
        {
            const reader=new FileReader();
            reader.onload=function(e){
                displayImage.src=e.target.result;
                displayImage.style.display="block";
            }
            reader.readAsDataURL(file)
        }
    }
</script>
</html>