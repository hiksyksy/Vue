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
 //�Լ� ǥ������ ȭ��ǥ �Լ��� �ٲٱ�
function ask(question, yes, no) {
  if (confirm(question)) yes()
  else no();
}

ask(
	  "�����Ͻʴϱ�?",
	  function() { alert("�����ϼ̽��ϴ�."); },
	  function() { alert("��� ��ư�� �����̽��ϴ�."); }
	);
	
ask(
		  "�����Ͻʴϱ�?",
		  () => alert("�����ϼ̽��ϴ�."),
		  () => alert("��� ��ư�� �����̽��ϴ�.")
		);	
 </script>
</body>
</html>