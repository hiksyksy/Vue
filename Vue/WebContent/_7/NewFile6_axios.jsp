<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

  <div id="app">
  <button v-on:click="fetchData">get data</button>
</div>

  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <%--
  �׽ÿ���
�信�� �ǰ��ϴ� HTTP ��� ���̺귯���� �׽ÿ���(Axios)�Դϴ�. 
Promise ����� HTTP ��� ���̺귯���̸� ��������� �ٸ� HTTP ��� ���̺귯���鿡 ���� ����ȭ�� �ߵǾ� �ְ� 
API�� �پ��մϴ�.

#�׽ÿ��� ��ġ
   --%>
  <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
  <script>
  new Vue({
	  el: '#app',
	  methods: {
	    fetchData: function() {
	      axios.get('https://jsonplaceholder.typicode.com/users/')
	        .then(function(response) {
	          console.log(response);
	        })	        
	    }
	  }
	})
  </script>
</body>
</html>