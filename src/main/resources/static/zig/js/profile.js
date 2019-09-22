$("#profileImage").click(function(e) {
	$("#imageUpload").click();
});

function fasterPreview(uploader) {
	if (uploader.files && uploader.files[0]) {
		$('#profileImage').attr('src',
				window.URL.createObjectURL(uploader.files[0]));
	}
}

$("#imageUpload").change(function() {
	fasterPreview(this);
});

$("#addSkillForm").submit(function(e) {
	addNewSkill();
	e.preventDefault();
	return false;
});

function addNewSkill(e) {

	var empId = $('#empId').val();
	var rating = $('#rating').val();
	var skillId = $('#skill').find(":selected").val();
	var skillName = $('#skill').find(":selected").text();

	var data = {
		"empId" : empId,
		"rating" : rating,
		"skillId" : skillId,
		"skillName" : skillName
	}

	$.ajax({
		type : "POST",
		url : "/api/employee/skill",
		data : JSON.stringify(data),
		contentType : "application/json",
		dataType : 'json',
		success : function(response) {
			console.log(response);

		},
		error : function(e) {
			console.log(e);
		}
	});

	return false;

}

function updateEmployeeSkills(skill) {
	var tr = "<tr>";
	tr += "<td>" + skill.skillName + "</td>";
	tr += "<td>" + skill.rating + "</td>";
	tr += "</tr>";

	$("#empSkill").append(tr);
}