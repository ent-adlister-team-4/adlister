<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<div class="container">
    <h1>Project Details</h1>
    <form action="/edit" method="POST">
        <div class="form-group">
            <label for="newName">Project Name</label>
            <input id="newName" name="newName" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="newDescription">Project Details</label>
            <input id="newDescription" name="newDescription" class="form-control" type="text">
        </div>
        <input type="hidden" name="projectId" value="${param.projectID}">
<%--  UI Button  --%>
        <button type="submit" class="btn-53 container-fluid mt-2" value="Submit">
            <div class="original">Submit</div>
            <div class="letters">

                <span>S</span>
                <span>U</span>
                <span>B</span>
                <span>M</span>
                <span>I</span>
                <span>T</span>
            </div>
        </button>
    <%--  UI Button  --%>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>

</body>
</html>
