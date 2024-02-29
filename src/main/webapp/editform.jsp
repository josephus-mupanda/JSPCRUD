<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
<style>
  
   	body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
    }
    .container {
        border-radius: 2px;
        box-shadow: 0 0 2px rgba(0, 0, 0, 0.1);
        width: 50%;
        margin: 0 auto; 
        padding: 10px;
    }
    h1 {
        text-align: center;
        margin-bottom: 20px;
    }
    label {
        display: block;
        margin-bottom: 8px;
    }
    input[type="text"],
    input[type="email"] ,
    input[type="password"], select {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: rgba(0, 0, 139, 0.5);
        color: white;
        padding: 12px 50px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
       
    }
    a{
    	background-color: rgba(0, 0, 139, 0.5);
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
     	text-decoration: none;
        display: inline-block;
    }
    input[type="submit"]:hover {
        background-color: rgba(0,87,255, 0.6);
    }
    .error-message {
        color: red;
        margin-top: 5px;
    }
  
</style>
</head>
<body>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User"%>

<%
String id=request.getParameter("id");
User u=UserDao.getRecordById(Integer.parseInt(id));
%>
<div class="container">
<br/>
	<h1>Edit Form</h1>
	<form action="edituser.jsp" method="post">
	<input type="hidden" name="id" value="<%=u.getId() %>"/>
	
	<label for="name">Name:</label>
	<input type="text" name="name" value="<%= u.getName()%>"/>
	
	
	<label for="password">Password:</label>
	<input type="password" name="password" value="<%= u.getPassword()%>"/>
	
	<label for="email">Email:</label>
	<input type="email" name="email" value="<%= u.getEmail()%>"/>
	
	Sex:
	<input type="radio" name="sex" value="male"/>Male 
	<input type="radio" name="sex" value="female"/>Female
	
	<label for="country">Country:</label>
	<select name="country">
		<option>RDC</option>
		<option>Rwanda</option>
		<option>Burundi</option>
		<option>Ouganda</option>
		<option>Other</option>
	</select>
	<input type="submit" value="Edit User"/>
	</form>
</div>
</body>
</html>