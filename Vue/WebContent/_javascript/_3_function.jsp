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
  halfPoint = function(){
	  var halfWidth=100;
	  var halfHeight=200;
	  return {
		  x:halfWidth,
		  y:halfHeight
	  }
  }
  
  var result = halfPoint();
  console.log(result.x)
  console.log(result.y)
 </script>
</body>
</html>