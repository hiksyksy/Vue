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
  v-text ��Ƽ�� : Mustache ��� �ؽ�Ʈ �������� ������ �ϱ�
 --%>
  <div id="app">
    <span v-text="message"></span>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  var app = new Vue({
	  el: '#app',
	  data: {
	    message: '�ȳ��ϼ��� Vue!',
	    url:"list"
	  }
	})
  </script>
</body>
</html>