<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div id="app" >
    <p>{{message.value}}</p>
    <p>{{message.value.length}}</p>
    <p>{{list[2]}}</p>
    <p>{{list[num]}}</p> <!--  �Ӽ��� �����ؼ� ����ϰ� �ֽ��ϴ�. -->
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		//��ü ������
    		message:{
    			value:'Hello Vue.js!'
    		},
    	    
            //�迭 ������
    	    list:['���','�ٳ���','����'],
    	
    	    //�ٸ� �����͸� ����ؼ� list�� ���� �����ϱ� ���� ���
    	    num:1
    	} //data end
    })
    
  </script>
</body>
</html>