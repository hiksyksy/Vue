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
 <%-- ������ ����Ŭ : Vue.js�� ���� ��ħ������ ������ ����Ŭ�� ��Ÿ���ϴ�.
          �̷��� ������ ����Ŭ�� �̸� ����ؼ� ������ �ñ⿡ �ڵ����� ȣ���ϴ� ���� Hook(��)�̶�� �մϴ�. 
      Vue �ν��Ͻ��� �����ǰ� ������ ���� ���� ����Ƽ�� �ý��۰� ���õ� �ʱ�ȭ�� ������ ��   created �޼��尡 �ڵ����� ȣ��˴ϴ�.  
          --%>
  <script>
	var app9 = new Vue({
	  el: '#app-9',
	  created: function(){
		  //�� �ν��Ͻ��� ������ �ʱ�ȭ�� ����Ǿ��� ��
		  //���� DOM�� ������� ���� ���·� �ν��Ͻ� �ڽ��� ��Ÿ���� this���� ������ �� ������  getElementById() ���� ����� DOM ������ �Ұ����մϴ�.
		  console.log('created')
	  }
	})
  </script>
</body>
</html>