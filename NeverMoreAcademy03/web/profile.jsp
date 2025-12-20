<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Profile Display</title>
    <style>
        body { background-color: #1e1e2f; color: #f0e6f6; font-family: 'Georgia', serif; padding: 20px; }
        .profile-box { max-width: 600px; margin: auto; background-color: #2e2e3e; padding: 20px; border-radius: 10px; }
        h2 { color: #cba6f7; }
        .label { color: #cba6f7; font-weight: bold; }
    </style>
</head>
<body>
    <div class="profile-box">
        <h2>Welcome, <%= request.getAttribute("name") %>!</h2>
        <p><span class="label">Student ID:</span> <%= request.getAttribute("studentId") %></p>
        <p><span class="label">Program:</span> <%= request.getAttribute("program") %></p>
        <p><span class="label">Email:</span> <%= request.getAttribute("email") %></p>
        <p><span class="label">Hobbies:</span> <%= request.getAttribute("hobbies") %></p>
        <p><span class="label">Introduction:</span> <%= request.getAttribute("intro") %></p>
    </div>
</body>
</html>
