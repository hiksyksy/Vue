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
 �̺�Ʈ�� ó�� ���� : �̺�Ʈ �ڵ鷯
 �̺�Ʈ �ڵ鷯�� �̺�Ʈ�� �����ϴ� ���� �ڵ��̶�� �մϴ�.
 --%>
  <div id="app">
     <button v-on:click="handelClick">Ŭ��</button>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	methods:{
    		handelClick:function(){
    			alert('Ŭ���߾��')
    		}
    	}
    })
  </script>
</body>
</html>