<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<%@ include file="/WEB-INF/views/common/head.jsp" %>
<body>
<div class="container mt-3">
    <div class="index__header row">
        <div class="col">
            <a class="nav-link h6 m-0" href="${pageContext.request.contextPath}/post">
                <c:out value="New Post"/>
            </a>
        </div>
        <div class="index__security col-auto">
            <%@ include file="/WEB-INF/views/security/blocks/navigation.jsp" %>
        </div>
    </div>
    <div class="row">
        <h4>Форум job4j</h4>
    </div>
    <div class="row">
        <form class="bg-light p-3" name='index' action="<c:url value='/login'/>" method='POST'>
            <div class="mb-3">
                <label for="post__name" class="form-label">Name</label>
                <input type='text' name='name' id="post__name">
            </div>
            <div class="mb-3">
                <label for="post__desc" class="form-label">Description</label>
                <input type='text' name='name' id="post__desc">
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
    </div>
</div>

</body>
</html>