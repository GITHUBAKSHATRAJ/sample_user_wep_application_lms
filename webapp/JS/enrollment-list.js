// Simulated data for demonstration
const enrollments = [
    { courseName: "Math 101", enrollmentDate: "2024-01-01" },
    { courseName: "History 201", enrollmentDate: "2024-02-15" },
];

document.addEventListener("DOMContentLoaded", () => {
    const tableBody = document.querySelector("#enrollmentTable tbody");
    enrollments.forEach(enrollment => {
        const row = document.createElement("tr");
        row.innerHTML = `
            <td>${enrollment.courseName}</td>
            <td>${enrollment.enrollmentDate}</td>
            <td><button class="action-btn">View</button></td>
        `;
        tableBody.appendChild(row);
    });
});
