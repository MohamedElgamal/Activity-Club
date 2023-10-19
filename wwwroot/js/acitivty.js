console.log("Script has been binded");
function validateForm() {
	console.log("hellow ")
	// Get the form inputs
	var activityName = document.forms["activityform"]["activity_name"].value;
	var activityDescription = document.forms["activityform"]["activity_description"].value;
	var activityStartAge = document.forms["activityform"]["activity_start_age"].value;
	var activtiyEndAge = document.forms["activityform"]["activity_end_age"].value;
	var checkboxes = document.getElementsByName("activity-skills");
	var isChecked = false;
	if (activityName == "" || activityDescription == "" || activityStartAge == "" || activtiyEndAge == "") {
		alert("Please fill in all fields.");
		return false; // Prevent form submission
	}
	/*if (!/^[a-zA-Z][a-zA-Z ]{0,24}$/.test(activityName)) {
		alert("Please enter a valid name.");
		return false;
	  }

	if (!/^[a-zA-Z][a-zA-Z ]{0,99}$/.test(activityDescription)) {
		alert("Please enter a valid description.");
		return false;
	  }*/
	if (!/^[0-9]+$/.test(activityStartAge)) {
		alert("Please Enter only numbers on the Start age");
		return false;
	}
	if (!/^[0-9]+$/.test(activtiyEndAge)) {
		alert("Please Enter only numbers on the End age");
		return false;
	}
	if (parseInt(activityStartAge, 10) >= parseInt(activtiyEndAge, 10)) {
		alert("Start age should be less than end age not equal or greater");
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
