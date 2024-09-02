<!DOCTYPE html>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
    <h1>Edit User</h1>
    <g:form action="update" method="post">
        <input type="hidden" name="id" value="${userInstance.id}" />
        <label for="username">Username:</label>
        <input type="text" name="username" id="username" value="${userInstance.username}" required="required" />
        <br />
        <label for="password">Password:</label>
        <input type="password" name="password" id="password" value="${userInstance.password}" required="required" />
        <br />
        <input type="submit" value="Update User" />
    </g:form>
</body>
</html>
