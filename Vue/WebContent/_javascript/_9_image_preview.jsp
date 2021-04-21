<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 
  <input type="file" onchange="handleChange(event)"><br>
  <img id="preview">
 <!--
 https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL

Ư�� ���� ��ü�� ���� ���� �Ǵ� �������� ������ ����Ű�� ���ο� ��ü URL�� �����Ѵ�.
������ ���� ���� â�̳�, ��ü�� ������ ���� �������� ��ȿ�ϴ�.
�� ��ü URL�� Ư�� File ��ü�� Blob ��ü�� ǥ���� �� �ִ�.

  var blobURL = window.URL.createObjectURL(blob);

�Ű������� ������ blob�� URL�� ������ File ��ü�� Blob ��ü�̴�.
������ objectURL�� �ش� ������ ��ü ������ URL �ؽ�Ʈ�� ��ȯ�� ���̴�.
��ü�� URL�� ����� ���ƴٸ�, �Ʒ� �޼��带 ȣ���� �޸𸮿��� �������ִ� ���� ����.

    window.URL.revokeObjectURL(blobURL);
 -->
 <script>
 function handleChange(event){
	 var file=event.target.files[0]
	 console.log(file.type)
	 //image/png , image/jpeg�� �̹��� �̸������մϴ�.
	 if(file && file.type.match(/^image\/(png|jpeg)$/)){
		 var blobURL = window.URL.createObjectURL(file);
		    document.getElementById("preview").src = blobURL;
		}else{
			document.getElementById("preview").src = "";
		}
 }
	       
 </script>
</body>
</html>