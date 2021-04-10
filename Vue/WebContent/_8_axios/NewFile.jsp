<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
  DOM에 접근할 때 인스턴스 속성 $el나 $refs를 사용합니다.
   이 두가지 속성은 DOM을 참조해야 사용할 수 있습니다. 라이프 사이클 중 mounted 이후 부터 사용할 수 있습니다.
 --%>
  <div id="app">
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	mounted:function(){
    		console.log(this.$el) //<div id="app"></div>
    	}
    })
  </script>
</body>
</html>