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
       ��� ������ �������� �ʴ� ���
    
   (1) === ��ġ ������(�ڷ����� �� ��ġ Ȯ��)
   (2) ���ڿ� ���ڿ��� ���� ��� ���ڿ��� ���ڷ� ��ȯ�� �� ���Ѵ�. 
            ���� ������(==)
 --%>
  <div id="app">
    <div v-if="type == '1'">
      type�� '1'
    </div>
    <div v-else-if="type== '2'">
      type�� '2'
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
    		type:1
    	}
    })
  </script>
</body>
</html>