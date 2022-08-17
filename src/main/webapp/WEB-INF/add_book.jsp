<%@page import="javax.swing.text.View"%>
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
<title>Add Book</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body class="bg-dark text-light">

<div class="container">

  <div class="text-light">

      <div class="navbar mb-5">

          <div class="navbar-nav">
              <h1  class="justify-content-xl-evenly text-info">Add a book to your shelf!!</h1>
          </div>

          <div class="navbar-nav text-light">
              <a href="/logout" class="btn btn-danger col-10 mb-3 mt-3"> <strong>Logout</strong> </a>
              <a href="/book/add" class="btn btn-outline-info col-10">+ Add to my shelf</a>
          </div>

      </div>

    <div class="container align-content-center">

        <form:form action="/book/adding" method="post" modelAttribute="addBookObj">
					<div class="mb-3">
                        <form:errors path="user" />
                        <form:input type="hidden" path="user" value=" ${sessionId} "/>
                      </div>
                    <div>
                        <form:label path="title">Title:</form:label>
                        <form:errors path="title" />
                        <form:input path="title" />
                      </div>
                      <div>
                        <form:label path="author">Author:</form:label>
                        <form:errors path="author" />
                        <form:input  path="author" />
                      </div>
                      <div>
                        <form:label path="myThoughts">My Thoughts:</form:label>
                        <form:errors path="myThoughts" />
                        <form:input  path="myThoughts" />
                      </div>
                      <input type="submit" value="Submit" class="mt-5 btn btn-outline-success"/>
                    </form:form>
        </div>
    </div>
  </div>
</body>
</html>