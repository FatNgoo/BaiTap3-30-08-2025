<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List, model.Category, service.CategoryServiceImpl" %>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    // Lấy danh sách category và đặt vào request
    CategoryServiceImpl categoryService = new CategoryServiceImpl();
    List<Category> categories = categoryService.getAll();
    request.setAttribute("categories", categories);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <%@ include file="topbar.jsp" %>
    <div class="container mt-4">
        <div class="row mb-4">
            <div class="col">
                <h4 class="text-muted">Danh mục sản phẩm</h4>
                <hr>
            </div>
        </div>

        <div class="row">
            <c:forEach items="${requestScope.categories}" var="c">
                <div class="col-md-4 col-lg-3 mb-4">
                    <div class="card h-100 text-center shadow-sm">
                        <div class="card-body d-flex flex-column justify-content-center">
                            <i class="${c.icon} fa-3x text-primary mb-3"></i>
                            <h5 class="card-title">${c.name}</h5>
                            <a href="#" class="btn btn-outline-primary mt-auto">Xem sản phẩm</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
    </div>
</body>
</html>
