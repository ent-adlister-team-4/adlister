<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!"/>
    </jsp:include>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="p-4 p-md-5 mb-4 rounded text-body-emphasis bg-body-dark">
    <div class="col-lg-6 px-0">
        <div>
            <h1 class="display-4 fst-italic">Home for the future of web development</h1>
            <p class="lead my-3">Explore our diverse web development portfolio, showcasing innovative and responsive websites that redefine digital experiences.</p>
        </div>
        <div>
            <form class="d-flex mt-3" role="search" action="/projects" method="get">
                <input class="form-control me-2" type="search" name="query" placeholder="Search projects..."
                       aria-label="Search">
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
            <img src="../img/grey1.jpeg" alt="Description of your image">
            <div class="card-body">
                <h5 class="card-title">${project.name}</h5>
<%--                <p class="card-text">${project.description}</p>--%>
                <!-- Pass the project ID as a data attribute -->
                <button class="btn btn-primary view-description" data-bs-toggle="modal" data-bs-target="#projectModal" data-description="${project.description}" data-project-id="${project.id}">
                    View Description
                </button>
            </div>
        </div>
    </c:forEach>
</div>

<div class="modal fade" id="projectModal" tabindex="-1" role="dialog" aria-labelledby="projectModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="projectModalLabel">Project Description</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p id="projectDescription"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
<script>
    $('.view-description').on('click', function () {
        // Get the project description and project ID from the clicked button
        var description = $(this).data('description');
        var projectId = $(this).data('project-id');

        // Find the corresponding modal and populate it with the description
        var modal = $('#projectModal');
        modal.find('.modal-body #projectDescription').text(description);

        // Show the modal
        modal.modal('show');
    });

    // Attach an event listener to handle modal hide
    $('#projectModal').on('hidden.bs.modal', function (e) {
        // Add modal-open class and style attribute back to the body element
        $('body').addClass('modal-open');
        $('body').attr('style', '');
    });

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
</body>
</html>
