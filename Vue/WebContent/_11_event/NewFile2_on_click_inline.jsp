<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
 이벤트의 처리 내용 : 이벤트 핸들러
 이벤트 핸들러를 이벤트와 연결하는 것을 핸들이라고 합니다.
 인라인 메서드 핸들링이란 디렉티브의 값에 자바스크립 식을 직접 작성하는 것입니다. 
 짦은 식 사용시에 작성하는 것이 좋습니다.
 --%>
  <div id="app">
     <button v-on:click="count++">클릭</button>
     클릭한 횟수 : {{count}}
     
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data :{
    		count:0
    	}
    })
  </script>
</body>
</html>