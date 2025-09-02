<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow">
                    <div class="card-body text-center">
                        <h2 class="mb-4 text-success">Chào mừng bạn đã đăng nhập thành công!</h2>
                        <h4 class="mb-3">Xin chào, <span class="text-primary">${sessionScope.username}</span>!</h4>
                        <p>Đây là trang chủ của hệ thống.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
    </div>
</body>
</html>
