document.addEventListener("DOMContentLoaded", () => {
    const viewEnrollmentsBtn = document.getElementById("viewEnrollmentsBtn");
    const enrollNewCourseBtn = document.getElementById("enrollNewCourseBtn");

    // Redirect to View Enrollments Page
    viewEnrollmentsBtn.addEventListener("click", () => {
        window.location.href = "view-enrollment.jsp";
    });

    // Redirect to Enroll in a New Course Page
    enrollNewCourseBtn.addEventListener("click", () => {
        window.location.href = "enroll-in.jsp";
    });
});
