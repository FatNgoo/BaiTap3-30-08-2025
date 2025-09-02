<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom mb-4">
  <div class="container">
    <a class="navbar-brand fw-bold" href="home.jsp">
      <i class="fa fa-user-circle"></i> MyApp
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <c:if test="${not empty sessionScope.username}">
          <li class="nav-item">
            <a class="btn btn-outline-danger" href="logout"><i class="fa fa-sign-out-alt"></i> Đăng xuất</a>
          </li>
        </c:if>
      </ul>
    </div>
  </div>
</nav>
</nav>
