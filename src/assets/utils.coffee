class Utils
	'use strict'
	###
	# 获取 url 参数
	###
	@getUrlParams: ->
		params = location.search
		data = {}
		params = params.slice(1).split '&'
		for temp in params
			temp = temp.split '='
			[key, val] = [temp[0], temp[1]]
			data[key] = val if key
		data

	###
	# 判断 url 参数中是否有指定参数
	###
	@hasUrlParams: (key) -> this.getUrlParams().hasOwnProperty key

	###
	# 刷新倒计时功能
	###
	@refreshCountDownParam: ->
		xhrPool = window.xhrPool
		xhrPool.rcdp.abort() if xhrPool.rcdp
		xhrPool.rcdp = base.getApi().fetchCountDownParam (lottery) =>
			list = lottery.data.lotteryList
			baseSocketQueue.push item.lotteryDraw for item in list
	
	@stopPop: ->
		history.pushState null, null, location.href

export default Utils