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
 $el�� $refs�� ���� DOM�� ������� �����Ƿ� ������ ����ȭ�� �ǽ����� �ʽ��ϴ�. 
 ���� ������ �߻��� ������ �ٽ� �������ǹǷ� ���� ����Ǵ� DOM���濡�� ����ϱ� �������� �ʽ��ϴ�.
������ ���� $refs�� ����ؼ� DOM�� ������ ��쿡�� �����Ϳ� ���� ������ ������ ���� DOM�� �ٽ� ��������� ��������
$refs�� ������ ����˴ϴ�. 
1. ó������ show:true -> ȭ�鿡 0�� ��Ÿ���ϴ�.
2. Count up�� Ŭ���մϴ�. -> ȭ�鿡 0���� 1�� ������ ���� ��Ÿ���ϴ�.
3. ǥ��/��ǥ�ø� ������ display=!display ���忡 ���� display���� true->false�� ���� ����ǰ�
   v-if="display"�� �����̶� ���ڰ� ǥ�õ��� �ʽ��ϴ�. 
4. �ٽ�    ǥ��/��ǥ�� ��ư�� Ŭ���ϸ� display���� false->true�� ���� ����ǰ� 
    v-if="display"�� ���̶� ���ڰ� 0���� ǥ�õ˴ϴ�.
5. ���� DOM�� ����� �ؽ�Ʈ�� ������ ���� ���� DOM�� ������ ���� ������ �ٽ� 0���� ���ƿɴϴ�.    
 --%>
  <div id="app">
    <button v-on:click="handleClick">Count up</button>
    <button v-on:click="display=!display">ǥ��/��ǥ��</button>
    <span ref="count" v-if="display">0</span>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		display:true
    	},
    	methods:{
    		handleClick(){
    			var count=this.$refs.count;
    			if(count){
    				count.innerText = parseInt(count.innerText,10)+1
    			}
    		}
    	}
    })
  </script>
</body>
</html>