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
  v-pre ��Ƽ�� : ���ø� ������ �����ϱ�
  �ڽ� ������Ʈ�� ������ ������ HTML�� ���������� �ʰ� ���� �������� �ٷ� �� ����մϴ�.
 --%>
  <div id="app">
    <a v-bind:href="url" v-pre>Hello{{message}}</a>
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