<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<!--  div ���� Ŭ���� 1�� �����˴ϴ�. -->
<body>
  <div id="app" v-on:click="add">
    <h1>{{state}}</h1>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var state = {count:0}
    var app=new Vue({
    	el:'#app',
    	data:{
    		state: state
    	},
    	methods:{
    		add:function(){state.count++}
    	}
    })
    
  </script>
</body>
</html>