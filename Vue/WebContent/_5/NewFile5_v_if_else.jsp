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
   <div id="app"><div>
      type는 A
    </div></div>
    
    === 일치 연산자(자료형과 값 일치 확인)
 --%>
  <div id="app">
    <div v-if="type === 'A'">
      type는 A
    </div>
    <div v-else-if="type=== 'B'">
      type는 B
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
    		type:'A'
    	}
    })
  </script>
</body>
</html>