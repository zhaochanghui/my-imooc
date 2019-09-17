<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<!-- saved from url=(0043)https://demo.wpcharms.com/blog-kit/default/ -->
<html lang="en-US">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>火星人的博客</title>

    <script src="<%=request.getContextPath()%>/assets/wp-emoji-release.min.js" type="text/javascript" defer=""></script>
    <style type="text/css">
        img.wp-smiley,
        img.emoji {
            display: inline !important;
            border: none !important;
            box-shadow: none !important;
            height: 1em !important;
            width: 1em !important;
            margin: 0 .07em !important;
            vertical-align: -0.1em !important;
            background: none !important;
            padding: 0 !important;
        }
    </style>
    <link rel="stylesheet" id="wp-block-library-css"
          href="<%=request.getContextPath()%>/assets/home_files/style.min.css" type="text/css" media="all">
    <link rel="stylesheet" id="wp-block-library-theme-css"
          href="<%=request.getContextPath()%>/assets/home_files/theme.min.css" type="text/css" media="all">
    <link rel="stylesheet" id="blog-kit-fonts-css" href="<%=request.getContextPath()%>/assets/home_files/css"
          type="text/css" media="all">
    <link rel="stylesheet" id="jquery-meanmenu-css" href="<%=request.getContextPath()%>/assets/home_files/meanmenu.css"
          type="text/css" media="all">
    <link rel="stylesheet" id="font-awesome-css"
          href="<%=request.getContextPath()%>/assets/home_files/font-awesome.min.css" type="text/css" media="all">
    <link rel="stylesheet" id="blog-kit-style-css" href="<%=request.getContextPath()%>/assets/home_files/style.css"
          type="text/css" media="all">
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/home_files/jquery.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/home_files/jquery-migrate.min.js"></script>

</head>

<body class="home blog wp-embed-responsive hfeed global-layout-right-sidebar">


<div id="page" class="site">
    <header id="masthead" class="site-header">
        <div class="bottom-header">
            <div class="container">
                <div class="inner-header-wrap">
                    <div class="site-branding">

                        <h1 class="site-title"><a href="<%=request.getContextPath()%>/home/article_index" rel="home">developer</a>
                        </h1>

                    </div><!-- .site-branding -->

                    <div class="main-navigation-wrapper">
                        <div id="main-nav" class="clear-fix">
                            <nav id="site-navigation" class="main-navigation" role="navigation">
                                <div class="wrap-menu-content">
                                    <div class="menu-main-menu-container">
                                        <ul id="primary-menu" class="menu">
                                            <li id="menu-item-17"
                                                class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-17">
                                                <a href="<%=request.getContextPath()%>/home/article_index" aria-current="page">首页</a></li>

                                            <c:forEach items="${sessionScope.navsort}" var="sort" varStatus="idxStatus">
                                                <c:if test="${sort.pid>0}">
                                                <li id="menu-item-18"
                                                    class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-18">
                                                    <a href="<%=request.getContextPath()%>/home/article_cate?cate=${sort.id}">${sort.name}
                                                        </a></li>
                                                </c:if>
                                            </c:forEach>


                                            <%--<li id="menu-item-18"--%>
                                                <%--class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-18">--%>
                                                <%--<a href="<%=request.getContextPath()%>/article_cate?cate=2">java--%>
                                                    <%--Style</a></li>--%>
                                            <%--<li id="menu-item-19"--%>
                                                <%--class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-19">--%>
                                                <%--<a href="https://demo.wpcharms.com/blog-kit/default/category/fashion/">Fashion</a>--%>
                                            <%--</li>--%>
                                            <%--<li id="menu-item-20"--%>
                                                <%--class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-20">--%>
                                                <%--<a href="https://demo.wpcharms.com/blog-kit/default/category/photography/">Photography</a>--%>
                                            <%--</li>--%>
                                            <%--<li id="menu-item-26"--%>
                                                <%--class="menu-item menu-item-type-custom menu-item-object-custom menu-item-26">--%>
                                                <%--<a target="_blank" rel="noopener noreferrer"--%>
                                                   <%--href="https://wpcharms.com/item/blog-kit-pro/">Buy Pro</a></li>--%>
                                        </ul>
                                    </div>
                                </div><!-- .menu-content -->
                            </nav><!-- #site-navigation -->
                        </div> <!-- #main-nav -->


                        <div class="last-menu-item blog-kit-social-icons">
                            <div class="menu-social-menu-container">
                                <ul id="menu-social-menu" class="menu">
                                    <li id="menu-item-21"
                                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-21"><a
                                            target="_blank" rel="noopener noreferrer" href="https://facebook.com/"><span
                                            class="screen-reader-text">facebook</span></a></li>
                                    <li id="menu-item-22"
                                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22"><a
                                            target="_blank" rel="noopener noreferrer" href="https://twitter.com/"><span
                                            class="screen-reader-text">twitter</span></a></li>
                                    <li id="menu-item-23"
                                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-23"><a
                                            target="_blank" rel="noopener noreferrer"
                                            href="https://instagram.com/"><span
                                            class="screen-reader-text">instagram</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header><!-- #masthead -->