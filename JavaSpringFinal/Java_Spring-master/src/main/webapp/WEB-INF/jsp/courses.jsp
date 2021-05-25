<html>
<head>
    <title>Courses</title>
    <jsp:include page="layout/head.jsp"/>
</head>
<body>
<header id="header">
    <%@include file="layout/navbar.jsp"%>
</header>
<jsp:useBean id="cou" type="java.util.List<kz.iitu.courseSystem.entities.cources.Course>" scope="request"/>

<div class="hero-area section">

    <div class="bg-image bg-parallax overlay" style="background-image:url(assets/img/page-background.jpg)"></div>

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 text-center">
                <ul class="hero-area-tree">
                    <li><a href="index.jsp">Home</a></li>
                    <li>Courses</li>
                </ul>
                <h1 class="white-text">Courses</h1>
            </div>
        </div>
    </div>
</div>

<div id="courses" class="section">

    <div class="container">

        <div class="row">
            <div class="section-header text-center">
                <h2>Explore Courses</h2>
                <p class="lead">Libris vivendo eloquentiam ex ius, nec id splendide abhorreant.</p>
            </div>
        </div>


        <div id="courses-wrapper">

            <div class="row">
            <%for (int i = 0; i < cou.size(); i++){%>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="course">
                        <a href="#" class="course-img">
                            <img src="<%=cou.get(i).getPathImg()%>" alt="">
                            <i class="course-link-icon fa fa-link"></i>
                        </a>
                        <a class="course-title" href="#"><%=cou.get(i).getDescription()%></a>
                        <div class="course-details">
                            <span class="course-category"><%=cou.get(i).getCourseType()%></span>
                            <span class="course-price course-free"><%=cou.get(i).getPrice()%> tg</span>
                        </div>
                    </div>
                </div>
                <%}%>

        </div>

        <div class="row">
            <div class="center-btn">
                <a class="main-button icon-button" href="#">More Courses</a>
            </div>
        </div>
    </div>

</div>

<jsp:include page="layout/footer.jsp"/>
</body>
</html>
