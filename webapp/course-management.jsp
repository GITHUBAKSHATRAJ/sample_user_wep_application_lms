<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Management</title>
    <link rel="stylesheet" href="CSS/course-management.css">
</head>
<body>
    <header>
        <h1>Course Management</h1>
    </header>
    <main>
        <div class="button-container">
            <button onclick="navigateTo('course-list.jsp')">Course List</button>
            <button onclick="navigateTo('course-add-edit.jsp')">Add/Edit Course</button>
            <button onclick="navigateTo('course-detail.jsp')">Course Details</button>
        </div>
    </main>
    <footer>
        <p>&copy; 2024 LMS. All rights reserved.</p>
    </footer>
    <script src="JS/course-management.js"></script>
</body>
</html>
