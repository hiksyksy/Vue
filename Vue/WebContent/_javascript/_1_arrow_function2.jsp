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
    let multiple=function(n){
	  return n*2;
    };
 */
 //인수가 하나 밖에 없으면 괄호를 생략할 수 있습니다.
 let multiple = n => n*2;
  
 alert(multiple(10))
 </script>
</body>
</html>