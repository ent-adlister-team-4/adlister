<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>


    <button class="btn btn-primary" data-bs-toggle="modal"
            data-bs-target="#systemStaticBackdrop">Add Project
    </button>
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
                            <input type="submit" class="btn btn-primary btn-block" value="Add">
                        </form>
                    </div>

                </div>
                <div class="modal-footer" style="border: black solid 1px">
                    <div class="modal-footer" style="border: black solid 1px">
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Nope</button>
                        <button type="button" class="btn btn-primary">Confirm</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>
</html>

