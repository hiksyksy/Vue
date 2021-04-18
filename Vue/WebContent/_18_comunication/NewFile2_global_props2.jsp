<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>부모 템블릿 -> 자식 컴포넌트로 데이터 전달은 props를 사용</title>
</head>
<body>

 <div id="app">
  <comp-child val='자식A'></comp-child>
  <comp-child val='자식B'></comp-child>
</div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  Vue.component('my-component',{
	  template:'<p><comp-child></comp-child></p>'
  })
  Vue.component('comp-child',{
	  template:'<p>{{val}}</p>',
	  props:['val']
  })
  new Vue({
	  el:"#app"
  })
  </script>
</body>
</html>