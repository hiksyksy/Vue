<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <script>
 //함수 표현식을 화살표 함수로 바꾸기
function ask(question, yes, no) {
  if (confirm(question)) yes()
  else no();
}

ask(
	  "동의하십니까?",
	  function() { alert("동의하셨습니다."); },
	  function() { alert("취소 버튼을 누르셨습니다."); }
	);
	
ask(
		  "동의하십니까?",
		  () => alert("동의하셨습니다."),
		  () => alert("취소 버튼을 누르셨습니다.")
		);	
 </script>
</body>
</html>