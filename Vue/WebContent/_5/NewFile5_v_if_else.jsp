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
   <div id="app"><div>
      type�� A
    </div></div>
    
    === ��ġ ������(�ڷ����� �� ��ġ Ȯ��)
 --%>
  <div id="app">
    <div v-if="type === 'A'">
      type�� A
    </div>
    <div v-else-if="type=== 'B'">
      type�� B
    </div>
    <div v-else>
           ��� ������ �������� �ʴ� ���
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		type:'A'
    	}
    })
  </script>
</body>
</html>