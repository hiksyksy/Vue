<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div id="app-4">
  <ol>
    <li v-for="item in list">
      {{ item }}
    </li>
  </ol>
</div>
  <!-- ���߹���, ����Ǵ� �ܼ� ��� ����. -->
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  <script>
  var app4 = new Vue({
	  el: '#app-4',
	  data: {
	    list: ['���','�ٳ���','����'] 
	  }
	})
  </script>
</body>
</html>