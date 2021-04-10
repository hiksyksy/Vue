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
  DOM�� ������ �� �ν��Ͻ� �Ӽ� $el�� $refs�� ����մϴ�.
   �� �ΰ��� �Ӽ��� DOM�� �����ؾ� ����� �� �ֽ��ϴ�. ������ ����Ŭ �� mounted ���� ���� ����� �� �ֽ��ϴ�.
  ��Ʈ �̿��� ��Ҵ� Ư���� �Ӽ� ref�� $refs�� ����ؼ� ������ �� �ֽ��ϴ�.
  �ϴ� ���ø����� ��� ��ҿ� ref�Ӽ��� �����ϰ� �̸��� �ٿ� �ݴϴ�.
 --%>
  <div id="app">
    <p ref="hello">Hello</p>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	mounted:function(){
    		console.log(this.$refs.hello) //p��Ҹ� DOM���� �ٷ� �� �־��
    		                              //<p ref="hello">Hello</p>
    	}
    })
  </script>
</body>
</html>