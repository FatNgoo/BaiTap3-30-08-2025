<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="model.User" %>
<%
    session = request.getSession(false);
    User user = null;
    if (session != null) {
        user = (User) session.getAttribute("account");
    }

    if (user == null) {
        // Nếu chưa login thì redirect về /home
        response.sendRedirect(request.getContextPath() + "/home");
        return; // dừng JSP tại đây
    }
%>
<html>
<head>
    <title>Danh sách danh mục</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        img {
            max-width: 100px;
            max-height: 100px;
        }
        .center {
            text-align: center;
        }
    </style>
</head>
<body>
    <%@ include file="/topbar.jsp" %>
    <h1>Danh sách danh mục</h1>
    <p><a href="${pageContext.request.contextPath}/admin/category/add">Thêm danh mục mới</a></p>
    <table>
        <thead>
            <tr>
                <th>STT</th>
                <th>Ảnh</th>
                <th>Tên danh mục</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${cateList}" var="cate" varStatus="STT">
                <tr>
                    <td>${STT.index + 1}</td>
                    <td>
                        <c:if test="${not empty cate.icon}">
                            <img src="${pageContext.request.contextPath}/image?fname=${cate.icon}" alt="${cate.name}"/>
                        </c:if>
                    </td>
                    <td>${cate.name}</td>
                    <td class="center">
                        <a href="${pageContext.request.contextPath}/admin/category/edit?id=${cate.id}">Sửa</a>
                        |
                        <a href="${pageContext.request.contextPath}/admin/category/delete?id=${cate.id}" 
                           onclick="return confirm('Bạn có chắc muốn xóa danh mục này?')">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
