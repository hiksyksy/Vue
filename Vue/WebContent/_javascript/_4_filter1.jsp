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
 Array.prototype.filter()
1. filter() 메서드는 주어진 함수의 테스트를 통과하는 모든 요소를 모아 새로운 배열로 반환합니다.
2. 형식)
   arr.filter(callback(element[, index[, array]])[, thisArg])
   (1)callback : 각 요소를 테스트할 함수로 테스트에서 true를 반환하면 요소를 유지하고
                 false를 반환하면 버립니다.
   (2)element : 처리할 현재 요소              
   (3)index(옵션) : 처리할 요소의 인덱스              
   (4)array(옵션) : filter를 호출한 배열
   (5)thisArg(옵션) : callback을 실행할 때 this로 사용하는 값
   (6)반환 값 : 테스트를 통과한 요소로 이루어진 새로운 배열로 어떤 요소도 테스트를 통과하지 못했으면 빈 배열을 반환합니다.
   (7)filter()는 호출되는 배열을 변화시키지 않습니다.(mutate)
 */
 const words = ['spray', 'limit', 'elite', 'exuberant', 'destruction', 'present'];
 const copy=words;
 const result = words.filter(word => word.length > 6);

 console.log(result); 
 
// words.sort(); //words가 오름차순으로 정렬되면서 요소의 순서가 바뀝니다.
 //console.log(words)
 
 result1=words.slice(0).sort(); //원본  words는 유지되고 sort()
 console.log(words)
 console.log(result1)
 </script>
</body>
</html>