<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
 체크박스를 여러 개 선택하는 경우
 1. 여러 개의 요소를 선택하는 경우 체크 박스는 배열로 데이터를 다룹니다.
 2. v-mode에 모두 같은 배열 데이터를 지정하고 각각의 요소에 value 속성을 형태로 사용합니다.
 --%>
  <div id="app">
     <label><input type="checkbox" v-model="val" value="A">A</label>
     <label><input type="checkbox" v-model="val" value="B">B</label>
     <label><input type="checkbox" v-model="val" value="C">C</label>
     <p>{{val}}</p>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		
    	val:[]
    	}
    })
  </script>
</body>
</html>