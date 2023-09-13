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

<%--<form action="/projects" method="GET">--%>
<%--    <input type="text" name="query" placeholder="Search projects...">--%>
<%--    <button type="submit">Search</button>--%>
<%--</form>--%>
<div class="p-4 p-md-5 mb-4 rounded text-body-emphasis bg-body-dark">
    <div class="col-lg-6 px-0">
        <div>
            <h1 class="display-4 fst-italic">Title of a longer featured blog post</h1>
            <p class="lead my-3">Multiple lines of text that form the lede, informing new readers quickly and
                efficiently about what’s most interesting in this post’s contents.</p>
            <p class="lead mb-0"><a href="#" class="text-body-emphasis fw-bold">Continue reading...</a></p>
        </div>
        <div>
            <form class="d-flex mt-3" role="search" action="/projects" method="get">
                <input class="form-control me-2" type="search" name="query" placeholder="Search projects..."
                       aria-label="Search">
                <%--  UI Button  --%>
                <button type="submit" class="btn-53 d-flex justify-content-center">
                    <div class="original">Search</div>
                    <div class="letters">

                        <span>S</span>
                        <span>E</span>
                        <span>A</span>
                        <span>R</span>
                        <span>C</span>
                        <span>H</span>
                    </div>
                </button>
                <%--  UI Button  --%>
            </form>
        </div>
        <div class="d-flex mt-3">
            <label for="sortDropdown" class="ms-3">Sort by:</label>
            <select id="sortDropdown" class="form-select ms-2">
                <option value="asc">A-Z</option>
                <option value="desc">Z-A</option>
            </select>
        </div>
    </div>
</div>


<div class="container-hero d-flex flex-wrap justify-content-between">
    <c:forEach var="project" items="${searchResults}">
        <div class="card">
                <%--              <img src="https://burst.shopifycdn.com/photos/hiker-looks-up-at-vertical-mountain-peaks.jpg?width=925&exif=0&iptc=0" class="card-img-top" alt="place-holder">--%>
            <img src="../img/grey1.jpeg" alt="Description of your image">
            <div class="card-body">
                <h5 class="card-title">${project.name}</h5>
                <p class="card-text">${project.description}</p>
            </div>
        </div>
    </c:forEach>
</div>
<script>
    document.getElementById('sortDropdown').addEventListener('change', function () {
        // Get the selected sorting order (asc for A-Z, desc for Z-A)
        const selectedSort = this.value;

        // Get the container that holds the project cards
        const container = document.querySelector('.container-hero');

        // Get all the project cards inside the container
        const projectCards = Array.from(container.querySelectorAll('.card'));

        // Sort the project cards based on the selected sorting order
        projectCards.sort(function (a, b) {
            const nameA = a.querySelector('.card-title').textContent.trim().toUpperCase();
            const nameB = b.querySelector('.card-title').textContent.trim().toUpperCase();

            if (selectedSort === 'asc') {
                if (nameA < nameB) {
                    return -1;
                }
                if (nameA > nameB) {
                    return 1;
                }
            } else if (selectedSort === 'desc') {
                if (nameA > nameB) {
                    return -1;
                }
                if (nameA < nameB) {
                    return 1;
                }
            }

            return 0;
        });

        // Clear the container
        container.innerHTML = '';

        // Append the sorted project cards back to the container
        projectCards.forEach(function (card) {
            container.appendChild(card);
        });
    });
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>
</html>

