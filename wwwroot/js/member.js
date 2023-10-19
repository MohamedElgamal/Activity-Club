function validateForm() {
	var memberName = document.forms["memberform"]["member_name"].value;
	var memberSSN = document.forms["memberform"]["member_ssn"].value;
	var memberPhone = document.forms["memberform"]["member_phone"].value;
	var memberEmail = document.forms["memberform"]["member_email"].value;
	var memberAddress = document.forms["memberform"]["member_address"].value;
	var memberDate = document.forms["memberform"]["member_date"].value;
	var fileInput = document.forms["memberform"]["member_photo"];
	var checkboxes = document.getElementsByName("member_skills");
	var isChecked = false;
	if (memberName == "" || memberSSN == "" || memberPhone == "" || memberEmail == "" || memberAddress == "" || memberDate == "") {
		alert("Please fill in all fields.");
		return false; // Prevent form submission
	}
	if (!/^\d{7}$/.test(memberSSN)) {
		alert("Please enter a valid SSN.");
		return false;
	}

	if (!/^0\d{10}$/.test(memberPhone)) {
		alert("Please enter a valid phone number.");
		return false;
	}

	if (!/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/.test(memberEmail)) {
		alert("Please enter a valid email address.");
		return false;
	}

	if (!/^.+$/.test(memberAddress)) {
		alert("Please enter a valid address.");
		return false;
	}

	if (fileInput.files.length === 0) {
		alert("Please select an image file.");
		return false;
	}

	for (var i = 0; i < checkboxes.length; i++) {
		if (checkboxes[i].checked) {
			isChecked = true;
			break;
		}
	}
	if (!isChecked) {
		alert("Please select at least one skill.");
		return false;
	}

	return true;
}