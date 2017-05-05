<%-- 
    Document   : bacheca
    Created on : 22-apr-2017, 22.30.09
    Author     : nosch_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Bacheca</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Alice Noschese">
        <meta name="keywords" content="nerd nerbook social network ">
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    <body>
        <c:set var="title" value="NERDBOOK" scope="request"/>
        <jsp:include page="header.jsp"/>
        
        <c:set var="page" value="bacheca" scope="request"/>
        
        <div id="divBody">
            <div id="posts">
                <c:forEach var="post" items="${posts}">
                    <div class="post">
                        <div class="profilePic">
                            <img title="fotoProfilo" alt="Foto Profilo" src="${utente.urlFotoProfilo}"
                                 width="60" height="60">
                        </div>
                        <div class="dati">
                            <b>${utente.nome}</b> 
                            <c:if test="${post.postType == 'TEXT'}">
                                    <p>${post.content}</p>
                            </c:if>
                            <c:if test="${post.postType == 'IMAGE'}">
                                    <img alt="Post con foto" src="${post.content}">
                            </c:if>
                        </div>
                    </div>
                </c:forEach>
            
            </div>
        </div>
    </body>
</html>
