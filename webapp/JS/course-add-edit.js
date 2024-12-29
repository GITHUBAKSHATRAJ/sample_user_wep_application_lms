const courseId = new URLSearchParams(window.location.search).get("id");
const form = document.getElementById("course-form");

if (courseId) {
    document.getElementById("page-title").textContent = "Edit Course";
    // Simulate fetching course details
    const course = { id: courseId, name: "Math 101", description: "Basic Mathematics", createdBy: "Teacher A" };
    form.name.value = course.name;
    form.description.value = course.description;
    form.createdBy.value = course.createdBy;
} else {
    form.createdBy.value = "Logged-in Teacher ID";
}

form.addEventListener("submit", e => {
    e.preventDefault();
    const courseData = {
        name: form.name.value,
        description: form.description.value,
        createdBy: form.createdBy.value,
    };
    console.log(courseData);
    alert("Course saved successfully!");
});
