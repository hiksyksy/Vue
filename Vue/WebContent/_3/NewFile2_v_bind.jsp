<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div id="app-2">
  <span v-bind:title="message">
    �� ���� ��� ���콺�� �ø��� �������� ���ε� �� title�� �� �� �ֽ��ϴ�!
  </span>
</div>
  <!-- ���߹���, ����Ǵ� �ܼ� ��� ����. -->
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  <script>
  var app2 = new Vue({
	  el: '#app-2',
	  data: {
	    message: '�� �������� ' + new Date() + ' �� �ε� �Ǿ����ϴ�'
	  }
	})
  </script>
</body>
</html>