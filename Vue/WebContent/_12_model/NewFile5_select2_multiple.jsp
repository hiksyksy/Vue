<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
 선택 박스를 여러 개 선택하는 경우
 --%>
  <div id="app">
     <select v-model="val" multiple>
       <option disabled="disabled">선택해 주세요</option>
       <option value="a">A</option>
       <option value="b">B</option>
       <option value="c">C</option>
       
     </select>
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