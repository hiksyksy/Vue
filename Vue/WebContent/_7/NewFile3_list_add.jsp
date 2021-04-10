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
    
    
    형식)  v_bind:class="{strong:item.hp>300}">
        item.hp>300 이면 strong 클래스를 적용하라는 의미
 --%>
  <div id="app">
  이름 <input v-model="name">
  <button v-on:click="doAdd">몬스터 추가하기</button>
  <ul>
    <li v-for="item in list"
        v-bind:key="item.id"
        >
      ID.{{ item.id }} {{ item.name }} HP.{{ item.hp }}
    </li>
  </ul>
</div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		list:[
    			{id:1, name:'슬라임',hp:100},
    			{id:2, name:'고블린',hp:200},
    			{id:3, name:'드래곤',hp:500}
    		]
    	},
    	methods:{
    		doAdd :function(){
    			
    			console.log(this==window ? 'this==window' : 'this!=window')
    			/*
    			최대값 구하기
    			var max=this.list.reduce(function(a,b){
    				return a>b.id ? a : b.id
    			},0)//reduce
    			*/
    			var max=Math.max(this.list);
    			
    			this.list.push({
    				id:max+1,
    				name:this.name,
    				hp:500
    			});//push
    		}//doAdd
    	}//methods
    })//Vue
  </script>
</body>
</html>