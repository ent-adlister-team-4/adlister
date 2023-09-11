<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!"/>
    </jsp:include>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<form action="/projects" method="GET">
    <input type="text" name="query" placeholder="Search projects...">
    <button type="submit">Search</button>
</form>

<div class="container-hero d-flex flex-wrap justify-content-between">
    <c:forEach var="project" items="${searchResults}">
          <div class="card">
              <img src="https://burst.shopifycdn.com/photos/hiker-looks-up-at-vertical-mountain-peaks.jpg?width=925&exif=0&iptc=0" class="card-img-top" alt="place-holder">
              <div class="card-body">
                  <h5 class="card-title">${project.name}</h5>
                  <p class="card-text">${project.description}</p>
              </div>
          </div>
    </c:forEach>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>
</html>

