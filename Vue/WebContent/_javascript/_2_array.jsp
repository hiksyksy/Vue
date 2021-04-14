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
		var arr = [ 'apple', 'banana', 'caret' ]
		arr.push('orange');
		console.log(arr)//["apple", "banana", "caret", "orange"]

		//하나도 제거하지 않고 2번 인덱스에 'drum' 추가
		var myFish = [ 'angel', 'clown', 'mandarin', 'sturgeon' ];
		var removed = myFish.splice(2, 0, 'drum');
		//첫번째 매개변수 - 변경 위치
		//두번째 매개변수 - 배열에서 제거할 요소의 수
		//세번째 매개변수 - 배열에서 추가할 요소
		//제거한 요소를 담은 배열
		console.log(myFish) //["angel", "clown", "drum", "mandarin", "sturgeon"]
		console.log(removed)//[]

		//3번 인덱스 한 개 요소 제거
		var myFish = [ 'angel', 'clown', 'drum', 'mandarin', 'sturgeon' ];
		var removed = myFish.splice(3, 1);
		console.log(myFish)//["angel", "clown", "drum", "sturgeon"]
		console.log(removed)//["mandarin"]
		
		
		//0번 인덱스 요소의 값을 'thank you'로 바꾸기
		var myFish = [ 'angel', 'clown', 'drum', 'mandarin', 'sturgeon' ];
		var removed = myFish.splice(0, 1,'thank you');
		console.log(myFish)//["thank you", "clown", "drum", "mandarin", "sturgeon"]
		console.log(removed)//["angel"]
	</script>
</body>
</html>