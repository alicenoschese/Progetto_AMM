<%-- 
    Document   : header
    Created on : 22-apr-2017, 23.06.39
    Author     : nosch_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<header>
    <div id="title">
        NERDBOOK
    </div>
    <nav>
        <ul>
        <li <c:if test="${page=='bacheca'}">class="active"</c:if>> <a href="bacheca">Bacheca</a></li>
        <li <c:if test="${page=='profilo'}">class="active"</c:if>><a href="profilo.html">Profilo</a></li>
        <li <c:if test="${page=='descrizione'}">class="active"</c:if>><a href="descrizione.html">Descrizione</a></li>
        <li <c:if test="${page=='login'}">class="active"</c:if>><a href="login.html">Login</a></li>
        </ul>
    </nav>
</header>
