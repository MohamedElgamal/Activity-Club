function validateForm() {
	var skillName = document.forms["skillsform"]["skill_name"].value;
	if (skillName == "") {
		alert("Fill the skill name");
		return false;
	}

	return true;
}