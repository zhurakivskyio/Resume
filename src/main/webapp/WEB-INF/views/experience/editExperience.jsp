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

        </div>
    </section>
</div>
<form method="post" action='<c:url value="/editExperience/${experienceModel.id}"/>'>
    <!-- Content Row -->
    <div class="row">
        <div class="col-xl-12 col-md-12 mb-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <div class="form-group row">
                        <label class="col-2 col-form-label">Company name</label>
                        <div class="col-10">
                            <input class="form-control" type="text" name="title" value="${experienceModel.title}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-2 col-form-label">Position</label>
                        <div class="col-10">
                            <input class="form-control" type="text" name="subtitle" value="${experienceModel.subtitle}">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-2 col-form-label">Position description</label>
                        <div class="col-10">
                            <input class="form-control" type="text" name="description" value="${experienceModel.description}">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-2 col-form-label">Start of employment</label>
                        <div class="col-10">
                            <input class="form-control" type="date" name="dateFrom"
                                   value="${experienceModel.dateFrom}"/>

                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-2 col-form-label">End of employment</label>
                        <div class="col-10">
                            <input class="form-control" type="date" name="dateTo"
                                   value="${experienceModel.dateFrom}"/>

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
