<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create/Update Course</title>
</head>
<body>
    <h2>${course == null ? 'Create New Course' : 'Update Course'}</h2>
    <form action="course" method="post">
        <input type="hidden" name="action" value="${course == null ? 'create' : 'update'}">
        <input type="hidden" name="courseId" value="${course != null ? course.courseId : ''}">
        <label for="courseName">Course Name:</label>
        <input type="text" id="courseName" name="courseName" value="${course != null ? course.courseName : ''}" required><br><br>

        <label for="description">Description:</label>
        <textarea id="description" name="description" required>${course != null ? course.description : ''}</textarea><br><br>

        <button type="submit">${course == null ? 'Create Course' : 'Update Course'}</button>
    </form>
    <br>
    <a href="course">Back to Course List</a>
</body>
</html>
