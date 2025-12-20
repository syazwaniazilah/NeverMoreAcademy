<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Profiles - Nevermore Academy</title>
    <style>
        body {
            background-color: #0b0b0f;
            color: #e6d9f7;
            font-family: 'Cinzel Decorative', serif;
            padding: 20px;
        }
        .profile-card {
            background-color: #1a1a24;
            border: 2px solid #6a0dad;
            border-radius: 12px;
            padding: 15px;
            margin-bottom: 15px;
            box-shadow: 0 0 15px #6a0dad;
        }
        h2 {
            text-align: center;
            color: #cba6f7;
            font-family: 'UnifrakturCook', cursive;
        }
        .label {
            color: #cba6f7;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h2>All Nevermore Academy Profiles</h2>
    <%
        List<String[]> profiles = (List<String[]>) request.getAttribute("profiles");
        if (profiles != null && !profiles.isEmpty()) {
            for (String[] p : profiles) {
    %>
        <div class="profile-card">
            <p><span class="label">Name:</span> <%= p[0] %></p>
            <p><span class="label">Student ID:</span> <%= p[1] %></p>
            <p><span class="label">Program:</span> <%= p[2] %></p>
            <p><span class="label">Email:</span> <%= p[3] %></p>
            <p><span class="label">Hobbies:</span> <%= p[4] %></p>
            <p><span class="label">Intro:</span> <%= p[5] %></p>
        </div>
    <%
            }
        } else {
    %>
        <p>No profiles created yet.</p>
    <%
        }
    %>
</body>
</html>
