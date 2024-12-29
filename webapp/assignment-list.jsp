<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment List</title>
    <link rel="stylesheet" href="CSS/assignment-list.css">
</head>
<body>
    <header>
        <h1>Assignment List</h1>
    </header>
    <main>
        <table>
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Course</th>
                    <th>Due Date</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody id="assignmentTable">
                <!-- Dynamic rows here -->
            </tbody>
        </table>
    </main>
    <footer>
        <p>&copy; 2024 LMS</p>
    </footer>
    <script src="JS/assignment-list.js"></script>
</body>
</html>
