import HelloWorld from '@/components/HelloWorld.vue'
import Utils from '@/assets/utils'

export default
# @ is an alias to /src
	name: 'home'
	components: {
		HelloWorld
	}
	created: ->
		console.log 123
		console.log Utils.getUrlParams()