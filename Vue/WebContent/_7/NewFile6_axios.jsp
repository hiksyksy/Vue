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
  <button v-on:click="fetchData">get data</button>
</div>

  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <%--
  액시오스
뷰에서 권고하는 HTTP 통신 라이브러리는 액시오스(Axios)입니다. 
Promise 기반의 HTTP 통신 라이브러리이며 상대적으로 다른 HTTP 통신 라이브러리들에 비해 문서화가 잘되어 있고 
API가 다양합니다.

#액시오스 설치
   --%>
  <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
  <script>
  new Vue({
	  el: '#app',
	  methods: {
	    fetchData: function() {
	      axios.get('https://jsonplaceholder.typicode.com/users/')
	        .then(function(response) {
	          console.log(response);
	        })	        
	    }
	  }
	})
  </script>
</body>
</html>