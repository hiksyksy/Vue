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
<div id="app"><header>Ÿ��Ʋ</header> <div>������</div></div>
 --%>
  <div id="app">
    <template v-if="ok">
      <header>Ÿ��Ʋ</header>
      <div>������</div>
    </template>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		ok:true
    	}
    })
  </script>
</body>
</html>