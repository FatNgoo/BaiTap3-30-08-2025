<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
  <body>
    <h2>Danh sách Category</h2>
    <a href="${pageContext.request.contextPath}/admin/category/add">Thêm mới</a>
    <table border="1" cellpadding="6">
      <tr><th>#</th><th>Ảnh</th><th>Tên</th><th>Action</th></tr>
      <c:forEach items="${cateList}" var="cate" varStatus="st">
        <tr>
          <td>${st.index + 1}</td>
          <td>
            <c:if test="${not empty cate.icon}">
              <img src="${pageContext.request.contextPath}/image?fname=${cate.icon}" width="120"/>
            </c:if>
          </td>
          <td>${cate.name}</td>
          <td>
            <a href="${pageContext.request.contextPath}/admin/category/edit?id=${cate.id}">Sửa</a> |
            <a href="${pageContext.request.contextPath}/admin/category/delete?id=${cate.id}" 
               onclick="return confirm('Xóa?')">Xóa</a>
          </td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
