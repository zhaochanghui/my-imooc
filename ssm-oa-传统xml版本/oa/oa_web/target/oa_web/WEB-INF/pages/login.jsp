<%--
  Created by IntelliJ IDEA.
  User: zch
  Date: 2019/9/7
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://v3.bootcss.com/favicon.ico">

    <title>登录</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/assets/admin_files/bootstrap.min.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/assets/admin_files/signin.css" rel="stylesheet">



    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">

    <form class="form-signin" action="<%=request.getContextPath()%>/login" method="post">
        <h2 class="form-signin-heading">login</h2>
        <label  class="sr-only">Email address</label>
        <input type="text" id="sn" class="form-control" placeholder="sn" required autofocus name="sn">
        <label  class="sr-only">Password</label>
        <input type="password" id="pwd" class="form-control" placeholder="Password" name="pwd"  required>

        <button class="btn btn-lg btn-primary btn-block" type="submit">login</button>
    </form>

</div> <!-- /container -->


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<%=request.getContextPath()%>/assets/admin_files/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
