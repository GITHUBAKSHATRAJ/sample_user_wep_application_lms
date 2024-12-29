// You can add JavaScript validation or other functionality here if needed
document.getElementById("create-user-form").onsubmit = function(event) {
    const userName = document.getElementById("userName").value;
    const userEmail = document.getElementById("userEmail").value;

    if (!userName || !userEmail) {
        event.preventDefault();
        alert("Please fill in all fields.");
    }
};
