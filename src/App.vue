<template lang="pug">
#app
	#nav
		router-link(to="/") Home
		| &nbsp;|&nbsp;
		router-link(to="/about") About
	router-view(:key="$route.fullPath")
</template>

<style lang="sass">
body
	position: fixed
	z-index: 1
	top: 0
	right: 0
	bottom: 0
	left: 0
	overflow: hidden
#app
	font-family: "Avenir", Helvetica, Arial, sans-serif
	-webkit-font-smoothing: antialiased
	-moz-osx-font-smoothing: grayscale
	text-align: center
	color: #2c3e50
</style>

<script lang="coffee">
import Scroll from 'better-scroll'

export default
	name: 'App'
	components: {
		scroll
	}
	mounted: ->
		console.log 'app is mounted'
		# @$nextTick =>
		setTimeout =>
			new Scroll document.body, click: on, bounce: on
		, 0
	updated: ->
		console.log 'app is updated'
</script>