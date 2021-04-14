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

 /* 일반적인 방법 */
 fruit.sort(); // apple, banana, orange
 console.log("fruit="+fruit)
 
 
 var score = [4, 11, 2, 10, 3, 1];
 /* 원하는 정렬이 아님 */
 score.sort(); // 1, 10, 11, 2, 3, 4 
               // ASCII 문자 순서로 정렬되어 숫자의 크기대로 나오지 않음
 console.log("score="+score)               

 // 1, 10, 11, 2, 3, 4 
 /* 정상 동작 */
 score.sort(function(a, b) { // 오름차순
	 console.log("sort="+score)
	 console.log("a="+a+",b="+b)
     return a - b;
     // 1, 2, 3, 4, 10, 11
 });
 console.log("score asc="+score)   

 score.sort(function(a, b) { // 내림차순
     return b - a;
     // 11, 10, 4, 3, 2, 1
 });
 console.log("score desc="+score)   
 
 
 
  var myArray=['one','two','three','four','five'];
  var result=myArray.sort(); //문자열 오름차순 정렬 - 유니코드값에 따라 정렬됩니다.
  console.log(result)
  
  
  var myArray=['one','two','three','four','five'];
  myArray.sort(function(a,b){
	  return a<b?-1:1;        //오름차순
  });
  
  
  var myArray=['one','two','three','four','five'];
  myArray.sort(function(a,b){
	  return a>b?-1:1;        //내림차순
  });
 
 </script>
</body>
</html>