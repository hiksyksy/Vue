<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
 라디오 버튼을 클릭한 경우
 1. 라디오 버튼은 기본적으로 데이터를 문자열로 다룹니다.
 --%>
  <div id="app">
     <label><input type="radio" v-model="val" value="A">A</label>
     <label><input type="radio" v-model="val" value="B">B</label>
     <label><input type="radio" v-model="val" value="C">C</label>
     <p>{{val}}</p>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		
    	val:''
    	}
    })
  </script>
</body>
</html>