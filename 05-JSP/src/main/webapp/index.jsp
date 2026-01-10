<!DOCTYPE html>
<html>
<head>
    <title>User Data</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3e8ff; /* light purple background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff;
            padding: 25px 30px;
            border-radius: 10px;
            width: 320px;
            box-shadow: 0 4px 10px rgba(128, 0, 128, 0.2);
        }

        h2 {
            text-align: center;
            color: #6a0dad;
            margin-bottom: 20px;
        }

        input[type="text"],
        input[type="email"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0 15px 0;
            border: 1px solid #d1b3ff;
            border-radius: 5px;
            outline: none;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="number"]:focus {
            border-color: #9b59b6;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #9b59b6;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #7d3c98;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>User Data</h2>
        <form action="display.jsp">
            Name:
            <input type="text" name="un" placeholder="Enter name" required>

            Email:
            <input type="email" name="ue" placeholder="Enter email" required>

            Phone:
            <input type="number" name="up" placeholder="Enter phone" required>

            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
