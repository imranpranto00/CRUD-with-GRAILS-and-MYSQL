<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1>Login</h1>
    <g:form action="authenticate" method="post">
        <label for="username">Username:</label>
        <input type="text" name="username" id="username" required="required" />
        <br />
        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required="required" />
        <br />
        <input type="submit" value="Login" />
    </g:form>
    <g:if test="${flash.message}">
        <p>${flash.message}</p>
    </g:if>
</body>
</html>
