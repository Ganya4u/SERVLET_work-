<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Profile</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #ffe6f0; /* Light pink background */
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            max-width: 500px;
            margin: 50px auto;
            background-color: #fff0f5; /* Slightly deeper pink for card */
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            padding: 30px;
        }

        h1 {
            text-align: center;
            color: #ff6699; /* Darker pink for headings */
        }

        .profile-pic {
            display: block;
            margin: 0 auto 20px;
            width: 120px;
            height: 120px;
            border-radius: 50%;
            border: 3px solid #ff99bb;
            object-fit: cover;
        }

        .info {
            margin: 20px 0;
        }

        .info p {
            font-size: 18px;
            margin: 10px 0;
        }

        .info span {
            font-weight: bold;
            color: #ff3399;
        }

        .btn {
            display: block;
            width: 150px;
            margin: 20px auto 0;
            padding: 10px;
            text-align: center;
            background-color: #ff6699;
            color: white;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            text-decoration: none;
        }

        .btn:hover {
            background-color: #ff3385;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Student Profile</h1>
         <%@ page session="true" %>
   <%
    String username = (String) session.getAttribute("username");
    String email = (String) session.getAttribute("email");

    if(username == null) {
        // Not logged in, redirect to login
        response.sendRedirect("login.jsp");
    }
   %>
        
        <div class="info">
            <p><span>Username: <%= username %></span> <!--USERNAME--></p>
            <p><span>Email: <%= email %> </span> <!--EMAIL--></p>
            
        </div>

        <a href="#" class="btn">Edit Profile</a>
    </div>
</body>
</html>
