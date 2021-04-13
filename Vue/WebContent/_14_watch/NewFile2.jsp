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
  <select v-model="current">
    <option v-for="topic in topics" v-bind:value="topic.value">
      {{ topic.name }}
    </option>
  </select>
  <div v-for="item in list">{{ item.full_name }}</div>
</div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  new Vue({
	  el: '#app',
	  data: {
	    list: [],
	    current: '',
	    topics: [
	      { value: 'vue', name: 'Vue.js' },
	      { value: 'jQuery', name: 'jQuery' }
	    ]
	  },
	  watch: {
	    current: function (val) {
	      // 깃허브 API에서 토픽 리포지토리 검색하기
	      axios.get('https://api.github.com/search/repositories', {
	        params: {
	          q: 'topic:' + val
	        }
	      }).then(function (response) {
	        this.list = response.data.items
	      }.bind(this))
	    }
	  },
	})
  </script>
</body>
</html>