<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

 <div id="app">
   <my-component></my-component>
   <my-component></my-component>
</div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  var myComponent={
		  template : '<p>MyComponent-local</p>'
  }
  new Vue({
	  el: '#app',
	  components: {
	    'my-component':myComponent
	  }
	})
  </script>
</body>
</html>