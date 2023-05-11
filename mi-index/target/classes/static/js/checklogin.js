
let logininfo=new Vue({
	el:"#login_info",
	data: {
		isLogin: false,
		uname:'',
	},
	methods: {
		logout: function () {
			this.isLogin = false;
			const isLogin = {isLogin: 0}; //0代表未登录，1代表登录
			localStorage.setItem("Login",JSON.stringify(isLogin));
			localStorage.clear()
			showMsg("正在退出登录中....");
		}
	},

	created() {
		var isLogin = JSON.parse(localStorage.getItem("Login"));
		if(isLogin==null){
			//showMsg("请先登录！！", function() {});
			//window.location.href="login.html";
			localStorage.clear();
			return;
		}
		if (isLogin.isLogin == 1) {
			this.isLogin = true;
			var nickName = JSON.parse(localStorage.getItem("Username"));
			this.uname = nickName.account;
			return;
		} else {
			this.isLogin = false;
			showMsg("请登录",function () {})
		}
	},

})

function showMsg(msg, callback){
	$("#popup_info").text(msg);
	$(".popup_con").fadeIn('fast', function(){
		setTimeout(function(){
			$('.popup_con').fadeOut('fast', callback);
		}, 2000)
	});
}