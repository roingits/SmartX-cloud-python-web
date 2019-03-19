import Vue from 'vue'

import 'normalize.css/normalize.css' // A modern alternative to CSS resets

import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import locale from 'element-ui/lib/locale/lang/en' // lang i18n

import '@/styles/index.scss' // global css

import App from './App'
import store from './store'
import router from './router'

import $ from 'jquery' //jquery

import '@/icons' // icon
import '@/permission' // permission control

// mock数据
import '../mock' // simulation data

Vue.use(ElementUI, {
  locale
})

Vue.config.productionTip = false

new Vue({
  el: '#app',
  router,
  store,
  $,
  render: h => h(App)
})
