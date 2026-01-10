<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Data</title>

<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background-color: #f4f6f8;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 50%;
        margin: 50px auto;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    h1 {
        text-align: center;
        color: #333;
    }

    h2 {
        color: #555;
        font-weight: normal;
        margin: 10px 0;
    }

    hr {
        margin: 25px 0;
        border: none;
        height: 1px;
        background-color: #ddd;
    }

    .label {
        font-weight: bold;
        color: #222;
    }
</style>

</head>
<body>

    <%
        String name = request.getParameter("un");
        String email = request.getParameter("ue");
        String phone = request.getParameter("up");
    %>

    <div class="container">
        <h1>User Data</h1>
        <h2><span class="label">Name:</span> <%= name %></h2>
        <h2><span class="label">Email:</span> <%= email %></h2>
        <h2><span class="label">Phone:</span> <%= phone %></h2>

        <hr>

        <h1>User Data Again</h1>
        <h2><span class="label">Name:</span> <%= request.getParameter("un") %></h2>
        <h2><span class="label">Email:</span> <%= request.getParameter("ue") %></h2>
        <h2><span class="label">Phone:</span> <%= request.getParameter("up") %></h2>
    </div>

</body>
</html>
