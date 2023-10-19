function checkForm(event) {
	var userName = document.getElementById("username").value;
	var password = document.getElementById("password").value;

	if (userName == "" || password == "") {
		alert("Please fill in all fields.");
		event.preventDefault(); // Prevent form submission
	}
}
