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
  <!--  -->
  <p>{{ message.length>=10 ? '10�����̻�':'10���� �̸�' }}</p>
  <input v-model="message"><%--Vue�� ���� ��Ŀ� ���� �Է°� �� ���¸� ��������� ���ε��ϴ� v-model ��Ƽ�긦 �����մϴ�. --%>
  <p>
     �Է��� ���� value �Ӽ��� �״�� ��µǳ���?(value="{{message}}")<br>
     <input type="text" value="{{message}}">
  </p>
  
  <p>
     �Է��� ���� value �Ӽ��� �״�� ����ϱ� ����  v-bind:value="message" ����մϴ�.<br>
     <input type="text" v-bind:value="message">
  </p>
  
   <p>
     v-bind�����ϰ� value �տ� :�� �ۼ��ص� �˴ϴ�.( :value="message")<br>
     <input type="text" :value="message">
  </p>
  
  <p>
    ���� ������ ��ü�� ���¸� JSON �������� ȭ�鿡 ��µ˴ϴ�.<br>
    {{$data}}
  </p>
  
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
	    message: '�ȳ��ϼ��� Vue!'
	  }
	})
  </script>
</body>
</html>