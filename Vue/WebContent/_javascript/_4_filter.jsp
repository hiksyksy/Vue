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
		{id:1,name:'���',price:100},
		{id:2,name:'�ٳ���',price:200},
		{id:3,name:'����',price:400},
		{id:4,name:'������',price:400},
		{id:5,name:'�޷�',price:500}
	]
  //filter() �޼���� �־��� �Լ��� �׽�Ʈ�� ����ϴ� ��� ��Ҹ� ��� ���ο� �迭�� ��ȯ�մϴ�.
  var result =list.filter(function(item){
	  return item.price <= 200
  })
  
  console.log(result)
 </script>
</body>
</html>