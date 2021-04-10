<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div id="app-4">
  <ol>
    <li v-for="todo in todos">
      {{ todo.text }}
    </li>
  </ol>
</div>
  <!-- 개발버전, 도움되는 콘솔 경고를 포함. -->
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  <script>
  var app4 = new Vue({
	  el: '#app-4',
	  data: {
	    todos: [
	      { text: 'JavaScript 배우기' },
	      { text: 'Vue 배우기' },
	      { text: '무언가 멋진 것을 만들기' }
	    ]
	  }
	})
  </script>
</body>
</html>