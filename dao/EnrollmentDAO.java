package com.user.dao;

import com.user.model.Enrollment;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EnrollmentDAO {
    private Connection connection;

    // Constructor to initialize the connection
    public EnrollmentDAO(Connection connection) {
        this.connection = connection;
    }

    /**
     * Enroll a student in a course
     *
     * @param studentId ID of the student to enroll
     * @param courseId ID of the course to enroll in
     * @return true if enrollment is successful, false otherwise
     */
    public boolean enrollStudent(int studentId, int courseId) {
        String query = "INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES (?, ?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, studentId);
            ps.setInt(2, courseId);
            ps.setDate(3, new java.sql.Date(System.currentTimeMillis()));  // Current date
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * Get all courses enrolled by a student
     *
     * @param studentId ID of the student
     * @return a list of course IDs the student is enrolled in
     */
    public List<Integer> getEnrolledCoursesByStudentId(int studentId) {
        String query = "SELECT course_id FROM enrollments WHERE student_id = ?";
        List<Integer> enrolledCourses = new ArrayList<>();
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, studentId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                enrolledCourses.add(rs.getInt("course_id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return enrolledCourses;
    }

    /**
     * Remove a student's enrollment from a course
     *
     * @param enrollmentId ID of the enrollment to remove
     * @return true if removal is successful, false otherwise
     */
    public boolean removeEnrollment(int enrollmentId) {
        String query = "DELETE FROM enrollments WHERE id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, enrollmentId);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
