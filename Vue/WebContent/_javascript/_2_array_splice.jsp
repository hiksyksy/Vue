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

		//�ϳ��� �������� �ʰ� 2�� �ε����� 'drum' �߰�
		var myFish = [ 'angel', 'clown', 'mandarin', 'sturgeon' ];
		var removed = myFish.splice(2, 0, 'drum');
		//ù��° �Ű����� - ���� ��ġ
		//�ι�° �Ű����� - �迭���� ������ ����� ��
		//����° �Ű����� - �迭���� �߰��� ���
		//������ ��Ҹ� ���� �迭
		console.log(myFish) //["angel", "clown", "drum", "mandarin", "sturgeon"]
		console.log(removed)//[]

		//3�� �ε��� �� �� ��� ����
		var myFish = [ 'angel', 'clown', 'drum', 'mandarin', 'sturgeon' ];
		var removed = myFish.splice(3, 1);
		console.log(myFish)//["angel", "clown", "drum", "sturgeon"]
		console.log(removed)//["mandarin"]
		
		
		//0�� �ε��� ����� ���� 'thank you'�� �ٲٱ�
		var myFish = [ 'angel', 'clown', 'drum', 'mandarin', 'sturgeon' ];
		var removed = myFish.splice(0, 1,'thank you');
		console.log(myFish)//["thank you", "clown", "drum", "mandarin", "sturgeon"]
		console.log(removed)//["angel"]
	</script>
</body>
</html>