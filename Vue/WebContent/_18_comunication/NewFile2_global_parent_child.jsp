<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

 <div id="app">
    <comp-child ></comp-child>
</div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  Vue.component('my-component',{
	  template:'<p><comp-child></comp-child></p>'
  })
  Vue.component('comp-child',{
	  template:'<p>자식</p>',
  })
  new Vue({
	  el:"#app"
	  })
  </script>
</body>
</html>