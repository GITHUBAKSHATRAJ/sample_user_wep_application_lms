<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enrollment List</title>
    <link rel="stylesheet" href="CSS/enrollment-list.css">
</head>
<body>
    <header>
        <h1>Enrollment List</h1>
    </header>
    <main>
        <table id="enrollmentTable">
            <thead>
                <tr>
                    <th>Course Name</th>
                    <th>Enrollment Date</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <!-- Rows will be dynamically populated -->
            </tbody>
        </table>
    </main>
    <footer>
        <p>&copy; 2024 LMS. All rights reserved.</p>
    </footer>
    <script src="JS/enrollment-list.js"></script>
</body>
</html>
