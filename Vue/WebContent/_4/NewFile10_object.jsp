<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- ��ü ������ �����ϱ� ���� �Դϴ�. 
 
     class �Ӽ��� ���� ��ġ�� ��� �� ��� �߰� �Ǿ����� 
     style �Ӽ��� ���� ��ġ�� ��� ���ε� �� ��Ÿ���� ����Ǿ����ϴ�.
    <div id="app-5">
          <p class="child">Text</p> 
          <p style="color: red; background-color: lightgray;">Text</p>
    </div>
 --%>
  <div id="app-5">
    <p v-bind:class="classObject">Text</p>
    <p v-bind:style="styleObject">Text</p>
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
	    classObject:{
	    	child:true,
	    	'is-active':false
	    },//classObject
	    styleObject:{
	    	color:'red',
	    	backgroundColor:'lightgray'
	    }
	    
	  }
	})
  </script>
</body>
</html>