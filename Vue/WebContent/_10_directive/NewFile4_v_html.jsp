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
  v-html 디렉티브 : html 태그를 직접 출력하고 싶을 때 사용합니다.
 --%>
  <div id="app">
    <span v-html="message"></span>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  var app = new Vue({
	  el: '#app',
	  data: {
	    message: 'Hello <strong>Vue.js!</strong>'
	  }
	})
  </script>
</body>
</html>