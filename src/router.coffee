import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'

Vue.use Router

export default new Router
	mode: 'history'
	base: process.env.BASE_URL
	routes: [
		path: '/',
		name: 'home',
		component: Home
	,
		path: '/about',
		name: 'about',
		# 这样写会编译报错
		# component: => import '@/views/About.vue'
		component: (resolve) => require ['@/views/About.vue'], resolve
	]