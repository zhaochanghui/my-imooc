<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://v3.bootcss.com/favicon.ico">

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/assets/common/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="<%=request.getContextPath()%>/assets/common/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/assets/common/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="<%=request.getContextPath()%>/assets/common/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<%=request.getContextPath()%>/assets/common/ie-emulation-modes-warning.js"></script>

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
        <label for="inputEmail" class="sr-only">name</label>
        <input type="text" id="inputEmail" class="form-control" name="name">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" name="pwd">
        <div class="checkbox">
            <%--<label>--%>
                <%--<input type="checkbox" value="remember-me"> Remember me--%>
            <%--</label>--%>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
    </form>


<!--
    <form action="<%=request.getContextPath()%>/login" method="post">
        <input type="text" name="name"><br>
        <img src="<%=request.getContextPath()%>/kaptcha.jpg" width="200" id="kaptchaImage" title="看不清，点击换一张" />
        <script type="text/javascript">
            $(function() {
                $('#kaptchaImage').click(function() {$(this).attr('src','/blog/kaptcha.jpg?' + Math.floor(Math.random() * 100));});
            });
        </script>
        <br /><small>看不清，点击换一张</small>
        <button>提交</button>
    </form> -->

</div> <!-- /container -->


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<%=request.getContextPath()%>/assets/common/ie10-viewport-bug-workaround.js"></script>


</body></html>