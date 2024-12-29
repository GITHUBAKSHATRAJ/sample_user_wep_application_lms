<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.user.model.CourseManagement" %>
<!DOCTYPE html>
<html>
<head>
    <title>Course List</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <% 
                List<CourseManagement> courses = (List<CourseManagement>) request.getAttribute("courses");
                if (courses != null) {
                    for (CourseManagement course : courses) {
            %>
                <tr>
                    <td><%= course.getCourseId() %></td>
                    <td><%= course.getCourseName() %></td>
                    <td><%= course.getDescription() %></td>
                </tr>
            <% 
                    }
                } else {
            %>
                <tr>
                    <td colspan="3">No courses available</td>
                </tr>
            <% 
                }
            %>
        </tbody>
    </table>
</body>
</html>
