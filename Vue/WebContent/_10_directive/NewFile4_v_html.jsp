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
  v-html ��Ƽ�� : html �±׸� ���� ����ϰ� ���� �� ����մϴ�.
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