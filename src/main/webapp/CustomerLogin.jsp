<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CustomerLogin</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #9FC5E8;
            margin: 0;
        }
        .container {
            text-align: center;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .input {
            display: block;
            margin: 10px;
            padding: 10px;
            font-size: 16px;
            width: calc(100% - 22px);
        }
        .button {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>CustomerLogin</h1>
        <form action="CustomerServlet" method="post">
            <input type="text" name="accountNumber" placeholder="Account Number" class="input" required>
            <input type="password" name="password" placeholder="Password" class="input" required>
            <input type="submit" value="Login" class="button">
        </form>
    </div>
</body>
</html>