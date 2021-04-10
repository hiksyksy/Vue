<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
 @keyframes cloak-in {
  0% {
    opacity: 0;
  }
}
#app {
  animation: cloak-in 10s;
  color:orange;
}
#app[v-cloak] {
  opacity: 0;
  
}
</style>
</head>
<body>
<%--
  v-cloak ��Ƽ�� : �ν��Ͻ� �غ� ������ �ڵ����� ���ŵ˴ϴ�. �ν��Ͻ��� ������ ������ Mustache���� ������ ���� �ܰ���
  ���ø��� ȭ�鿡 ��µǴ� ���� ���� �� �ֽ��ϴ�.
 --%>
  <div id="app" v-cloak>
  {{ message }}
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