<header class="Hui-header cl">
	<a class="Hui-logo l" title="H-ui.admin v2.3" href="/">H-ui.admin</a>
	<a class="Hui-logo-m l" href="/" title="H-ui.admin">H-ui</a>
	<span class="Hui-subtitle l">V2.3</span>
	<!-- <nav class="mainnav cl" id="Hui-nav">
		<ul>
			<li class="dropDown dropDown_click">
				<a href="javascript:;" aria-expanded="true" aria-haspopup="true" data-toggle="dropdown" class="dropDown_A">
						<i class="Hui-iconfont">&#xe600;</i>
						新增 
						<i class="Hui-iconfont">&#xe6d5;</i>
				</a>
				<ul class="dropDown-menu radius box-shadow">
					<li>
						<a href="javascript:;" onclick="article_add('添加资讯','article-add.html')">
							<i class="Hui-iconfont">&#xe616;</i>
							资讯
						</a>
					</li>
					<li>
						<a href="javascript:;" onclick="picture_add('添加资讯','picture-add.html')">
							<i class="Hui-iconfont">&#xe613;</i>
							图片
						</a>
					</li>
					<li>
						<a href="javascript:;" onclick="product_add('添加资讯','product-add.html')">
							<i class="Hui-iconfont">&#xe620;</i>
							产品
						</a>
					</li>
					<li>
						<a href="javascript:;" onclick="member_add('添加用户','member-add.html','','510')">
							<i class="Hui-iconfont">&#xe60d;</i>
							用户
						</a>
					</li>
				</ul>
			</li>
		</ul>
	</nav> -->
	
	<ul class="Hui-userbar">
		<li>{$userAuth['nickname']}</li>
		
		<!-- 个人操作 -->
		<li class="dropDown dropDown_hover">
			<a href="#" class="dropDown_A">
				{$userAuth['username']}
				<i class="Hui-iconfont">&#xe6d5;</i>
			</a>
			<ul class="dropDown-menu radius box-shadow">
				<li><a href="javascript:void(0);" onclick="layer_show('个人信息','{:U("User/show")}',360,450);">个人信息</a></li>
				<li><a href="javascript:void(0);" onclick="layer_show('修改密码','{:U("User/uppwd")}',600,400);">修改密码</a></li>
				<li><a href="{:U('/Admin/logout')}">退出</a></li>
			</ul>
		</li>
		
		<!-- 消息 -->
		<!--li id="Hui-msg">
			<a href="#" title="消息">
				<span class="badge badge-danger">1</span>
				<i class="Hui-iconfont" style="font-size:18px">&#xe68a;</i>
			</a>
		</li-->
		
		<!-- 换肤 -->
		<li id="Hui-skin" class="dropDown right dropDown_hover">
			<a href="javascript:;" title="换肤">
				<i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i>
			</a>
			<ul class="dropDown-menu radius box-shadow">
				<li><a href="javascript:void(0);" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
				<li><a href="javascript:void(0);" data-val="blue" title="蓝色">蓝色</a></li>
				<li><a href="javascript:void(0);" data-val="green" title="绿色">绿色</a></li>
				<li><a href="javascript:void(0);" data-val="red" title="红色">红色</a></li>
				<li><a href="javascript:void(0);" data-val="yellow" title="黄色">黄色</a></li>
				<li><a href="javascript:void(0);" data-val="orange" title="绿色">橙色</a></li>
			</ul>
		</li>
		
	</ul>
	<a href="javascript:;" class="Hui-nav-toggle Hui-iconfont" aria-hidden="false">&#xe667;</a>
</header>