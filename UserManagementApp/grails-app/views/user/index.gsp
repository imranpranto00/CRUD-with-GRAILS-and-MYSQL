<!DOCTYPE html>
<html>
<head>
    <title>User List</title>
</head>
<body>
    <h1>User List</h1>
    <a href="${createLink(controller: 'user', action: 'create')}">Create New User</a>
    <table>
        <tr>
            <th>Username</th>
            <th>Actions</th>
        </tr>
        <g:each in="${users}" var="userInstance">
            <tr>
                <td>${userInstance.username}</td>
                <td>
                    <a href="${createLink(controller: 'user', action: 'edit', id: userInstance.id)}">Edit</a> |
                    <g:form action="delete" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="${userInstance.id}" />
                        <input type="submit" value="Delete" onclick="return confirm('Are you sure?');" />
                    </g:form>
                </td>
            </tr>
        </g:each>
    </table>
</body>
</html>
