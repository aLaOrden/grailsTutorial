<%--
  Created by IntelliJ IDEA.
  User: maasencioh
  Date: 3/15/16
  Time: 3:32 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
    <style type="text/css">
        label {
            float: left;
            width: 65px;
        }
    </style>
</head>

<body>

    <g:if test="${flash.message}">
        <div class="message">
            ${flash.message}
        </div>
    </g:if>

    <g:if test="${session.user}">
        <br/>
        Login as: ${session.user} | <g:link action="logout">Logout</g:link>
    </g:if>
    <g:else>
        <g:form action="login" style="padding-left: 200px">
            <div style="width: 220px">
                <label>Name:</label> <input type="text" name="username"/>
                <label>Password:</label> <input type="password" name="password"/>
                <label>&nbsp;</label> <input type="submit" value="Login"/>
            </div>
        </g:form>
    </g:else>
</body>
</html>