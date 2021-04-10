<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
 체크박스는 기본적으로 데이터를 불(boolean)으로 다룹니다.
 
 체크 상태에 따라 요소 값을 설정하고 싶은 경우에 true-value, false-value 속성을 사용합니다.
  <input type="checkbox" v-model="val" true-value="yes" false-value="no">{{val}}
 --%>
  <div id="app">
     <input type="checkbox" v-model="val">{{val}}
     
     <input type="checkbox" v-model="val" true-value="yes" false-value="no">{{val}}
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		
    	val:true
    	}
    })
  </script>
</body>
</html>