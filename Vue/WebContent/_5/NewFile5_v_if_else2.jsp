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
       모든 조건을 만조하지 않는 경우
    
    === 일치 연산자(자료형과 값 일치 확인)
 --%>
  <div id="app">
    <div v-if="type === '1'">
      type는 '1'
    </div>
    <div v-else-if="type=== '2'">
      type는 '2'
    </div>
    <div v-else>
           모든 조건을 만조하지 않는 경우
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		type:1
    	}
    })
  </script>
</body>
</html>