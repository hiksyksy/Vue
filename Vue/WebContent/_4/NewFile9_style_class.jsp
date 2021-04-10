<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- class �Ӽ��� ���� ��ġ�� ��� �� ��� �߰� �Ǿ����� 
     style �Ӽ��� ���� ��ġ�� ��� ���ε� �� ��Ÿ���� ����Ǿ����ϴ�.
    <div id="app-5">
        <p class="child child is-active">Text</p> 
        <p style="color: red; background-color: lightgray;">Text</p>
        <p style="color: red; background-color: lightgray;">Text</p>
    </div>
 --%>
  <div id="app-5">
    <p class="child" v-bind:class="{child:isChild, 'is-active':isActive}">Text</p>
    <p style="color:blue" v-bind:style="{color:textColor, backgroundColor:bgColor}">Text</p>
    <p  v-bind:style="{color:textColor, backgroundColor:bgColor}"  style="color:blue">Text</p>
  </div>
  <!-- ���߹���, ����Ǵ� �ܼ� ��� ����. -->
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
 <%--
  1. ����Ʈ : ��ġ�� ��ҿ� ���ø����̼��� �����ϴ� ���� �ǹ��մϴ�.
  2. el : ����Ʈ�� ��Ҹ� �ۼ��մϴ�. ������ ���·� �����մϴ�.
  3. data :  ���ø����̼ǿ��� ����� �����͸� ��Ÿ���� ��ü �Ǵ� �迭�� �����մϴ�.
  --%>
  <script>
  var app6 = new Vue({
	  el: '#app-5',  
	  data: {
	    isChild:true, //false�̸� Ŭ���� �Ӽ����� ��Ÿ���� �ʽ��ϴ�.
	    isActive:true, //true�̸� Ŭ���� �Ӽ����� ��Ÿ���ϴ�.
	    textColor:'red',
	    bgColor:'lightgray'
	  }
	})
  </script>
</body>
</html>