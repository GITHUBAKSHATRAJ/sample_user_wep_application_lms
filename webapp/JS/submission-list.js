document.addEventListener('DOMContentLoaded', () => {
    const submissions = [
        { id: 1, assignmentTitle: 'Math Homework', student: 'John Doe', status: 'Graded' },
        { id: 2, assignmentTitle: 'Science Project', student: 'Jane Smith', status: 'Pending' }
    ];

    const submissionList = document.getElementById('submission-list');
    submissions.forEach(submission => {
        const div = document.createElement('div');
        div.className = 'submission';
        div.innerHTML = `
            <h3>${submission.assignmentTitle} - ${submission.student}</h3>
            <p>Status: ${submission.status}</p>
            <button onclick="viewGrade(${submission.id})">View/Grade</button>
        `;
        submissionList.appendChild(div);
    });
});

function viewGrade(id) {
    window.location.href = `/submissions/grade/${id}`;
}
