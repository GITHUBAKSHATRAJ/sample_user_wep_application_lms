document.addEventListener("DOMContentLoaded", () => {
    const assignmentTable = document.getElementById("assignmentTable");

    // Dummy data for demonstration
    const assignments = [
        { title: "Math Homework", course: "Math 101", dueDate: "2024-12-15" },
        { title: "Physics Lab", course: "Physics 201", dueDate: "2024-12-20" },
    ];

    assignments.forEach(assignment => {
        const row = document.createElement("tr");
        row.innerHTML = `
            <td>${assignment.title}</td>
            <td>${assignment.course}</td>
            <td>${assignment.dueDate}</td>
            <td><button onclick="viewDetails('${assignment.title}')">View</button></td>
        `;
        assignmentTable.appendChild(row);
    });
});

function viewDetails(title) {
    alert(`Viewing details for assignment: ${title}`);
}
