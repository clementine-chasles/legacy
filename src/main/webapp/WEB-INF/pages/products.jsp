<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 10/09/2018
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
    <title>Products</title>
    <link rel="stylesheet" href="<c:url value='/resources/styles/bootstrap4/bootstrap.min.css'/>" types="text/css" >
    <link href="<c:url value='/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css'/>" rel="stylesheet" types="text/css">
    <link rel="stylesheet" types="text/css" href="<c:url value='/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css'/>">
    <link rel="stylesheet" types="text/css" href="<c:url value='/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css'/>">
    <link rel="stylesheet" types="text/css" href="<c:url value='/resources/plugins/OwlCarousel2-2.2.1/animate.css'/>">
    <link rel="stylesheet" types="text/css" href="<c:url value='/resources/styles/main_styles.css'/>">
    <link rel="stylesheet" types="text/css" href="<c:url value='/resources/styles/responsive.css'/>">
    <link rel="stylesheet" types="text/css" href="<c:url value='/resources/styles/custom.css'/>">
</head>
<body>

<div class="super_container">


    <header class="header trans_300">


        <div class="top_nav">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="top_nav_left">free shipping on all u.s orders over $50</div>
                    </div>
                    <div class="col-md-6 text-right">
                        <div class="top_nav_right">
                            <ul class="top_nav_menu">


                                <li class="currency">
                                    <a href="#">
                                        usd
                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                    <ul class="currency_selection">
                                        <li><a href="#">cad</a></li>
                                        <li><a href="#">aud</a></li>
                                        <li><a href="#">eur</a></li>
                                        <li><a href="#">gbp</a></li>
                                    </ul>
                                </li>
                                <li class="language">
                                    <a href="#">
                                        English
                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                    <ul class="language_selection">
                                        <li><a href="#">French</a></li>
                                        <li><a href="#">Italian</a></li>
                                        <li><a href="#">German</a></li>
                                        <li><a href="#">Spanish</a></li>
                                    </ul>
                                </li>
                                <li class="account">
                                    <a href="#">
                                        My Account
                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                    <ul class="account_selection">
                                        <li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i>Sign In</a></li>
                                        <li><a href="#"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main Navigation -->

        <div class="main_nav_container">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-right">
                        <div class="logo_container">
                            <a href="#">book<span>worm</span></a>
                        </div>
                        <nav class="navbar">
                            <ul class="navbar_menu">
                                <li><a href="/">home</a></li>
                                <li><a href="search">shop</a></li>
                                <li><a href="#">promotion</a></li>
                                <li><a href="#">blog</a></li>
                                <li><a href="contact.html">contact</a></li>
                            </ul>
                            <ul class="navbar_user">
                                <li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i></a></li>
                                <li class="checkout">
                                    <a href="#">
                                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                        <span id="checkout_items" class="checkout_items">2</span>
                                    </a>
                                </li>
                            </ul>
                            <div class="hamburger_container">
                                <i class="fa fa-bars" aria-hidden="true"></i>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

    </header>

    <div class="fs_menu_overlay"></div>
    <div class="hamburger_menu">
        <div class="hamburger_close"><i class="fa fa-times" aria-hidden="true"></i></div>
        <div class="hamburger_menu_content text-right">
            <ul class="menu_top_nav">
                <li class="menu_item has-children">
                    <a href="#">
                        usd
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="menu_selection">
                        <li><a href="#">cad</a></li>
                        <li><a href="#">aud</a></li>
                        <li><a href="#">eur</a></li>
                        <li><a href="#">gbp</a></li>
                    </ul>
                </li>
                <li class="menu_item has-children">
                    <a href="#">
                        English
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="menu_selection">
                        <li><a href="#">French</a></li>
                        <li><a href="#">Italian</a></li>
                        <li><a href="#">German</a></li>
                        <li><a href="#">Spanish</a></li>
                    </ul>
                </li>
                <li class="menu_item has-children">
                    <a href="#">
                        My Account
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="menu_selection">
                        <li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i>Sign In</a></li>
                        <li><a href="#"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a></li>
                    </ul>
                </li>
                <li class="menu_item"><a href="/">home</a></li>
                <li class="menu_item"><a href="search">shop</a></li>
                <li class="menu_item"><a href="#">promotion</a></li>
                <li class="menu_item"><a href="#">blog</a></li>
                <li class="menu_item"><a href="#">contact</a></li>
            </ul>
        </div>
    </div>

    <!-- search bar -->

    <form:form method="POST"
           action="search" modelAttribute="searchBean">

            <div class="container" style="margin-top: 200px">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group" id="imaginary_container">
                            <div class="input-group stylish-input-group">
                                <form:input path="name" class="form-control" placeholder="Search" />
                                <span class="input-group-addon">
                                        <button name="name">
                                            <span class="glyphicon glyphicon-search"></span>
                                        </button>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container" style="margin-top: 20px;">
                <div class="row">
                    <div class="col-lg-12">
                        <c:forEach items="${types}" var="t">
                            <div style="display: inline; padding: 10px;">
                                <a class="checkbox"><label>
                                    <form:checkbox path="types" checked="checked" value="${t}" />
                                        ${t}</label>
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>

        <div class="container">
            <div class="row">
                <div class="offset-lg-3 col-lg-6 col-sm-12">
                    <center><button type="submit" class="btn btn-light clickable" style="width: 100%;">Search</button></center>
                </div>
            </div>
        </div>

    </form:form>

        <!-- Footer -->

        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center">
                            <ul class="footer_nav">
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">FAQs</a></li>
                                <li><a href="contact.html">Contact us</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer_nav_container">
                            <div class="cr">©2018 All Rights Reserverd. This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#">Colorlib</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

    </div>

    <script src="<c:url value='resources/js/jquery-3.2.1.min.js'/>"></script>
    <script src="<c:url value='resources/styles/bootstrap4/popper.js'/>"></script>
    <script src="<c:url value='resources/styles/bootstrap4/bootstrap.min.js'/>"></script>
    <script src="<c:url value='resources/plugins/Isotope/isotope.pkgd.min.js'/>"></script>
    <script src="<c:url value='resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js'/>"></script>
    <script src="<c:url value='resources/plugins/easing/easing.js'/>"></script>
    <script src="<c:url value='resources/js/custom.js'/>"></script>

<script>

    $( "#my-dropdown-button" ).click(function() {
        if($(".dropdown-menu-right").css('display') === 'none') {
            $(".dropdown-menu-right").show();
        } else {
            $(".dropdown-menu-right").hide();
        }
    });

</script>

</body>
</html>
