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
 const oneTwoThree = [1, 2, 3];
 let result = oneTwoThree.map((v) => {
   console.log(v);
   return v;
 });
 
 // 콘솔에는 1, 2, 3이 찍힘
 //oneTwoThree; // [1, 2, 3]
 //result; // [1, 2, 3]
 //oneTwoThree === result; // false
 </script>
</body>
</html>