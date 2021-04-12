<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
캐시 기능 때문에 산출 속성은 원래 데이터에 변경이 있을 때까지 처리를 추가로 실행하지 않습니다.
따라서 복잡한 처리를 하기에 적합합니다.
 --%>
  <div id="app">
    <input v-model.number="budget">원 이하 필터링하기
    <input v-model.number="limit">개의 결과 출력하기
    <p>{{matched.length}}개 중에 {{limited.length}}개를 출력하고 있습니다.</p>
    <ul>
      <li v-for="item in limited" v-bindLkey="item.id">
         {{item.name}}  {{item.price}}원
      </li>
    </ul>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		budget:300,
    		limit:2,
    		list:[
    			{id:1,name:'사과',price:100},
    			{id:2,name:'바나나',price:200},
    			{id:3,name:'딸기',price:400},
    			{id:4,name:'오렌지',price:400},
    			{id:5,name:'메론',price:500}
    		]
    	},
    	computed:{
    		matched:function(){
    			return this.list.filter(function(item){  //list항목을 한 개씩 가져와서 price의 값과 budget를 비교해서
    				                                     //item.price <= this.budget 인 경우 리턴합니다.
    				return item.price <= this.budget      
    			},this)                                  //filter()안에서 사용할 this를 넘깁니다. 
    		},
    		limited:function(){ //matched로 리턴한 데이터를 limit 조건을 걸어 리턴하는 산출 속성
    			return this.matched.slice(0,this.limit)
    		}
    	}
    })
  </script>
</body>
</html>