<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en" style="height: 100%;">
<%@ include file="/WEB-INF/views/common/head.jsp" %>
<body class="container h-100">
<div class="container h-100">
    <div class="position-relative h-100">
        <div class="position-absolute left-50 translate-middle" style="top: 20%; min-width: 300px">
            <c:if test="${not empty msg}">
                <div class="alert alert-danger mt-3 mb-3" role="alert">
                        ${msg}
                </div>
            </c:if>
            <div class="alert alert-secondary mt-1 mb-0 p-0" role="alert">
                <p class="text-center p-0 m-0">Log In</p>
            </div>
            <form class="bg-light p-3" name='login' action="<c:url value='/login'/>" method='POST'>
                <table class="m-0" style="  border-collapse:separate; border-spacing: 0 0.5rem;">
                    <tr>
                        <td>Username:</td>
                        <td><label>
                            <input type='text' name='username'>
                        </label></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><label>
                            <input type='password' name='password'/>
                        </label></td>
                    </tr>
                    <tr>
                        <td colspan='2'>
                            <input class="btn btn-sm btn-outline-success btn-lg btn-block" name="submit" type="submit"
                                   value="Log In"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan='2'>
                            <a class="btn btn-sm btn-outline-primary btn-lg btn-block"
                               href="<c:url value='/sign-up'/>">Go to Sign Up page...</a>
                        </td>
                    </tr>
                </table>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        </div>
    </div>
</div>
</body>
</html>