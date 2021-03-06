## 电子相册README

代码开源托管于GitHub:

https://github.com/wenoif/php-album-demo



## 功能介绍

+ 创建相册
+ 上传图片
+ 删除图片
+ 排序
  + 最新
  + 最旧
+ 搜索
  + 站内搜索
  + 站外搜索（必应）
+ 相册和图片的浏览
+ 创建多个子相册
+ 设置相册封面
+ 登录弹窗、注册弹窗（仅弹出表单，php后端待完善）
+ 评论弹窗、消息弹窗（由js实现，php后端待完善）



## 功能修改

代码基于《PHP基础案例教程》chapter13（P240）（黑马程序员）

在原代码基础上进行如下修改:

+ 顶部导航栏添加注册、登录按钮（点击弹出表单，仅前端、后端待完善）
+ 顶部导航栏通知、留言按钮（点击弹出表单，仅前端、后端待完善）
+ 顶部导航栏添加站外搜索(必应)、站内搜索
+ 顶部导航栏添加搜索、新旧排序功能
+ 增加顶部导航栏 
+ 增加 css/main.css
+ 增加 js/main.js
+ 增加背景图片





## 文件说明

+ **common:**  保存公共php文件
+ **covers:**  保存相册的封面图
+ **css**
+ **js**
+ **thumbs:**  保存相册的缩略图
+ **uploads:**  保存用户上传的图片
+ **view:**  保存项目的html文件
+ **index.php:**  提供相册的创建、展示、删除以及图片上传功能
+ **picdemo.sql:**  数据库文件
+ **README.md:**  说明
+ **repair.php**
+ **search.php:**  提供图片搜索功能
+ **show.php:**  提供图片查看功能



