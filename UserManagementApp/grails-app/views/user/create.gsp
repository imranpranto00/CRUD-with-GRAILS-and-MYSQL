<!DOCTYPE html>
<html>
<head>
    <title>Create User</title>
</head>
<body>
    <h1>Create User</h1>
    <g:form action="save" method="post">
        <label for="username">Username:</label>
        <input type="text" name="username" id="username" required="required" />
        <br />
        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required="required" />
        <br />
        <input type="submit" value="Create User" />
    </g:form>
</body>
</html>
