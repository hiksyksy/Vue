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
 var fruit = ['orange', 'apple', 'banana'];

 /* �Ϲ����� ��� */
 fruit.sort(); // apple, banana, orange
 console.log("fruit="+fruit)
 
 
 var score = [4, 11, 2, 10, 3, 1];
 /* ���ϴ� ������ �ƴ� */
 score.sort(); // 1, 10, 11, 2, 3, 4 
               // ASCII ���� ������ ���ĵǾ� ������ ũ���� ������ ����
 console.log("score="+score)               

 // 1, 10, 11, 2, 3, 4 
 /* ���� ���� */
 score.sort(function(a, b) { // ��������
	 console.log("sort="+score)
	 console.log("a="+a+",b="+b)
     return a - b;
     // 1, 2, 3, 4, 10, 11
 });
 console.log("score asc="+score)   

 score.sort(function(a, b) { // ��������
     return b - a;
     // 11, 10, 4, 3, 2, 1
 });
 console.log("score desc="+score)   
 
 
 
  var myArray=['one','two','three','four','five'];
  var result=myArray.sort(); //���ڿ� �������� ���� - �����ڵ尪�� ���� ���ĵ˴ϴ�.
  console.log(result)
  
  
  var myArray=['one','two','three','four','five'];
  myArray.sort(function(a,b){
	  return a<b?-1:1;        //��������
  });
  
  
  var myArray=['one','two','three','four','five'];
  myArray.sort(function(a,b){
	  return a>b?-1:1;        //��������
  });
 
 </script>
</body>
</html>