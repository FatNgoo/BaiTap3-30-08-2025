<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Register</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	rel="stylesheet">
<style>
body.bg-light {
    background-color: #f8fafc !important;
}
.card {
    background-color: #fff;
    color: #23272b;
    border-radius: 6px !important;
    border: 2px solid #e0e0e0;
    box-shadow: 0 2px 8px rgba(60,60,60,0.07);
}
.form-control, .input-group-text {
    background-color: #f5f7fa;
    color: #23272b;
    border: 2px solid #d1d5db;
    border-radius: 4px !important;
    font-weight: 500;
}
.form-control:focus {
    background-color: #fff;
    color: #23272b;
    border-color: #2563eb;
    box-shadow: none;
}
.input-group-text {
    border-right: 0;
}
.form-control {
    border-left: 0;
}
.text-muted {
    color: #6c757d !important;
}
a, a:visited {
    color: #2563eb;
    text-decoration: underline;
}
a:hover {
    color: #1d4ed8;
}
.btn-primary {
    background-color: #2563eb;
    border-color: #2563eb;
    border-radius: 4px !important;
    font-weight: 600;
    letter-spacing: 0.5px;
}
.btn-primary:hover {
    background-color: #1d4ed8;
    border-color: #1d4ed8;
}
.alert-danger {
    background-color: #ffe5e9;
    color: #b91c1c;
    border-color: #fca5a5;
    border-radius: 4px !important;
    font-weight: 500;
}
.card, .form-control, .input-group-text, .btn, .alert {
    box-shadow: none !important;
}
</style>
</head>
<body class="bg-light">

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card shadow">
					<div class="card-body">
						<h2 class="text-center mb-4 text-muted">Tạo tài khoản mới</h2>

						<!-- Hiển thị thông báo lỗi -->
						<c:if test="${alert != null}">
							<div class="alert alert-danger text-center">${alert}</div>
						</c:if>
						<!-- Form Register -->
						<form action="register" method="post">

							<div class="mb-3 input-group">
								<span class="input-group-text"><i class="fa fa-user"></i></span>
								<input type="text" class="form-control"
									placeholder="Tên đăng nhập" name="username" required>
							</div>

							<div class="mb-3 input-group">
								<span class="input-group-text"><i class="fa fa-user"></i></span>
								<input type="text" class="form-control" placeholder="Họ tên"
									name="fullname" required>
							</div>

							<div class="mb-3 input-group">
								<span class="input-group-text"><i class="fa fa-envelope"></i></span>
								<input type="email" class="form-control"
									placeholder="Nhập Email" name="email" required>
							</div>

							<div class="mb-3 input-group">
								<span class="input-group-text"><i class="fa fa-phone"></i></span>
								<input type="tel" class="form-control"
									placeholder="Số điện thoại" name="phone" required>
							</div>

							<div class="mb-3 input-group">
								<span class="input-group-text"><i class="fa fa-lock"></i></span>
								<input type="password" class="form-control"
									placeholder="Mật khẩu" name="password" required>
							</div>

							<div class="mb-3 input-group">
								<span class="input-group-text"><i class="fa fa-lock"></i></span>
								<input type="password" class="form-control"
									placeholder="Nhập lại mật khẩu" name="confirmPassword" required>
							</div>

							<button type="submit" class="btn btn-primary w-100">Tạo
								tài khoản</button>

							<p class="text-center mt-3">
								Bạn đã có tài khoản? <a href="login.jsp">Đăng nhập</a>
							</p>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
