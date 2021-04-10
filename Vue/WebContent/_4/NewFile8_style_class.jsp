<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div id="app-5">
    <p v-bind:class="{child:isChild, 'is-active':isActive}">Text</p>
    <p v-bind:style="{color:textColor, backgroundColor:bgColor}">Text</p>
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
	    isChild:false, //false�̸� Ŭ���� �Ӽ����� ��Ÿ���� �ʽ��ϴ�.
	    isActive:true, //true�̸� Ŭ���� �Ӽ����� ��Ÿ���ϴ�.
	    textColor:'red',
	    bgColor:'lightgray'
	  }
	})
  </script>
</body>
</html>