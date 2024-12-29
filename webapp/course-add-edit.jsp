<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add/Edit Course</title>
    <link rel="stylesheet" href="CSS/course-add-edit.css">
</head>
<body>
    <header>
        <h1 id="page-title">Add/Edit Course</h1>
    </header>
    <main>
        <form id="course-form">
            <label for="name">Course Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="description">Description:</label>
            <textarea id="description" name="description" required></textarea>
            
            <label for="createdBy">Created By:</label>
            <input type="text" id="createdBy" name="createdBy" readonly>

            <button type="submit">Save Course</button>
        </form>
    </main>
    <footer>
        <p>&copy; 2024 LMS. All rights reserved.</p>
    </footer>
    <script src="JS/course-add-edit.js"></script>
</body>
</html>
