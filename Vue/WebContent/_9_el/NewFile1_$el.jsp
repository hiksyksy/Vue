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
  DOM�� ������ �� �ν��Ͻ� �Ӽ� $el�� $refs�� ����մϴ�.
   �� �ΰ��� �Ӽ��� DOM�� �����ؾ� ����� �� �ֽ��ϴ�. ������ ����Ŭ �� mounted ���� ���� ����� �� �ֽ��ϴ�.
 --%>
  <div id="app">
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	mounted:function(){
    		console.log(this.$el) //<div id="app"></div>
    	}
    })
  </script>
</body>
</html>