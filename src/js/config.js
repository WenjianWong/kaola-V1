// 配置
// 依赖
require.config({
	// baseUrl:''
	paths:{
		jquery:'../lib/jquery-3.2.1',
		common:'../js/common',
		gdszoom:'../lib/jquery-gdsZoom/jquery.gdsZoom'
	},
	shim:{
		// gdszoom依赖jquery
		gdszoom:['jquery']
	}
});