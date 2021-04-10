<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div id="app-5">
    <p>{{ count }} 번 클릭했습니다.</p>
    <button v-on:click="increment">카운트하기</button>
  </div>
  <!-- 개발버전, 도움되는 콘솔 경고를 포함. -->
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
 <%--
  1. 마운트 : 배치할 요소와 애플리케이션을 연결하는 것을 의미합니다.
  2. el : 마운트할 요소를 작성합니다. 선택자 형태로 지정합니다.
  3. data :  애플리케이션에서 사용할 데이터를 나타내고 객체 또는 배열로 지정합니다.
  --%>
  <script>
  var app6 = new Vue({
	  el: '#app-5',  
	  data: {
	    count:0
	  },
	  methods:{
		  increment:function(){
			  this.count += 1
		  }
	  }
	})
  </script>
</body>
</html>