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
<div id="app">
      <!---->   
      <div style="display: none;">v-show �������� ����ϱ�</div>
</div>
 --%>
  <div id="app">
    <div v-if="ok">v-if �������� ����ϱ�:false�̸� �ּ����� ��Ÿ���ϴ�.</div>
    <div v-show="ok">v-show �������� ����ϱ�</div>
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