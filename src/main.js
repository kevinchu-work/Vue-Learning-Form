import Vue from 'vue'
import App from './App.vue'

// Third Party Library
import ToggleButton from 'vue-js-toggle-button'
Vue.use(ToggleButton);

// Configuration
Vue.config.productionTip = false

// main
new Vue({
  render: h => h(App),
}).$mount('#app')
