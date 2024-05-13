<!DOCTYPE html>
<html lang="">
<head>
    <title>RD</title>
</head>
<body>
<h1> Hello, its my message</h1><hr>
<h4>messages</h4>

<#list messages as message>
    <div>
        ${message.text}<br>
        ${message.timeCreate}<br>
    </div>
</#list>

<form action="/message/create" method="post">
    <label>
        <input type="text" name="text"/>
    </label>
    <input type="submit" value="send"/>
</form>
</body>
</html>