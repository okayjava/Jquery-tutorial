
<%
	// Author : 서실장 (coreaseo@gmail.com)
	// github : https://github.com/okayjava/Jquery-tutorial
	// blog : okayjava.tistory.com
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
<Script>
$(document).ready(function() {
	$('.starthide').hide();
// 	$('input').focusout(function() {
// 		var objId = $(this).prop('id');
// 		var nextId = $(this).data('nextid');
// 		$('#' + nextId).parent().parent().show();
// 		$('#' + nextId).focus();
// 	})

 	$('input').focusout(function() {
 		var objId = $(this).prop('id');
 		var nextId = '';
 		switch(objId) {
		case "input4":
				nextId = "input3";
				break;
		case "input3":
				nextId = "input2";
				break;
		case "input2":
				nextId = "input1";
				break;
 		}
 		$('#' + nextId).parent().parent().show();
 		$('#' + nextId).focus();
 	
 	});
})
</Script>
<body>

	<form>
		<table>
			<tr class="starthide">
				<td>input1 : <input type="tel" name="input1" id="input1"><br>
				</td>
			</tr>
			<tr class="starthide">
				<td>input2 : <input type="number" name="input2" id="input2" data-nextid="input1"><br>
				</td>
			</tr>
			<tr class="starthide">
				<td>input3 : <input type="text" name="input3" id="input3" data-nextid="input2"><br>
				</td>
			</tr>
			<tr>
				<td>email : <input type="email" name="input4" id="input4" data-nextid="input3"><br>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>