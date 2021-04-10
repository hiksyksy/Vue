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
  v-cloak 디렉티브 : 인스턴스 준비가 끝나면 자동으로 제거됩니다. 인스턴스가 생성될 때까지 Mustache등의 컴파일 이전 단계의
  템플릿이 화면에 출력되는 것을 막을 수 있습니다.
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