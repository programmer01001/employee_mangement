<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "com.mysql.jdbc.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employees</title>
</head>
<body>
<h1>Employee</h1>
<form action="product-controller">
    <table>
        <tr>
            <td>id</td>
            <td><input type="text" name="emp_no"></td>
        </tr>
        <tr>
            <td>Birth_date</td>
            <td><input type="text" name="birth_date"></td>
        </tr>
        <tr>
            <td>First_name</td>
            <td><input type="text" name="first_name"></td>
        </tr>
        <tr>
            <td>Last_name</td>
            <td><input type="text" name="last_name"></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td><input type="text"  placeholder=" M or F" name="gender"></td>
        </tr>
        <tr>
            <td>Hire_date</td>
            <td><input type="text" name="hire_date"></td>
        </tr>

        <tr>
            <td colspan="2">
                <input type="submit" value="Create">
            </td>
        </tr>
    </table>
</form>

</body>
</html>