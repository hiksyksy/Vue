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
<div id="app"><div>v-if 조건으로 출력하기</div> 
              <div>v-show 조건으로 출력하기</div>
</div>
 --%>
  <div id="app">
    <div v-if="ok">v-if 조건으로 출력하기</div>
    <div v-show="ok">v-show 조건으로 출력하기</div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		ok:true
    	}
    })
  </script>
</body>
</html>