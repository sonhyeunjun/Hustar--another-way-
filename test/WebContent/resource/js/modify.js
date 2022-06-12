function fn_submit() {

	let f = document.frm;


	if (f.username.value == "") {
		alert("이름 입력.");
		f.username.focus();
		return false;

	}

	if (f.mobile.value == "") {
		alert("번호 입력.");
		f.mobile.focus();
		return false;

	}
	if (f.gender[0].checked == false && f.gender[1].checked == false) {
		alert("성별 입력.");
		f.gender.focus();
		return false;

	}
	if (f.birthday.value == "") {
		alert("생일 입력.");
		f.birthday.focus();
		return false;

	}
	if (f.university.value == "") {
		alert("대학교 입력");
		f.university.focus();
		return false;

	}
	if (f.email.value == "") {
		alert("이메일 입력.");
		f.email.focus();
		return false;

	}
	f.submit();

}