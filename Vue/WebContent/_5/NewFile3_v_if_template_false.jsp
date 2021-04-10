<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
<div id="app"><!----></div>
 --%>
  <div id="app">
    <template v-if="ok">
      <header>타이틀</header>
      <div>콘텐츠</div>
    </template>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		ok:false
    	}
    })
  </script>
</body>
</html>