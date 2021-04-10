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
  <ul>
    <li v-for="item in list"
        v-bind:key="item.id"
        v-if="item.hp < 300">
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
    	}
    })
  </script>
</body>
</html>