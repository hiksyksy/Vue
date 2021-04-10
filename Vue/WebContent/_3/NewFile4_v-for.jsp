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
    <li v-for="item in list">
      {{ item }}
    </li>
  </ol>
</div>
  <!-- 개발버전, 도움되는 콘솔 경고를 포함. -->
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  <script>
  var app4 = new Vue({
	  el: '#app-4',
	  data: {
	    list: ['사과','바나나','딸기'] 
	  }
	})
  </script>
</body>
</html>