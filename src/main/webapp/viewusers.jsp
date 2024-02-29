<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>

<style>
  
     body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 70%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: rgba(0, 0, 139, 0.5);
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a {
            background-color:rgba(0, 0, 139, 0.5);
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            display: inline-block;
        }

        a.delete {
            background-color: #ff3333;
        }

        a:hover {
            background-color: rgba(0, 87, 255, 0.6);
        }
  
</style>

</head>
<body>

<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Users List</h1>

<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" width="90%">
		<tr>
            <th>Id</th>
            <th>Name</th>
            <th>Password</th>
            <th>Email</th>
            <th>Sex</th>
            <th>Country</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
		<c:forEach items="${list}" var="u">
            <tr>
                <td>${u.getId()}</td>
                <td>${u.getName()}</td>
                <td>${u.getPassword()}</td>
                <td>${u.getEmail()}</td>
                <td>${u.getSex()}</td>
                <td>${u.getCountry()}</td>
                <td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
                <td><a href="deleteuser.jsp?id=${u.getId()}" class="delete">Delete</a></td>
            </tr>
        </c:forEach>
</table>
<br/><a href="adduserform.jsp">Add New User</a>

</body>
</html>