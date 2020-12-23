/*功能开发中*/

function STOP() {
	alert("功能开发中....")
} /*随机数*/

function randomNum(minNum, maxNum) {
	switch (arguments.length) {
	case 1:
		return parseInt(Math.random() * minNum + 1, 10);
		break;
	case 2:
		return parseInt(Math.random() * (maxNum - minNum + 1) + minNum, 10);
		break;
	default:
		return 0;
		break;
	}
}
//==========小部件==========
//==========登录、注册、留言、通知==========
//登录

function PopLoginWindow() {
	var LoginWindow = document.getElementById("LoginWindow");
	LoginWindow.style.display = "block";
}

function ClosePopLoginWindow() {
	let LoginWindow = document.getElementById("LoginWindow");
	LoginWindow.style.display = "none";
}
//注册

function PopSignInWindow() {
	var SignInWindow = document.getElementById("SignInWindow");
	SignInWindow.style.display = "block";
}

function ClosePopSignInWindow() {
	let SignInWindow = document.getElementById("SignInWindow");
	SignInWindow.style.display = "none";
}
//留言

function PopMessagePaperWindow() {
	var MessagePaperWindow = document.getElementById("MessagePaperWindow");
	MessagePaperWindow.style.display = "block";
}

function CloseMessagePaperWindow() {
	let MessagePaperWindow = document.getElementById("MessagePaperWindow");
	MessagePaperWindow.style.display = "none";
}
//通知

function PopInformWindow() {
	var PopInformWindow = document.getElementById("InformWindow");
	PopInformWindow.style.display = "block";
}

function CloseInformWindow() {
	let PopInformWindow = document.getElementById("InformWindow");
	PopInformWindow.style.display = "none";
}
//==========登录、注册、留言、通知==========
//==========留言板、通知栏==========

function ClearMessage() {
	document.getElementById('MessageBoard').innerHTML = "";
}

function SendMessage() {
	// 发送信息
	// 获得当前时间
	var now = new Date();
	var year = now.getFullYear();
	//得到年份
	var month = now.getMonth() + 1;
	//得到月份
	var date = now.getDate();
	//得到日期
	// var day = now.getDay();//得到周几
	var hour = now.getHours();
	//得到小时数
	var minute = now.getMinutes();
	//得到分钟数
	var second = now.getSeconds();
	//得到秒数
	var time = year + "年" + month + "月" + date + "日 " + hour + ":" + minute + ":" + second + " ";
	//获得用户信息
	var name = document.getElementById("MessagePaperName").value;
	var Email = document.getElementById("MessagePaperEmail").value;
	var text = document.getElementById("MessagePaperText").value;
	var txt = time + name + "(" + Email + ")" + "来信：" + text;
	console.log(txt);
	//创建p标签
	var p = document.createElement("hr");
	///把txt内容追加到p结点上
	p.appendChild(document.createTextNode(txt));
	//追加或插入
	//在div里面找到p
	var ps = document.getElementById("MessageBoard").getElementsByTagName("p");
	if (ps.length > 0) {
		//如果有，就是已经有了评论，插入到评论的前面
		document.getElementById("MessageBoard").insertBefore(p, ps[0]);
	} else {
		//否则，创建新的评论
		document.getElementById("MessageBoard").appendChild(p);
	}
	alert("成功！")
}
//==========留言板、通知栏==========