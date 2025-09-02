<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
  <body>
    <h2>Thêm Category</h2>
    <c:if test="${not empty error}">
      <div style="color:red">${error}</div>
    </c:if>
    <form action="${pageContext.request.contextPath}/admin/category/add" method="post" enctype="multipart/form-data">
      Tên: <input type="text" name="name" required/><br/>
      Ảnh: <input type="file" name="icon"/><br/>
      <button type="submit">Lưu</button>
    </form>
    <a href="${pageContext.request.contextPath}/admin/category/list">Back</a>
  </body>
</html>
