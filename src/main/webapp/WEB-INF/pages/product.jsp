<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 10/09/2018
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<link rel="stylesheet" href="<c:url value='/resources/styles/bootstrap4/bootstrap.min.css'/>" types="text/css" >
<link href="<c:url value='/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css'/>" rel="stylesheet" types="text/css">
<link rel="stylesheet" types="text/css" href="<c:url value='/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css'/>">
<link rel="stylesheet" types="text/css" href="<c:url value='/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css'/>">
<link rel="stylesheet" types="text/css" href="<c:url value='/resources/plugins/OwlCarousel2-2.2.1/animate.css'/>">
<link rel="stylesheet" types="text/css" href="<c:url value='/resources/styles/main_styles.css'/>">
<link rel="stylesheet" types="text/css" href="<c:url value='/resources/styles/responsive.css'/>">
<link rel="stylesheet" types="text/css" href="<c:url value='/resources/styles/custom.css'/>">
<body>

<div class="super_container">

    <header class="header trans_300"><div class="top_nav">
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
                                <li><a href="search"><i class="fa fa-search" aria-hidden="true"></i></a></li>
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

    <div class="container" style="margin-top: 200px;">
        <div class="row">
            <div class="col-lg-8 col-sm-12" style="margin-top: 20px; margin-bottom: 10px">
                <div class="my-box">
                    <div class="row">
                        <div class="col-lg-6">
                            <c:if test="${p.url == null}">
                                <img style="width:100%;" src="<c:url value='resources/images/book_icon.png'/>"/>
                            </c:if>
                            <c:if test="${p.url != null}">
                                <img style="width:100%;" src="${p.url}"/>
                            </c:if>
                        </div>
                        <div class="col-lg-6">
                            <div class="favorite favorite_left"></div>
                            <div class="product_info">
                                <h6 class="product_name">${p.name}</h6>
                                <div class="product_price">
                                    ${p.newPrice}<c:if test="${p.sale > 0}"><span>${p.price}</span></c:if>
                                </div>
                                <div style="text-align: justify">${p.description}</div>
                            </div>
                            <div style="bottom: 15px; position: absolute; text-align: center">
                                <button type="button" class="btn btn-light">Add to basket</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="<c:url value='resources/js/jquery-3.2.1.min.js'/>"></script>
<script src="<c:url value='resources/styles/bootstrap4/popper.js'/>"></script>
<script src="<c:url value='resources/styles/bootstrap4/bootstrap.min.js'/>"></script>
<script src="<c:url value='resources/plugins/Isotope/isotope.pkgd.min.js'/>"></script>
<script src="<c:url value='resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js'/>"></script>
<script src="<c:url value='resources/plugins/easing/easing.js'/>"></script>
<script src="<c:url value='resources/js/custom.js'/>"></script>

</body>
</html>
