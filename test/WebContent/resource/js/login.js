function fn_submit() {

	let f = document.frm;
 
	if (f.userid.value =="") {
		alert("아이디 입력.");
		f.userid.focus();
		return false;

	} 
		if (f.pass.value == "") {
		alert("비번 입력.");
		f.pass.focus();
		return false;

	} 
		
	f.submit();	
}