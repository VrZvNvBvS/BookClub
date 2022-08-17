<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

  <meta charset="UTF-8">
  <title>Book Club Members Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</head>

<body class="card g-dark text-light">

<div class="container card card-body bg-dark text-light">
  <div class="navbar mb-5">
    <div class="navbar-nav">
      <h1  class="justify-content-xl-evenly text-info">Welcome, ${ user.name }!</h1>
      <p>  <strong>Books from everyone's shelves</strong></p>
    </div>

    <div class="navbar-nav text-light">
      <a href="/logout" class="btn btn-danger col-10 mb-3 mt-3"> <strong>Logout</strong> </a>
      <a href="/book/add" class="btn btn-info col-10">+ Add to my shelf</a>
    </div>
  </div>

  <table class="table table-dark table-striped">
  <thead>
  <tr>
    <th scope="col">ID#</th>
    <th scope="col">TITLE</th>
    <th scope="col">Author Name</th>
    <th scope="col">Posted By</th>
  </tr>
  </thead>

  <tbody>
  <c:forEach items = '${ getAllBooksBook }' var = 'book'>
    <tr>
      <td>${book.id}</td>
      <td> <a href="book/view/${book.id}">${book.title}</a> </td>
      <td>${book.author}</td>
      <td>${book.user.name}</td>
    </tr>
  </c:forEach>

  </tbody>
  </table>

</div>
</body>
</html>