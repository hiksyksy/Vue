<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
  
  <div id="app">
  <button v-on:click="fetchData">get data</button>
  <p>{{items}}</p>
  <table class="table">
    <tr><th>�ε���</th><th>�̸�</th><th>��</th></tr>
    <tr v-for="(item,index) in items"><td>{{index}}</td><td>{{item.name}}</td><td>{{item.su}}</td></tr>
  </table>
  
  <hr>
  <p v-for="(item,index) in items">index:{{index}}
                                   name :{{item.name}} 
                                   su   : {{item.su}}</p>
  <hr>
  
  </div>
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
	  data:{
		items:[]
	  },
	  methods: {
	    fetchData: function() {
	      var arr=this.items;	
	      axios.get('/Vue/getJson')
	        .then(function(response) {
	        	 console.log(response.data)
	        	 response.data.forEach( 
	        			 (item) =>  arr.push({name:item.name,su:item.su})
	        	 )
	        })
	        .catch(function(error) {
	          console.log(error);
	        });
	    }
	  }
	})
  </script>
</body>
</html>