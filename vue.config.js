module.exports = {
	configureWebpack: {
		entry: {
			app: './src/main'
		},
		resolve: {
			extensions: ['.js', '.vue', '.json', '.coffee', '.pug', '.sass', '.scss']
		},
		module: {
			rules: [
				{
					test: /\.(coffee)$/,
					use: [{
						loader: 'coffee-loader'
					}]
				},
			]
		}
	}
};