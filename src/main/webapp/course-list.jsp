<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.user.model.CourseManagement" %>
<!DOCTYPE html>
<html>
<head>
    <title>Course List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }
        .card {
            background: #fff;
            border: 2px solid #007bff;
            border-radius: 8px;
            box-shadow: 17px 19px 11px #333;;
            margin: 10px;
            width: 300px;
            padding: 20px;
            display: flex ;
            flex-direction: column-reverse;
            justify-content: space-between;
        }
        .card h2 {
            font-size: 1.5em;
            color: #333;
            margin-bottom: 10px;
        }
        .card p {
            color: #666;
            font-size: 1em;
            margin-bottom: 15px;
        }
        .card span {
            font-weight: bold;
            color: #007BFF;
        }
        .scrollable {
            max-height: 80vh;
            overflow-y: auto;
        }
        .no-courses {
            text-align: center;
            color: #666;
            font-size: 1.2em;
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="scrollable">
        <div class="container">
            <% 
                List<CourseManagement> courses = (List<CourseManagement>) request.getAttribute("courses");
                if (courses != null && !courses.isEmpty()) {
                    for (CourseManagement course : courses) {
            %>
                <div class="card">
                    <h2><%= course.getCourseName() %></h2>
                    <p><%= course.getDescription() %></p>
                    <span>Course ID: <%= course.getCourseId() %></span>
                </div>
            <% 
                    }
                } else {
            %>
                <div class="no-courses">No courses available</div>
            <% 
                }
            %>
        </div>
    </div>
</body>
</html>