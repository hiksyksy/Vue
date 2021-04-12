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
 var list=[
		{id:1,name:'사과',price:100},
		{id:2,name:'바나나',price:200},
		{id:3,name:'딸기',price:400},
		{id:4,name:'오렌지',price:400},
		{id:5,name:'메론',price:500}
	]
  //filter() 메서드는 주어진 함수의 테스트를 통과하는 모든 요소를 모아 새로운 배열로 반환합니다.
  var result =list.filter(function(item){
	  return item.price <= 200
  })
  
  console.log(result)
 </script>
</body>
</html>