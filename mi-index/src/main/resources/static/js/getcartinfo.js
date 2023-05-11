let types = new Vue({
	el: "#search_item",
	data: {
		types: [],
		cartCount:0,
		carts: []
	},
	mounted: function(){ //页面渲染完成后要执行的方法
		axios.post("type.action", qs.stringify({op: "finds"})).then(result => {	//vue的axios里面默认发送请求时的参数格式为json格式，这样的后台没法识别，需要通过qs.stringify()方法
			if(result.status == 200){	//说明请求成功
				console.log(result)
				this.types = result.data.data;
			}
		})
		axios.post("cart.action", qs.stringify({op:"info"})).then(result => {
			if(result.status == 200 && result.data.code == 200){	//说明请求成功
				console.log(result)
				this.cartCount = result.data.data.dataset.length;
				this.carts = result.data.data.dataset;
			}
		})
	}
})