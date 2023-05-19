<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Log in with your account</title>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <style>
    body {
      background-image: url('${pageContext.request.contextPath}/images/login_background_tr.png');
      background-size: cover;
      background-position: center;
    }
    .btn-login,
    .btn-signup {
      flex: 1;
      height: 100%;
    }

    .btn-container {
      display: flex;
      flex-direction: column; /* Change flex-direction to column */
      justify-content: center;
      align-items: center;
      gap: 10px;
      height: 100px;
    }

    .btn-login {
      background-color: green;
      margin-bottom: 5px; /* Add margin-bottom to create a small gap */
      width: 300px;
    }

    .btn-signup {
      background-color: blue;
      width: 300px;
    }
  </style>


</head>

<body class="d-flex align-items-center justify-content-center" style="min-height: 100vh;">

<div class="container">
  <form method="POST" th:action="@{/login}" class="form-signin">
    <h2 class="form-heading text-center">Log in</h2>

    <div class="form-group ${error != null ? 'has-error' : ''}">
      <span>${message}</span>
      <input name="email" type="text" class="form-control" placeholder="Username" autofocus="true"/>
      <br>
      <input name="password" type="password" class="form-control" placeholder="Password"/>
      <span>${error}</span>
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
      <br>
      <div class="btn-container">
        <button class="btn btn-primary btn-login mt-3" type="submit">Log In</button>
        <a class="btn btn-primary btn-signup" href="/registration">Sign Up</a>
      </div>
    </div>
  </form>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>

</body>
</html>