<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
 textarea는 다음과 같이 Mustache를 사용한 데이터 바인딩이 불가능합니다.
 <textarea v-model="message">{{message}}</textarea>
 --%>
  <div id="app">
     <textarea v-model="message"></textarea>
        <pre>{{message}}</pre>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		
    	message:'Hello!'
    	}
    })
  </script>
</body>
</html>