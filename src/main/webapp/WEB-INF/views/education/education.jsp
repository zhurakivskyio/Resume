<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../dynamic/css.jspf"%>
    <body id="page-top">

    <!-- Navigation-->
    <%@include file="../dynamic/navigationMain.jspf"%>
        <!-- Page Content-->
        <div class="container-fluid p-0">
            <!-- Education-->
            <section class="resume-section" id="education">
                <div class="resume-section-content">
                    <h2 class="mb-5">Education</h2>
                    <c:forEach items="${educationModel}" var="item">
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                            <h3 class="mb-0">${item.title}</h3>
                            <div class="subheading mb-3">${item.subtitle}</div>
                            <div>${item.description}</div>
                            <a class="nav-link" href='<c:url value="/editEducation/${item.id}"/>'
                            role="button">Edit</a>
                            <form method="post" action='<c:url value="/removeEducation/${item.id}"/>'>
                            <input type="submit" class="btn btn-danger pull-left" value="Delete"/>
                            </form>

                        </div>

                        <div class="flex-shrink-0"><span class="text-primary"><fmt:formatDate pattern = "yyyy.MM" value = "${item.dateFrom}" /> - <fmt:formatDate pattern = "yyyy.MM" value = "${item.dateTo}" /></span></div>
                    </div>
                    </c:forEach>
                </div>
            </section>
        </div>

    <form method="post" action='<c:url value="/addEducation"/>'>
        <!-- Content Row -->
        <div class="row">
            <div class="col-xl-12 col-md-12 mb-12">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Educational establishment name</label>
                            <div class="col-10">
                                <input class="form-control" type="text" name="title" placeholder="enter educational establishment name">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Major</label>
                            <div class="col-10">
                                <input class="form-control" type="text" name="subtitle" placeholder="enter major">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-2 col-form-label">Description</label>
                            <div class="col-10">
                                <input class="form-control" type="text" name="description" placeholder="enter description">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-2 col-form-label">Start of studying</label>
                            <div class="col-10">
                                <input class="form-control" type="date" name="dateFrom"
                                       min="1901-12-31" max="<fmt:formatDate pattern = "yyyy-MM-dd" value = "${now}"/>"/>

                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-2 col-form-label">End of studying</label>
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
