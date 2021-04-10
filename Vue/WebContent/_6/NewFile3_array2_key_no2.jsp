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
    <div id="app">
      <ul><li>
            ID.1 ������ HP.100    
      </li><li>
            ID.2 ��� HP.200    
      </li><li>
            ID.3 �巡�� HP.500    
      </li></ul>
    </div>
    
    ����) <li v-for="(item,index) in list">
               item:list �迭���� ��� �� ���� �����Ͽ� �����ϴ� ����
               index:�迭�� �ε���
 --%>
  <div id="app">
    <ul>
      <li v-for="(item,index) in list">
         {{index}} :    ID.{{item.id}} {{item.name}} HP.{{item.hp}}    
      </li>
    </ul>
    
    <ul>
      <li v-for="(item, key, index) in list">
              ID.{{item.id}} {{item.name}} HP.{{item.hp}}    
          
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