function fn_idcheck() {

	
	let userid = document.frm.userid.value;
	if( userid == ""){
	alert("아이디 입력");
	document.frm.userid.focus();
	return false;
	}
	if( userid.length < 4 || userid.length > 12){
		alert("아이디는 4자~12자 사이로 입력해주세요.");
		return false;
	}
	let url = "idcheck.jsp?userid="+userid;
	window.open(url,"중복 아이디","width=300,height =200");
	
	}

function fn_submit() {

	let f = document.frm;
 
	if (f.userid.value =="") {
		alert("아이디 입력.");
		f.userid.focus();
		return false;

	} 
		if (f.username.value == "") {
		alert("이름 입력.");
		f.username.focus();
		return false;

	} 
		if (f.pass.value == "") {
		alert("비번 입력.");
		f.pass.focus();
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
	if (f.userUniversity.value == "") {
		alert("대학교 입력");
		f.userUniversity.focus();
		return false;

	} 
	if (f.userEmail.value == "") {
		alert("이메일 입력.");
		f.userEmail.focus();
		return false;

	} 
	f.submit();
	
}