<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment Management</title>
    <link rel="stylesheet" href="CSS/assignment-management.css">
</head>
<body>
    <div class="container">
        <h1>Assignment Management</h1>
        <button onclick="navigateTo('assignment-list.jsp')">Assignment List</button>
        <button onclick="navigateTo('assignment-add-edit.jsp')">Add/Edit Assignment</button>
        <button onclick="navigateTo('assignment-details.jsp')">Assignment Details</button>
    </div>
    <script src="JS/assignment-management.js"></script>
</body>
</html>
