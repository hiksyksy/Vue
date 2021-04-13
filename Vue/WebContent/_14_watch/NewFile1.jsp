<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
워처(watcher)란 특정 데이터 또는 산출 속성의 상태를 감시해서 변화가 있을 때 등록한 처리를 자동으로 실행해 주는 것입니다.
데이터의 변화를 트리거로 하는 훅입니다.
  1. 옵션을 사용하지 않는 경우 
   new Vue({
  // ...
  watch: {
    감시할 데이터: function (새로운 값, 이전 값) {
      // value가 변화했을 때 하고 싶은 처리
    },
    'item.value': function (newVal, oldVal) {
      // 객체의 속성도 감시할 수 있음
    }
  }
})

2. 옵션을 사용하는 경우
new Vue({
  // ...
  watch: {
    list: {
      handler: function (newVal, oldVal) {
        // list가 변경될 때 하고 싶은 처리
      },
      deep: true,
      immediate: true
    }
  }
})

3. 인스턴스 메서드로 등록하는 경우

this.$watch('value', function(newVal, oldVal) {
  // ...
})

4. 인스턴스 메소드 등록과 옵션 등록을 함께 사용하는 경우

this.$watch('value', function (newVal, oldVal) {
  // ...
}, {
  immediate: true,
  deep: true
})
   
 --%>
   <div id="app">
  <input v-model.number="budget">원 이하 필터링하기 
  <input v-model.number="limit">개의 결과 출력하기
  <button v-on:click="order=!order">변경하기</button>
  <p>{{ matched.length }}개 중에 {{ limited.length }}개를 출력하고 있습니다.</p>
  <ul>
    <!-- v-for에 최종 결과라고 할 수 있는 산출 속성 limited 사용하기 -->
    <li v-for="item in limited" v-bind:key="item.id">
      {{ item.name }} {{ item.price }}원
    </li>
  </ul>
</div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		budget:300,
    		limit:2,
    		list:[
    			{id:1,name:'사과',price:100},
    			{id:2,name:'바나나',price:200},
    			{id:3,name:'딸기',price:400},
    			{id:4,name:'오렌지',price:400},
    			{id:5,name:'메론',price:500}
    		]
    	},
    	// sorted를 새로 추가하기
        sorted: function() {
          return _.orderBy(this.matched, 'price', this.order ? 'desc' : 'asc')
        },
    	computed:{
    		matched:function(){
    			return this.list.filter(function(item){  //list항목을 한 개씩 가져와서 price의 값과 budget를 비교해서
    				                                     //item.price <= this.budget 인 경우 리턴합니다.
    				return item.price <= this.budget      
    			},this)                                  //filter()안에서 사용할 this를 넘깁니다. 
    		},
    		limited:function(){ //matched로 리턴한 데이터를 limit 조건을 걸어 리턴하는 산출 속성
    			return this.matched.slice(0,this.limit)
    		}
    	},
    	watch:{
    		'this.limit': function(newValue, oldValue){
    			console.log(oldValue + "=>" + newValue)
    		}
    	}
    })
  </script>
</body>
</html>