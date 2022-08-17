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

<title> ${book.title} </title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
          crossorigin="anonymous">
</head>


<body>

<div class="container bg-dark text-light">


<div class="card bg-dark text-light">

    <div class="d-flex justify-content-between card-header mt-5 text-info">
        <h1>${book.title}</h1>
        <div class="nav
        navbar-brand">
            <a href="/profile" class="btn btn-outline-warning">back to shelves</a>
        </div>
    </div>



    <div class="card-body bg-dark">

        <div class="card-body mt-3">

            <c:if test='${book.user.id == loggedInUserId }'>
                <h2 class="mb-5 text-secondary mb-3">
                    You read
                       <span class="text-info">
                               ${book.title}
                       </span>
                    by
                        ${book.author}
                </h2>
                <h3>Here are ${book.user.name}'s thoughts: </h3>
            </c:if>

            <c:if test='${book.user.id != loggedInUserId }'>
                <h2 class="mb-5 text-secondary">  ${book.user.name} read <span class="text-info"> ${book.title} </span>  by
                       <span class="text-light"> ${book.author}</span></h2>
                <h3>Here are ${book.user.name}'s thoughts: </h3>
            </c:if>

        </div>



        <div class="container card-body bg-dark">

        <h3 class="card card-body bg-dark text-light text-lg-center"> ${book.myThoughts}</h3>
        <c:if test='${book.user.id == loggedInUserId }'>
            <button class="btn btn-warning text-warning"><a href="/book/edit/${book.id}">edit</a></button>
        </c:if>


        </div>
    </div>
</div>
</div>
</body>
</html>




