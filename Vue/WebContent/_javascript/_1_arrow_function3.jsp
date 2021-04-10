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
 /*
    let result=function(){
	  alert('I love you');
    };
 */
 //인수가 하나 밖에 없으면 괄호를 생략할 수 있습니다.
 let result = () => alert('I love you');
  
 result();
 </script>
</body>
</html>