<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
    <link rel="stylesheet" href="../css/style.css">
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
</head>
<body>

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>


    <%--Modal for adding a project--%>
    <div class="modal fade" id="systemStaticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered" style="max-height: 600px">
            <div class="modal-content">
                <div class="modal-header" style="border: black solid 1px">
                    <h1 class="modal-title fs-5" id="systemStaticBackdropLabel">Add Project</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body systemModalText" style="border: black solid 1px">
                    <div class="container">
                        <h1>Project Details</h1>
                        <form action="/profile" method="POST">
                            <div class="form-group">
                                <label for="project_name">Project Name</label>
                                <input id="project_name" name="project_name" class="form-control" type="text">
                            </div>
                            <div class="form-group">
                                <label for="project_details">Project Details</label>
                                <input id="project_details" name="project_details" class="form-control" type="text">
                            </div>
                            <%--        UI Button        --%>
                            <button type="submit" class="btn-53 mt-2 container-fluid" value="Add">
                                <div class="original">Add</div>
                                <div class="letters">

                                    <span>A</span>
                                    <span>D</span>
                                    <span>D</span>
                                </div>
                            </button>
                            <%--        UI Button        --%>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="container-hero d-flex flex-wrap justify-content-between">
    <h2 class="col-12">Your Projects</h2>
    <c:forEach var="project" items="${projects}">
    <div class="card">
        <img src="https://burst.shopifycdn.com/photos/hiker-looks-up-at-vertical-mountain-peaks.jpg?width=925&exif=0&iptc=0"
             class="card-img-top" alt="place-holder">
        <div class="card-body">
            <h5 class="card-title">${project.name}</h5>
            <p class="card-text">${project.description}</p>
        </div>

            <%--     UI Button Edit    --%>
        <div class="container-fluid mt-1 mb-1">
            <a href="/edit?projectID=${project.id}">
                <button class="btn-53 container-fluid">
                    <div class="original">Edit</div>
                    <div class="letters">

                        <span>E</span>
                        <span>D</span>
                        <span>I</span>
                        <span>T</span>
                    </div>
                </button>
            </a>
        </div>
            <%--     UI Button Edit    --%>

            <%--UI Delete Button--%>
        <div class="container-fluid">
            <form action="/delete" method="POST">
                <input type="hidden" name="projectID" value="${project.id}">
                <button type="submit" class="btn-53 container-fluid">
                    <div class="original">Delete</div>
                    <div class="letters">

                        <span>D</span>
                        <span>E</span>
                        <span>L</span>
                        <span>E</span>
                        <span>T</span>
                        <span>E</span>
                    </div>
                </button>
            </form>
        </div>
            <%--UI Delete Button--%>
    </div>

    </c:forEach>
    <div class="col-12">
        <%--Add project button--%>
        <button class="btn-53 container-fluid" data-bs-toggle="modal"
                data-bs-target="#systemStaticBackdrop">
            <div class="original">Add Project</div>
            <div class="letters">

                <span>A</span>
                <span>D</span>
                <span>D</span>
                <span>&nbsp;</span>
                <span>P</span>
                <span>R</span>
                <span>O</span>
                <span>J</span>
                <span>E</span>
                <span>C</span>
                <span>T</span>

            </div>
        </button>
        <%--Add project button--%>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
                crossorigin="anonymous"></script>


</body>
</html>

