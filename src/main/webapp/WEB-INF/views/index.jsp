<%
    String path = request.getContextPath();
    String basePath = "";
    if (request.getServerPort() == 80) {
        basePath = request.getScheme() + "://" + request.getServerName() + path + "/";
    } else {
        basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    }
    pageContext.setAttribute("basePath", basePath);
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>test424</title>
    <script type="text/javascript" src="../../jquery-easyui-1.3.3/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../../bootstrap/css/bootstrap-reset.css">
    <link rel="stylesheet" type="text/css" href="../../bootstrap/css/jquery-ui-1.10.3.css">
    <link rel="stylesheet" type="text/css" href="../../bootstrap/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="../../resource/css/style.css"/>
</head>
<body>
<div class="container">
    <form class="form-signin">
        <div class="form-signin-heading text-center">
            <h1 class="sign-title">注册</h1>
            <h2 style="color:#008CBA;">test424</h2>
        </div>
        <div class="login-wrap">
            <input type="text" name="username" class="form-control" placeholder="请输入用户名" autofocus>
            <input type="password" name="password" class="form-control" placeholder="请输入密码">
            请输入验证码：<input type="text" name="code" style="width: 80px;"/>
            <img id="imgObj" alt="验证码" src="${basePath}/getCode">
            <a href="#" onclick="changeImg()">换一张</a><br/> <input
                type="submit" value="提交"/>
            <button id="submitbtn" class="btn btn-lg btn-login btn-block" type="button">
                <i class="fa fa-check"></i> <span style="font-size:25px;">注册</span>
            </button>
            <h4 style="text-align:center;line-height:40px;">已有账号？<a href="${basePath}index.do">返回登录</a></h4>
        </div>
    </form>
</div>
<script>
    $(function() {

    });

    function changeImg() {
        var imgSrc = $("#imgObj");
        var src = imgSrc.attr("src");
        imgSrc.attr("src", chgUrl(src));
    }

    // 时间戳
    // 为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳
    function chgUrl(url) {

        var timestamp = (new Date()).valueOf();
        if(url.indexOf("?")>-1){
            url=url+"timestamp="+timestamp
        }else{
            url=url+"?timestamp="+timestamp
        }
        return url
    }



</script>
</body>
</html>
