<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div id="app">
     {{ message }}
   </div>
  <!-- ���߹���, ����Ǵ� �ܼ� ��� ����. -->
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  <script >
  var app = new Vue({
	  el: '#app',
	  data: {
	    message: '�ȳ��ϼ��� Vue!'
	  }
	})
  </script>
</body>
</html>