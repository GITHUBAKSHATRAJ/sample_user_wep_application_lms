<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enroll in a Course</title>
    <link rel="stylesheet" href="CSS/enroll-in.css">
</head>
<body>
    <header>
        <h1>Enroll in a Course</h1>
    </header>
    <main>
        <form id="enrollForm">
            <label for="course">Select Course</label>
            <select id="course" name="course">
                <!-- Dynamically populated courses -->
            </select>

            <label for="date">Enrollment Date</label>
            <input type="date" id="date" name="date" required>

            <button type="submit">Enroll</button>
        </form>
    </main>
    <footer>
        <p>&copy; 2024 LMS. All rights reserved.</p>
    </footer>
    <script src="JS/enroll-in.js"></script>
</body>
</html>
