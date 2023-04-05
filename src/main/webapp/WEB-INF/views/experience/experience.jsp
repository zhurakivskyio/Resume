<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../dynamic/css.jspf"%>
<body id="page-top">
        <!-- Navigation-->
        <%@include file="../dynamic/navigationMain.jspf"%>
        <!-- Page Content-->
        <div class="container-fluid p-0">
            <!-- Experience-->
            <section class="resume-section" id="experience">
                <div class="resume-section-content">
                    <h2 class="mb-5">Experience</h2>
                    <c:forEach items="${experienceModel}" var="item">
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                            <h3 class="mb-0">${item.title}</h3>
                            <div class="subheading mb-3">${item.subtitle}</div>
                            <p>${item.description}</p>
                            <a class="nav-link" href='<c:url value="/editExperience/${item.id}"/>'
                               role="button">Edit</a>
                            <form method="post" action='<c:url value="/removeExperience/${item.id}"/>'>
                                <input type="submit" class="btn btn-danger pull-left" value="Delete"/>
                            </form>
                        </div>
                        <div class="flex-shrink-0"><span class="text-primary">${item.dateFrom} - ${item.dateTo}</span></div>

                    </div>
                    </c:forEach>



                </div>
            </section>
        </div>
        <form method="post" action='<c:url value="/addExperience"/>'>
        <!-- Content Row -->
        <div class="row">
            <div class="col-xl-12 col-md-12 mb-12">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Company name</label>
                            <div class="col-10">
                                <input class="form-control" type="text" name="title" placeholder="enter company name">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Position</label>
                            <div class="col-10">
                                <input class="form-control" type="text" name="subtitle" placeholder="enter position name">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-2 col-form-label">Position description</label>
                            <div class="col-10">
                                <input class="form-control" type="text" name="description" placeholder="enter position description">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-2 col-form-label">Start of employment</label>
                            <div class="col-10">
                                <input class="form-control" type="date" name="dateFrom"
                                       min="1901-12-31" max="<fmt:formatDate pattern = "yyyy-MM-dd" value = "${now}"/>"/>

                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-2 col-form-label">End of employment</label>
                            <div class="col-10">
                                <input class="form-control" type="date" name="dateTo"
                                       min="1901-12-31" max="<fmt:formatDate pattern = "yyyy-MM-dd" value = "${now}"/>"/>


                            </div>
                        </div>






                    </div>
                </div>
            </div>
        </div>
            <input class="btn btn-success pull-left" type="submit" value="Send" id="searchButton"/>
        </form>
        <%@include file="../dynamic/javaScript.jspf"%>
    </body>
</html>
