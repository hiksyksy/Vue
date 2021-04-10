<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div id="app-3">
  <p v-if="seen">이제 나를 볼 수 있어요</p>
</div>
  <!-- 개발버전, 도움되는 콘솔 경고를 포함. -->
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  <script>
  var app3 = new Vue({
	  el: '#app-3',
	  data: {
	    seen: true
	  }
	})
  </script>
</body>
</html>