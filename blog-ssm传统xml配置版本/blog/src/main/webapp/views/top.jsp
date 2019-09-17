<%--
  Created by IntelliJ IDEA.
  User: zch
  Date: 2019/9/14
  Time: 0:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0042)https://v3.bootcss.com/examples/dashboard/ -->
<html lang="zh-CN"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://v3.bootcss.com/favicon.ico">

    <title>火星人的博客</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/assets/common/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="<%=request.getContextPath()%>/assets/common/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/assets/common/dashboard.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/assets/wangEditor-3.1.1/release/wangEditor.css" rel="stylesheet">

    <script src="<%=request.getContextPath()%>/assets/common/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/wangEditor-3.1.1/release/wangEditor.js"></script>


</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="https://v3.bootcss.com/examples/dashboard/#">后台系统</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="https://v3.bootcss.com/examples/dashboard/#">Dashboard</a></li>
                <li><a href="https://v3.bootcss.com/examples/dashboard/#">Settings</a></li>
                <li><a href="https://v3.bootcss.com/examples/dashboard/#">Profile</a></li>
                <li><a href="https://v3.bootcss.com/examples/dashboard/#">Help</a></li>
                <li><a href="<%=request.getContextPath()%>/loginout">退出</a></li>
                <li><a href="<%=request.getContextPath()%>/home/article_index">home</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li><a href="https://v3.bootcss.com/examples/dashboard/#">Overview <span class="sr-only">(current)</span></a></li>
                <li><a href="<%=request.getContextPath()%>/to_login">login</a></li>
                <li><a href="<%=request.getContextPath()%>/article/to_add">add article</a></li>
                <li><a href="<%=request.getContextPath()%>/article/list">list artice</a></li>
                <li><a href="<%=request.getContextPath()%>/category/to_add">add cate</a></li>
                <li><a href="<%=request.getContextPath()%>/category/list">list cate</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="<%=request.getContextPath()%>/to_file">文件上传</a></li>
                <li><a href="https://v3.bootcss.com/examples/dashboard/">Nav item again</a></li>
                <li><a href="https://v3.bootcss.com/examples/dashboard/">One more nav</a></li>
                <li><a href="https://v3.bootcss.com/examples/dashboard/">Another nav item</a></li>
                <li><a href="https://v3.bootcss.com/examples/dashboard/">More navigation</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="https://v3.bootcss.com/examples/dashboard/">Nav item again</a></li>
                <li><a href="https://v3.bootcss.com/examples/dashboard/">One more nav</a></li>
                <li><a href="https://v3.bootcss.com/examples/dashboard/">Another nav item</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
