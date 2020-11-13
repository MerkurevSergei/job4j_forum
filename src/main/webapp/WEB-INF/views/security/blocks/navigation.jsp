<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<nav class="security-navigation nav">

    <%-- NOT AUTHORIZE  --%>
    <c:if test="${empty sessionScope.user}">
            <a class="security-navigation__login h6 nav-link" href="${pageContext.request.contextPath}/login">
                <c:out value="Log In"/>
            </a>
            <a class="security-navigation__signup h6 nav-link"
               href="${pageContext.request.contextPath}/sign-up">
                <c:out value="Sign Up"/>
            </a>
    </c:if>

    <%-- ALLREADY AUTHORIZE  --%>
    <c:if test="${!empty sessionScope.user}">
        <a class="security-navigation__user h6 m-0" href="${pageContext.request.contextPath}/user-info">
            <c:out value="${sessionScope.user.name}"/>
        </a>
        <a class="security-form__toggle h6 m-0" href="${pageContext.request.contextPath}/logout">
            <c:out value="Sign Out"/>
        </a>
    </c:if>
</nav>