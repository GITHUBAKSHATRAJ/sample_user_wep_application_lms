const courseId = 1; // Simulate getting courseId
document.getElementById("course-name").textContent = "Math 101";
document.getElementById("course-description").textContent = "This course covers basic mathematics.";

const students = ["Student A", "Student B", "Student C"];
const studentList = document.getElementById("students-list");
students.forEach(student => {
    const li = document.createElement("li");
    li.textContent = student;
    studentList.appendChild(li);
});
