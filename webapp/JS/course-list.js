// Simulated course data
const courses = [
    { id: 1, name: "Math 101", description: "Basic Mathematics", createdBy: "Teacher A" },
    { id: 2, name: "Physics 201", description: "Advanced Physics", createdBy: "Teacher B" },
];

const courseContainer = document.getElementById("course-container");

// Populate courses dynamically
courses.forEach(course => {
    const courseCard = document.createElement("div");
    courseCard.className = "course-card";
    courseCard.innerHTML = `
        <h3>${course.name}</h3>
        <p>${course.description}</p>
        <button onclick="viewCourseDetails(${course.id})">View Details</button>
    `;
    courseContainer.appendChild(courseCard);
});

function viewCourseDetails(courseId) {
    window.location.href = `/courses/${courseId}`;
}
