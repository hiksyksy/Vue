<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
    
 1.input의 value 속성을 v_model로 처리할 수 있습니다.
   title1의 값을 value에 적용합니다.
 <input type="text" value="개발자의 품격">
=><input type="text" v-model="title1">

 --%>
  <div id="app">
    <h1>{{title1}}</h1>
    <input type="text" v-model="title1">
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    			title1:"개발자의 품격",
    			title2:"Seoul",
    			input1:"abcd"
    	}
    })
  </script>
</body>
</html>