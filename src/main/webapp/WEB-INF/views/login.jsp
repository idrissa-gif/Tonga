<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Log in with your account</title>

  <!-- Link to CSS file with custom styles -->
  <link rel="stylesheet" href="home.css">

  <!-- Link to Bootstrap CSS and JavaScript files -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+OzlL5g5G5SmedZQVlZDq7hqpwK9ur" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-Dm2G/CsJCV0OkGr3zLXPnG5VPTN9TwKj8f5nPJ0BiaH+aC5wEaF81/HfY9zU2mwX" crossorigin="anonymous"></script>
</head>

<body>

<div class="container">
  <form method="POST" action="/login" class="form-signin">
    <h2 class="form-heading">Log in</h2>

    <div class="form-group ${error != null ? 'has-error' : ''}">
      <span>${message}</span>
      <input name="email" type="email" class="form-control" placeholder="Email"
             autofocus="true"/>
      <input name="password" type="password" class="form-control" placeholder="Password"/>
      <span>${error}</span>
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

      <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
      <a class="btn btn-lg btn-primary btn-block" href="/registration" >Sign Up</a>
    </div>
  </form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u
