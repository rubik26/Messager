<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>RD</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }
        h1 {
            color: #444;
        }
        h4 {
            color: #666;
        }
        hr {
            border: 0;
            height: 1px;
            background: #ccc;
            width: 100%;
            margin-bottom: 20px;
        }
        .message {
            background: #fff;
            padding: 10px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 10px;
            width: 100%;
            max-width: 500px;
        }
        .message + .message {
            margin-top: 10px;
        }
        form {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            margin-bottom: 20px;
        }
        input[type="text"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }
        input[type="submit"] {
            background-color: #5cb85c;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #4cae4c;
        }
    </style>
</head>
<body>
<h1>Hello, it's my message</h1>
<hr>
<h4>messages</h4>

<#list messages as message>
    <div class="message">
        ${message.text}<br>
        ${message.timeCreate}<br>
    </div>
</#list>

<form action="home/message/create" method="post">
    <input type="hidden" name="${csrfToken.parameterName}" value="${csrfToken.token}" />
    <label>
        <input type="text" name="text" placeholder="Type your message" required />
    </label>
    <input type="submit" value="send" />
</form>

<form action="@{/logout}" method="post">
    <input type="hidden" name="${csrfToken.parameterName}" value="${csrfToken.token}" />
    <input type="submit" value="Sign Out" />
</form>
</body>
</html>
