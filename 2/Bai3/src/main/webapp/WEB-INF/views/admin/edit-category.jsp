<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="model.User" %>
<%
    session = request.getSession(false);
    User user = null;
    if (session != null) {
        user = (User) session.getAttribute("account");
    }

    if (user == null) {
        // Nếu chưa login thì redirect về /home
        response.sendRedirect(request.getContextPath() + "/home");
        return; // dừng JSP tại đây
    }
%>
<html>
<head>
    <title>Chỉnh sửa danh mục</title>
    <style>
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="file"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
        }
        img {
            max-width: 100px;
            max-height: 100px;
            margin-bottom: 10px;
        }
        button {
            padding: 10px 15px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <h1>Chỉnh sửa danh mục</h1>
    <form action="${pageContext.request.contextPath}/admin/category/edit" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="${category.id}"/>
        
        <div class="form-group">
            <label for="name">Tên danh mục:</label>
            <input type="text" id="name" name="name" value="${category.name}" required/>
        </div>
        
        <div class="form-group">
            <label>Ảnh hiện tại:</label>
            <c:if test="${not empty category.icon}">
                <img src="${pageContext.request.contextPath}/image?fname=${category.icon}" alt="${category.name}"/>
            </c:if>
            <c:if test="${empty category.icon}">
                <p>Chưa có ảnh</p>
            </c:if>
            
            <label for="icon">Ảnh biểu tượng mới:</label>
            <input type="file" id="icon" name="icon" accept="image/*"/>
        </div>
        
        <button type="submit">Cập nhật</button>
        <button type="reset">Hủy</button>
        <a href="${pageContext.request.contextPath}/admin/category/list">Quay lại</a>
    </form>
</body>
</html>
