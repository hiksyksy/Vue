<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div id="app-9">
  
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
 <%-- 
    mounted는 인스턴스의 상태를 사용해서 DOM을 만든 직후에 호출됩니다.
       따라서 인스턴스 내부 템플릿의 getElementById()를 사용할 수 있습니다.
       다만 모든 자식 컴포넌트가 마운트되었다는 것은 보증하지 않습니다.   
 --%>
  <script>
	var app9 = new Vue({
	  el: '#app-9',
	  mounted: function(){
		  console.log('mounted')
	  }
	})
  </script>
</body>
</html>