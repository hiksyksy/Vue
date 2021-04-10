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
    
    
    ����)  v_bind:class="{strong:item.hp>300}">
        item.hp>300 �̸� strong Ŭ������ �����϶�� �ǹ�
 --%>
  <div id="app">
  �̸� <input v-model="name">
  <button v-on:click="doAdd">���� �߰��ϱ�</button>
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
    			{id:1, name:'������',hp:100},
    			{id:2, name:'���',hp:200},
    			{id:3, name:'�巡��',hp:500}
    		]
    	},
    	methods:{
    		doAdd :function(){
    			
    			console.log(this==window ? 'this==window' : 'this!=window')
    			/*
    			�ִ밪 ���ϱ�
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