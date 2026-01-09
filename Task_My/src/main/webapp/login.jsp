<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        /* Page background */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #ffe6f0; /* light pink background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Container for login form */
        .container {
            background-color: #fff0f5; /* slightly lighter pink */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            width: 350px;
            text-align: center;
        }

        /* Heading */
        .container h2 {
            margin-bottom: 30px;
            color: #ff4d94; /* deeper pink for heading */
        }

        /* Input fields */
        .container input[type="email"],
        .container input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            margin: 10px 0;
            border: 1px solid #ffb3d9;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
        }

        /* Button */
        .container button {
            width: 100%;
            padding: 12px;
            background-color: #ff4d94;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 15px;
            transition: background-color 0.3s;
        }

        .container button:hover {
            background-color: #ff1a75;
        }

        /* Link */
        .container .link {
            display: block;
            margin-top: 20px;
            font-size: 14px;
            color: #ff4d94;
            text-decoration: none;
        }

        .container .link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <h3 style="color: green">${param.succ}</h3>
        <h3 style="color: red">${error}</h3>
        <form action="login" method="POST">
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
        <a class="link" href="register.jsp">Don't have an account? Register</a>
    </div>
</body>
</html>
