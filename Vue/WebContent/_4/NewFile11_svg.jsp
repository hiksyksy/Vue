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
    <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
      <circle cx="100" cy="75" v-bind="radius" fill="lightpink"/>    
    </svg>
    <input type="range" min="0" max="100" v-model="radius">
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
	    radius:50
	  }
	})
  </script>
</body>
</html>