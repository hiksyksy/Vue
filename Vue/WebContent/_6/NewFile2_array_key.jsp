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
    
    ����) <li v-for="�� ��Ҹ� �Ҵ��� ���� �̸� in �ݺ� ��� �迭 �Ǵ� ��ü">
    
    <ul> 
        <li>1</li> 
        <li>2</li> 
        <li>3</li> 
        <li>4</li> 
    </ul>
=>
   <ul> 
        <li>2</li> 
        <li>3</li> 
        <li>4</li> 
    </ul>

Vue.js�� 
Vue�� ���� ������ ������

<li>1</li>���� <li>2</li>�� ����
<li>2</li>���� <li>3</li>�� ����
<li>3</li>���� <li>4</li>�� ����
<li>4</li> ����

�̷��� �˴ϴ�.


<!-- ���� �� --> 
  <ul> 
     <li key="1">1</li> 
     <li key="2">2</li> 
     <li key="3">3</li> 
     <li key="4">4</li> 
   </ul>
=> <li key="1">1</li>�� ����

key�� ����ϸ� key�� �����Ͽ� key�� ���� ��Ī�Ǵ� ��带 ������Ʈ �ϰ� �˴ϴ�. 
���� ������ ������ <li key="1">1</li> ���� �� 1���� ������Ʈ �ϸ� �˴ϴ�.
������) (1) key�� ��� �ߺ����� ���� ���� ����մϴ�. ���� ���� �����ϸ� �ǹ̰� �����ϴ�.
       (2) ���� �θ� ��� �� Ű�� �ߺ��Ǹ� �ȵ˴ϴ�. ������ �߻��մϴ�.
 --%>
  <div id="app">
    <ul>
      <li v-for="item in list" v-bind:key="item.id">
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