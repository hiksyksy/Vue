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

특정 파일 객체나 로컬 파일 또는 데이터의 참조를 가리키는 새로운 객체 URL을 생성한다.
생성한 값은 현재 창이나, 객체를 생성한 문서 내에서만 유효하다.
새 객체 URL은 특정 File 객체나 Blob 객체로 표현할 수 있다.

  var blobURL = window.URL.createObjectURL(blob);

매개변수로 전달한 blob는 URL을 생성할 File 객체나 Blob 객체이다.
생서된 objectURL은 해당 파일의 전체 내용을 URL 텍스트로 변환한 값이다.
객체의 URL의 사용을 마쳤다면, 아래 메서드를 호출해 메모리에서 해제해주는 것이 좋다.

    window.URL.revokeObjectURL(blobURL);
 -->
 <script>
 function handleChange(event){
	 var file=event.target.files[0]
	 console.log(file.type)
	 //image/png , image/jpeg는 이미지 미리보기합니다.
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