<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<%@ include file="common/head.jsp" %>

<body>
<div class="container mt-3">
    <div class="index__header row">
        <div class="col">
            <a class="nav-link h6 m-0" href="${pageContext.request.contextPath}/post/edit">
                <c:out value="New Post"/>
            </a>
        </div>
        <div class="index__security col-auto">
            <%@ include file="security/blocks/navigation.jsp" %>
        </div>
    </div>
    <div class="row">
        <h4>Форум job4j</h4>
    </div>
    <div class="row">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Тема</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${posts}" var="post">
                <tr>
                    <td><c:out value="${post.name}"/></td>
                    <td>
                        <a class="nav-link h6 m-0" href="${pageContext.request.contextPath}/post/edit/${post.id}">
                            <c:out value="edit"/>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>