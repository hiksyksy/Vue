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
    <li v-for="(item, index) in list" v-bind:key="item.id">
      ID.{{ item.id }} {{ item.name }} HP.{{ item.hp }}
      <!-- 삭제 버튼을 v-for 내부에 만들기 -->
      <button v-on:click="doRemove(index)">몬스터 제거하기</button>
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
    	created:function(){
    		this.list.forEach(function(item){
    			this.$set(item,'active',false)
    		},this);
    	}//created
    })//Vue
  </script>
</body>
</html>