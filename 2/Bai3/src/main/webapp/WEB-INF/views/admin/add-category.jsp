<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<%
    User user = (User) session.getAttribute("account");
    if (user == null) {
        // Nếu chưa login thì redirect về /home
        response.sendRedirect(request.getContextPath() + "/home");
        return; // dừng JSP tại đây
    }
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm danh mục</title>
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
        button {
            padding: 10px 15px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <h1>Thêm danh mục mới</h1>
    <form action="${pageContext.request.contextPath}/admin/category/add" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Tên danh mục:</label>
            <input type="text" id="name" name="name" placeholder="Nhập tên danh mục" required/>
        </div>
        <div class="form-group">
            <label for="icon">Ảnh biểu tượng:</label>
            <input type="file" id="icon" name="icon" accept="image/*"/>
        </div>
        <button type="submit">Thêm</button>
        <button type="reset">Hủy</button>
        <a href="${pageContext.request.contextPath}/admin/category/list">Quay lại</a>
    </form>
</body>
</html>
