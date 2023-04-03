<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="dynamic/css.jspf"%>
    <body id="page-top">
        <!-- Navigation-->
        <%@include file="dynamic/navigationMain.jspf"%>
        <!-- Page Content-->
        <div class="container-fluid p-0">
            <!-- About-->
            <section class="resume-section" id="about">
                <div class="resume-section-content">
                    <h1 class="mb-0">
                        Clarence
                        <span class="text-primary">Taylor</span>
                    </h1>
                    <div class="subheading mb-5">
                        3542 Berry Street · Cheyenne Wells, CO 80810 · (317) 585-8468 ·
                        <a href="mailto:name@email.com">name@email.com</a>
                    </div>
                    <p class="lead mb-5">I am experienced in leveraging agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition.</p>
                    <div class="social-icons">
                        <a class="social-icon" href='<c:url value="https://www.linkedin.com/in/aleksander-zhurakivskyi"/>'><i class="fab fa-linkedin-in"></i></a>
                        <a class="social-icon" href='<c:url value="https://github.com/zhurakivskyio"/>'><i class="fab fa-github"></i></a>
                        <a class="social-icon" href='<c:url value="https://www.facebook.com/alexandr.zhurakovskiy"/>'><i class="fab fa-facebook-f"></i></a>

                    </div>
                </div>
            </section>
        </div>
        <%@include file="dynamic/javaScript.jspf"%>
    </body>
</html>
