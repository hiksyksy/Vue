<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> <title>here</title></head>
<style>
 img{
 opacity: 1;
 transition : opacity 10s;
 width:30%}
 
 img.hide{
  opacity: 0;
 }
</style>
<body>
<%--
 브라우저에서 지원하는 이벤트는 모두 사용할 수 있습니다.
 --%>
  <div id="app">
     <img src="../image/strawberry.png" v-on:load="show=true" v-bind:class="{hide:!show}">
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data :{
    		show:false
    	}
    })
  </script>
</body>
</html>