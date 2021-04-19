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
    <tr><th>인덱스</th><th>이름</th><th>수</th></tr>
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
  액시오스
뷰에서 권고하는 HTTP 통신 라이브러리는 액시오스(Axios)입니다. 
Promise 기반의 HTTP 통신 라이브러리이며 상대적으로 다른 HTTP 통신 라이브러리들에 비해 문서화가 잘되어 있고 
API가 다양합니다.

#액시오스 설치
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