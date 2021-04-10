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
  <ul>
    <li v-for="(item, index) in list" v-bind:key="item.id" v-if="item.hp">
      ID.{{ item.id }} {{ item.name }} HP.{{ item.hp }}
      <span v-if="item.hp<50">ū ����...!</span>
      <!-- ���� ��ư�� v-for ���ο� ����� -->
      <button v-on:click="doAttack(index)">�����ϱ�</button>
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
    		doAttack:function(index){
    			this.list[index].hp -= 10;
    		}
    	}
    })//Vue
  </script>
</body>
</html>