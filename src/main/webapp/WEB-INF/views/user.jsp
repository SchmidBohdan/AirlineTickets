<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 11/6/2017
  Time: 9:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form modelAttribute="user" method="post">
    <label>First Name</label>
    <form:input path="firstName"/>

    <label>Last Name</label>
    <form:input path="lastName"/>

    <label>Email</label>
    <form:input path="email"/>

    <label>Password</label>
    <form:input path="password"/>

    <label>Phone Number</label>
    <form:input path="numberPhone"/>

    <button>Save</button>
</form:form>
<ul>
    <c:forEach var="user" items="${users}">
        <li>${user.firstName}${user.lastName}<a href="/deleteUser/${user.id}">Delete</a><a href="/updateUser/${user.id}">Update</a></li>
    </c:forEach>
</ul>
</body>
</html>
