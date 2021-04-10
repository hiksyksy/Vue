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
      <!-- ���� ��ư�� v-for ���ο� ����� -->
      <button v-on:click="doRemove(index)">���� �����ϱ�</button>
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
    		// ��� ���� ��ư�� Ŭ���� ���� �ڵ鷯
    	    doRemove: function (index) {
    	      // ���޹��� �ε��� ��ġ���� �� ����ŭ �����ϱ�
    	      this.list.splice(index, 1)
    	    }
    	}//methods
    })//Vue
  </script>
</body>
</html>