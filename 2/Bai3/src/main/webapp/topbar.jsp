<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm border-bottom">
  <div class="container">
    <a class="navbar-brand fw-bold" href="${pageContext.request.contextPath}/home.jsp">
      <i class="fa fa-tachometer-alt me-2"></i> Dashboard
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto align-items-center">
        <c:if test="${not empty sessionScope.username}">
          <li class="nav-item me-3">
            <span class="nav-link">Xin chào, <span class="fw-bold text-primary">${sessionScope.username}</span></span>
          </li>
          <li class="nav-item">
            <a href="${pageContext.request.contextPath}/logout" class="btn btn-outline-danger btn-sm"><i class="fa fa-sign-out-alt"></i> Đăng xuất</a>
          </li>
        </c:if>
      </ul>
    </div>
  </div>
</nav>
