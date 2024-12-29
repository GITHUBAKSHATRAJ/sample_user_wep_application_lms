<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add/Edit Assignment</title>
    <link rel="stylesheet" href="CSS/assignment-add-edit.css">
</head>
<body>
    <header>
        <h1>Add/Edit Assignment</h1>
    </header>
    <main>
        <form id="assignmentForm">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" required>

            <label for="description">Description:</label>
            <textarea id="description" name="description" required></textarea>

            <label for="dueDate">Due Date:</label>
            <input type="date" id="dueDate" name="dueDate" required>

            <label for="courseId">Course:</label>
            <select id="courseId" name="courseId" required>
                <option value="math101">Math 101</option>
                <option value="physics201">Physics 201</option>
            </select>

            <button type="submit">Save</button>
        </form>
    </main>
    <footer>
        <p>&copy; 2024 LMS</p>
    </footer>
    <script src="JS/assignment-add-edit.js"></script>
</body>
</html>
