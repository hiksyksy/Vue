<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div id="app-9">
  
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
 <%-- 
    mounted�� �ν��Ͻ��� ���¸� ����ؼ� DOM�� ���� ���Ŀ� ȣ��˴ϴ�.
       ���� �ν��Ͻ� ���� ���ø��� getElementById()�� ����� �� �ֽ��ϴ�.
       �ٸ� ��� �ڽ� ������Ʈ�� ����Ʈ�Ǿ��ٴ� ���� �������� �ʽ��ϴ�.   
 --%>
  <script>
	var app9 = new Vue({
	  el: '#app-9',
	  mounted: function(){
		  console.log('mounted')
	  }
	})
  </script>
</body>
</html>