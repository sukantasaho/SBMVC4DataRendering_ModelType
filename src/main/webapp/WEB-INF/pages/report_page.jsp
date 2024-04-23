<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Model</title>
<style>
    table {
        border-collapse: collapse;
        width: 40%;
    }
    th, td {
        border: 1px solid black;
        padding: 5px;
        text-align: center;
    }
    th {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>
<h1 style="color:red; text-align:center">Employee Information</h1>
<hr>
<c:if test="${!empty emp}">
 <h3 style="color:blue; text-align:center">Single Employee Record :: <b>${emp.id}&nbsp;&nbsp;${emp.name}&nbsp;&nbsp;${emp.salary}&nbsp;&nbsp;${emp.address}</b></h3>
</c:if>


<h3 style="color:red; text-align:center">Multiple Employee Records:</h3>
<c:choose>
  <c:when test="${!empty empList}">
    <table border="1" align="center">
      <tr><th>Id</th><th>Name</th><th>Salary</th><th>Address</th></tr>
      <c:forEach var="emp1" items="${empList}">
         <tr>
          <td>${emp1.id}</td><td>${emp1.name}</td><td>${emp1.salary}</td><td>${emp1.address}</td>
         </tr>
      </c:forEach>
    </table>
  </c:when>
</c:choose>
</body>
</html>