<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>展示所有用户</title>
    <!--辅助bootstrap获取更好移动端排列-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--引入bootstrap核心样式-->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body>

    <table class="table table-responsive table-hover">
        <tr>
            <td>Id</td>
            <td>用户名</td>
            <td>密码</td>
            <td>操作</td>
        </tr>
        <C:forEach items="${requestScope.list}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>
                    <button type="button" class="btn btn-primary">修改</button>
                    <button type="button" class="btn btn-danger">删除</button>
                </td>
            </tr>
        </C:forEach>
    </table>

</body>
</html>
