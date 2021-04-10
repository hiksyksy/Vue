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
 이벤트의 처리 내용 : 이벤트 핸들러
 이벤트 핸들러를 이벤트와 연결하는 것을 핸들이라고 합니다.
 --%>
  <div id="app">
     <button v-on:click="handelClick">클릭</button>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	methods:{
    		handelClick:function(){
    			alert('클릭했어요')
    		}
    	}
    })
  </script>
</body>
</html>