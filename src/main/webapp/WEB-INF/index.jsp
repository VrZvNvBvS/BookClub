<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
          <!DOCTYPE html>
          <html>

          <head>
            <meta charset="UTF-8">
            <title>Book Club</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
          </head>

          <body class="container bg-dark text-light">
                <div class="mb-5">
                  <h1 class="text-info">Book Club</h1>
                  <p> <strong> A place for friends to share thoughts on books.</strong></p>
                </div>
              <div class="row justify-content-xl-center">
                <div class="col-4">
                  <h2 class="text-warning">Register</h2>
                  <form:form action="/user/reg" method="post" modelAttribute="RegUser">
                    <div class="mb-3">
                      <form:label path="name">Name:</form:label>
                      <form:errors path="name" />
                      <form:input path="name" />
                    </div>
                    <div class="mb-3">
                      <form:label path="email">Email:</form:label>
                      <form:errors path="email" />
                      <form:input  path="email" />
                    </div>
                    <div class="mb-3">
                      <form:label path="password">Password:</form:label>
                      <form:errors path="password" />
                      <form:input type="password" path="password" />
                    </div>
                    <div class="mb-3">
                      <form:label path="confirmPassword">Confirm Password:</form:label>
                      <form:errors path="confirmPassword" />
                      <form:input type="password" path="confirmPassword" />
                    </div>
                    <input type="submit" value="Submit" id="btn" class="btn btn-outline-light"/>
                  </form:form>
                </div>
                <div class="col-4">
                  <h2 class="mb-3 text-warning" >Login</h2>
                  <form:form action="/user/login" method="post" modelAttribute="loginUser">
                    <div class="mb-3">
                      <form:label path="email">Email:</form:label>
                      <form:errors path="email" />
                      <form:input path="email" />
                    </div>
                    <div class="mb-3">
                      <form:label path="password">Password:</form:label>
                      <form:errors path="password" />
                      <form:input type="password" path="password" />
                    </div>
                    <input type="submit" value="Submit" id="btn" class="btn btn-outline-light"/>
                  </form:form>
                </div>

              </div>
          </body>

          </html>