<!DOCTYPE html>
<html lang="">
<head>
    <title>RD</title>
</head>
<body>
<h1>Hello, it's my message</h1><hr>
<h4>messages</h4>

<#list messages as message>
    <div>
        ${message.text}<br>
        ${message.timeCreate}<br>
    </div>
</#list>

<form action="home/message/create" method="post">
    <input type="hidden" name="${csrfToken.parameterName}" value="${csrfToken.token}" />
    <label>
        <input type="text" name="text"/>
    </label>
    <input type="submit" value="send"/>
</form><br>
<form action="@{/logout}" method="post">
    <input type="hidden" name="${csrfToken.parameterName}" value="${csrfToken.token}" />
    <input type="submit" value="Sign Out"/>
</form>
</body>
</html>
