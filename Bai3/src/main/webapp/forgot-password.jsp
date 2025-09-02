<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Quên mật khẩu</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-5">
                <div class="card shadow">
                    <div class="card-body">
                        <h2 class="text-center mb-4 text-muted">Quên mật khẩu</h2>
                        <c:if test="${alert != null}">
                            <div class="alert alert-danger text-center">${alert}</div>
                        </c:if>
                        <c:if test="${message != null}">
                            <div class="alert alert-success text-center">${message}</div>
                        </c:if>
                        <form action="forgot-password" method="post">
                            <div class="mb-3 input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                <input type="text" class="form-control" name="username" placeholder="Tên đăng nhập" required>
                            </div>
                            <div class="mb-3 input-group">
                                <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                                <input type="email" class="form-control" name="email" placeholder="Email" required>
                            </div>
                            <div class="mb-3 input-group">
                                <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                <input type="password" class="form-control" name="newPassword" placeholder="Mật khẩu mới" required>
                            </div>
                            <div class="mb-3 input-group">
                                <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                <input type="password" class="form-control" name="confirmPassword" placeholder="Nhập lại mật khẩu mới" required>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Đổi mật khẩu</button>
                        </form>
                        <p class="text-center mt-3">
                            <a href="login.jsp">Quay lại đăng nhập</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
