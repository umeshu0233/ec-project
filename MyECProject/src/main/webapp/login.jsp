<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>ログイン</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="login-page">

<div class="login-container">
    <h2>ログイン</h2>
    <form action="login" method="post">
        <div class="form-group">
            <label for="username">ユーザー名</label>
            <input type="text" id="username" name="username" required>
        </div>

        <div class="form-group">
            <label for="password">パスワード</label>
            <input type="password" id="password" name="password" required>
        </div>

        <button type="submit" class="btn">ログイン</button>
    </form>
</div>

</body>
</html>