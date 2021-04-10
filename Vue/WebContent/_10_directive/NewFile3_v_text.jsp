<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
  v-text 디렉티브 : Mustache 대신 텍스트 콘텐츠로 렌더링 하기
 --%>
  <div id="app">
    <span v-text="message"></span>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  var app = new Vue({
	  el: '#app',
	  data: {
	    message: '안녕하세요 Vue!',
	    url:"list"
	  }
	})
  </script>
</body>
</html>