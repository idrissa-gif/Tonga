<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>
</head>
<body>
<h1>Forgot Password</h1>

<%-- Display any error or success messages --%>
<c:if test="${not empty errorMessage}">
    <p style="color: red">${errorMessage}</p>
</c:if>
<c:if test="${not empty successMessage}">
    <p style="color: green">${successMessage}</p>
</c:if>

<form action="resetPassword" method="post">
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>
    <br>
    <input type="submit" value="Reset Password">
</form>
</body>
</html>
