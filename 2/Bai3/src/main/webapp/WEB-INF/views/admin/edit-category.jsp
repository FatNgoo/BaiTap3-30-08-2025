<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
  <body>
    <h2>Sửa Category</h2>
    <c:if test="${not empty error}">
      <div style="color:red">${error}</div>
    </c:if>
    <form action="${pageContext.request.contextPath}/admin/category/edit" method="post" enctype="multipart/form-data">
      <input type="hidden" name="id" value="${cate.id}"/>
      <input type="hidden" name="oldIcon" value="${cate.icon}"/>
      Tên: <input type="text" name="name" value="${cate.name}" required/><br/>
      Hiện tại:
      <c:if test="${not empty cate.icon}">
        <img src="${pageContext.request.contextPath}/image?fname=${cate.icon}" width="120"/><br/>
      </c:if>
      Ảnh mới: <input type="file" name="icon"/><br/>
      <button type="submit">Cập nhật</button>
    </form>
    <a href="${pageContext.request.contextPath}/admin/category/list">Back</a>
  </body>
</html>
