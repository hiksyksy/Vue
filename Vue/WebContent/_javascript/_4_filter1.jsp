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
1. filter() �޼���� �־��� �Լ��� �׽�Ʈ�� ����ϴ� ��� ��Ҹ� ��� ���ο� �迭�� ��ȯ�մϴ�.
2. ����)
   arr.filter(callback(element[, index[, array]])[, thisArg])
   (1)callback : �� ��Ҹ� �׽�Ʈ�� �Լ��� �׽�Ʈ���� true�� ��ȯ�ϸ� ��Ҹ� �����ϰ�
                 false�� ��ȯ�ϸ� �����ϴ�.
   (2)element : ó���� ���� ���              
   (3)index(�ɼ�) : ó���� ����� �ε���              
   (4)array(�ɼ�) : filter�� ȣ���� �迭
   (5)thisArg(�ɼ�) : callback�� ������ �� this�� ����ϴ� ��
   (6)��ȯ �� : �׽�Ʈ�� ����� ��ҷ� �̷���� ���ο� �迭�� � ��ҵ� �׽�Ʈ�� ������� �������� �� �迭�� ��ȯ�մϴ�.
   (7)filter()�� ȣ��Ǵ� �迭�� ��ȭ��Ű�� �ʽ��ϴ�.(mutate)
 */
 const words = ['spray', 'limit', 'elite', 'exuberant', 'destruction', 'present'];
 const copy=words;
 const result = words.filter(word => word.length > 6);

 console.log(result); 
 
// words.sort(); //words�� ������������ ���ĵǸ鼭 ����� ������ �ٲ�ϴ�.
 //console.log(words)
 
 result1=words.slice(0).sort(); //����  words�� �����ǰ� sort()
 console.log(words)
 console.log(result1)
 </script>
</body>
</html>