<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>会员注册</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<%@ include file="navi.jsp"%>
<div class="container register">
    <h1>HotelWorld 会员注册</h1>
    <hr/>
    <form:form action="/users/add" method="post" commandName="user" role="form">
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">姓名:</label>
            <div class="col-sm-8 col-xs-8">
            <input type="text" class="form-control" id="name" name="name" placeholder="姓名"/>
            </div>
        </div>
        <div class="form-group">
            <label for="idcard" class="col-sm-2 control-label">身份证:</label>
            <div class="col-sm-8 col-xs-8">
            <input type="text" class="form-control" id="idcard" name="idcard" placeholder="身份证"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">性别:</label>
            <div class="col-sm-8 col-xs-8">
                <div class="radio radio-inline" style="padding-left: 0;">
                    <label>
                        <input type="radio" name="gender" id="optionsRadios1" value="female" checked>女
                    </label>
                </div>
                <div class="radio radio-inline">
                    <label>
                        <input type="radio" name="gender" id="optionsRadios2" value="male">男
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-2 control-label">密码:</label>
            <div class="col-sm-8 col-xs-8">
            <input type="password" class="form-control" id="password" name="password" placeholder="密码">
            </div>
        </div>
        <div class="form-group">
            <button type="submit" class="submit btn btn-sm btn-success">提交</button>
        </div>
    </form:form>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>