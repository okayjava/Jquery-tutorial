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
<title>모바일 포커스 컨트롤</title>
</head>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
 <Script>
 $(document).ready(function() {
	 $('.tr').hide();
	 $('#txtName').parent().parent().show();	 
	 
	 $('input').focusout(function(x){
		 var nextid = "";
		 switch($(this).prop('id')) {
		 	case "txtName":
		 		nextid = "txtAge";
		 		break;
		 	case "txtAge":
		 		nextid = "txtLoc";
		 		break;
		 	case "txtLoc":
		 		nextid = "txtLang";
		 		break;


		 }
		 	console.log('focusout : ' + x);
		 	console.log('id : ' + $(this).prop('id'));
		 	console.log('nextid : ' + nextid);
		 	$('#' + nextid).parent().parent().show();
		 	$('#' + nextid).focus();
		 	console.log($(this));
	});
 })
 </Script>
<body>
<div >
    <div>
        <table>
        <tbody>
        <form id="autoTab">
        <tr class="tr">
	        <th><label for="txtLang">사용언어 :</label></th>
	        <td><input type="text" name="txtLang" id="txtLang" value="" class="txtPin" placeholder="사용언어를 입력하세요" /></td>
        </tr>
        <tr class="tr">
	        <th><label for="txtLoc">지역 :</label></th>
	        <td><input type="text" name="txtLoc" id="txtLoc" value="" class="txtPin" placeholder="지역을 입력하세요" /></td>
        </tr>
        <tr class="tr">
	        <th><label for="txtAge">나이 :</label></th>
	        <td><input type="number" name="txtAge" id="txtAge" value="" class="txtPin" placeholder="나이를 입력하세요" /></td>
        </tr>
        <tr class="tr">
	        <th><label for="txtName">이름 :</label></th>
	        <td><input type="text" name="txtName" id="txtName" value="" class="txtPin" placeholder="이름을 입력하세요" /></td>
        </tr>
        </form>
        <tr>
	        <th colspan="2"><button>aaa</button></th>
        </tr>
        
        </tbody>
        </table>
    </div>
</div> 
</body>
</html>