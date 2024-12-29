package com.user.dao;

import com.user.model.Attendance;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AttendanceDOA {

    /**
     * Mark attendance for a student in a course
     * 
     * @param attendance The attendance object containing student and course details
     * @param connection The connection object for database interaction
     * @return true if the attendance is marked successfully, false otherwise
     */
    public boolean markAttendance(Attendance attendance, Connection connection) {
        String query = "INSERT INTO attendance (student_id, course_id, date, status) VALUES (?, ?, ?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, attendance.getStudentId());
            ps.setInt(2, attendance.getCourseId());
            ps.setDate(3, new java.sql.Date(attendance.getDate().getTime()));
            ps.setString(4, attendance.getStatus());

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * Get attendance records for a specific student by student ID
     * 
     * @param studentId The student ID for which to retrieve attendance
     * @param connection The connection object for database interaction
     * @return a list of attendance records for the student
     */
    public List<Attendance> getAttendanceByStudentId(int studentId, Connection connection) {
        String query = "SELECT * FROM attendance WHERE student_id = ?";
        List<Attendance> attendanceList = new ArrayList<>();
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, studentId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Attendance attendance = new Attendance();
                attendance.setId(rs.getInt("id"));
                attendance.setStudentId(rs.getInt("student_id"));
                attendance.setCourseId(rs.getInt("course_id"));
                attendance.setDate(rs.getDate("date"));
                attendance.setStatus(rs.getString("status"));

                attendanceList.add(attendance);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return attendanceList;
    }

    /**
     * Get attendance records for a specific course by course ID
     * 
     * @param courseId The course ID for which to retrieve attendance
     * @param connection The connection object for database interaction
     * @return a list of attendance records for the course
     */
    public List<Attendance> getAttendanceByCourseId(int courseId, Connection connection) {
        String query = "SELECT * FROM attendance WHERE course_id = ?";
        List<Attendance> attendanceList = new ArrayList<>();
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, courseId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Attendance attendance = new Attendance();
                attendance.setId(rs.getInt("id"));
                attendance.setStudentId(rs.getInt("student_id"));
                attendance.setCourseId(rs.getInt("course_id"));
                attendance.setDate(rs.getDate("date"));
                attendance.setStatus(rs.getString("status"));

                attendanceList.add(attendance);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return attendanceList;
    }
}
