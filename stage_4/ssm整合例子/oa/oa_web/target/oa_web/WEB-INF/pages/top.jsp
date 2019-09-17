<%--
  Created by IntelliJ IDEA.
  User: zch
  Date: 2019/9/7
  Time: 15:55
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

    <title>admin</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/assets/admin_files/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="<%=request.getContextPath()%>/assets/admin_files/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/assets/admin_files/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="<%=request.getContextPath()%>/assets/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<%=request.getContextPath()%>/assets/admin_files/ie-emulation-modes-warning.js.下载"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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
            <a class="navbar-brand" href="https://v3.bootcss.com/examples/dashboard/#">后台</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="https://v3.bootcss.com/examples/dashboard/#">Dashboard</a></li>
                <li><a href="https://v3.bootcss.com/examples/dashboard/#">Settings</a></li>
                <li><a href="https://v3.bootcss.com/examples/dashboard/#">Profile</a></li>
                <li><a href="https://v3.bootcss.com/examples/dashboard/#">Help</a></li>
                <li><a href="<%=request.getContextPath()%>/self">个人中心</a></li>
                <li><a href="<%=request.getContextPath()%>/to_chanagepwd">修改密码</a></li>
                <li><a href="<%=request.getContextPath()%>/quit">退出</a></li>
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
                <li class="active"><a href="https://v3.bootcss.com/examples/dashboard/#">Overview <span class="sr-only">(current)</span></a></li>
                <li><a href="<%=request.getContextPath()%>/department/list">部门列表</a></li>
                <li><a href="<%=request.getContextPath()%>/employee/list">员工列表</a></li>

                <li><a href="<%=request.getContextPath()%>/claim_voucher/to_add">填写报销单</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="<%=request.getContextPath()%>/claim_voucher/self">个人报销单</a></li>
                <li><a href="<%=request.getContextPath()%>/claim_voucher/deal">待处理报销单</a></li>
                <%--<li><a href="https://v3.bootcss.com/examples/dashboard/">Nav item again</a></li>--%>
                <%--<li><a href="https://v3.bootcss.com/examples/dashboard/">One more nav</a></li>--%>
                <%--<li><a href="https://v3.bootcss.com/examples/dashboard/">Another nav item</a></li>--%>
                <%--<li><a href="https://v3.bootcss.com/examples/dashboard/">More navigation</a></li>--%>
            </ul>
            <ul class="nav nav-sidebar">
                <%--<li><a href="https://v3.bootcss.com/examples/dashboard/">Nav item again</a></li>--%>
                <%--<li><a href="https://v3.bootcss.com/examples/dashboard/">One more nav</a></li>--%>
                <%--<li><a href="https://v3.bootcss.com/examples/dashboard/">Another nav item</a></li>--%>
            </ul>
        </div>





