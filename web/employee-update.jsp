<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "com.mysql.jdbc.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<sql:query dataSource="jdbc/employees" var="result">
    SELECT * FROM employees
</sql:query>

<sql:query dataSource="jdbc/employees" var="employees">
    SELECT * FROM employees WHERE emp_no = ?
    <sql:param value="${param.id}" />
</sql:query>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>employees</title>
</head>
<body>
<h1>employees <c:out value="${param.id}"/></h1>
<c:forEach var="p" items="${employees.rows}">
<form action="product-controller">
    <input type="hidden" name="cmd" value="u"/>

    <table>
        <tr>
            <td>id</td>
            <td><input type="text" name="emp_no" value='<c:out value="${p.emp_no}"/>'></td>
        </tr>
        <tr>
            <td>Birth_date</td>
            <td><input type="text" name="birth_date" value='<c:out value="${p.birth_date}"/>'></td>
        </tr>
        <tr>
            <td>First_name</td>
            <td><input type="text" name="first_name" value='<c:out value="${p.first_name}"/>'></td>
        </tr>
        <tr>
            <td>Last_name</td>
            <td><input type="text" name="last_name" value='<c:out value="${p.last_name}"/>'></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td><input type="text"  placeholder=" M or F" name="gender" value='<c:out value="${p.gender}"/>'></td>
        </tr>
        <tr>
            <td>Hire_date</td>
            <td><input type="text" name="hire_date" value='<c:out value="${p.hire_date}"/>'></td>
        </tr>


        <tr>
            <td colspan="2">
                <input type="submit" value="Update">
            </td>
        </tr>
    </table>
</form>
</c:forEach>

</body>
</html>