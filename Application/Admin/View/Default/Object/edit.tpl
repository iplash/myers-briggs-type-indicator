<extend name="Base/common" />

<block name="link">
	<link href="__PLUGIN_H-ui__/lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
	<link href="__PLUGIN_H-ui__/lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />
</block>

<block name="jscript">
	<!-- kindeditor编辑器开始 -->
	<link rel="stylesheet" href="__PLUGIN__/kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="__PLUGIN__/kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="__PLUGIN__/kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="__PLUGIN__/kindeditor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="__PLUGIN__/kindeditor/plugins/code/prettify.js"></script>
	<script type="text/javascript" src="__PLUGIN__/ueditor/1.4.3/ueditor.config.js"></script>
	<script type="text/javascript" src="__PLUGIN__/ueditor/1.4.3/ueditor.all.min.js"> </script>
	<script type="text/javascript" src="__PLUGIN__/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>
	<script>
	    KindEditor.ready(function(K) {
			K.create('#kindeditor', {
	            pasteType : 2,
				allowFileManager : true
			});
		});
	</script>
	<!-- kindeditor编辑器结束 -->
	<script type="text/javascript" src="__PLUGIN_H-ui__/lib/icheck/jquery.icheck.min.js"></script> 
	<script type="text/javascript" src="__PLUGIN_H-ui__/lib/webuploader/0.1.5/webuploader.min.js"></script> 
	<script type="text/javascript" src="__JS__/commodity.js"></script>
	<script type="text/javascript">
		$(function(){
			var ue = UE.getEditor('editor');
		});
		$(function(){
			// radio插件
			$('.skin-minimal input').iCheck({
				checkboxClass: 'icheckbox-blue',
				radioClass: 'iradio-blue',
				increaseArea: '20%'
			});
			// 单图上传
			plugins.singleImageUpload();
			
			// 表单验证
			plugins.Validform();
		});
	</script>
</block>

<block name="main">
	<div class="pd-20">
		<form action="__URL__/update" method="post" class="form form-horizontal" id="formValidform">
			<div class="panel panel-default">
			<input type="hidden" name="id" value="{$dataInfo['id']}" />
		    	<div class="panel-body">
				    <div class="row cl">
						<label class="form-label col-1">
							<span class="c-red">*</span>菜单名称：
						</label>
						<div class="formControls col-9">
							<input type="text" name="title" value="{$dataInfo['title']}" datatype="*" nullmsg="标题不能为空" placeholder="文章标题" class="input-text radius" />
						</div>
						<div class="col-2"> </div>
					</div>
					<div class="row cl">
						<label class="form-label col-1">菜单图标：</label>
						<div class="formControls col-9">
							<if condition="$dataInfo['picture'] neq ''">
								<div class="singleImageShow">
									<img src="__ROOT__/{$dataInfo['picture']}" width="100" />
								</div>
							</if>
							<div class="uploader-thum-container">
								<div id="fileList" class="uploader-list"></div>
								<div id="filePicker">选择图片</div>
								<input type="hidden" name="picture" value="{$dataInfo['picture']}" id="singleImageUpload" datatype="*" nullmsg="请上传菜单图标" />
								<input type="button" id="btn-star" class="btn btn-default btn-uploadstar radius ml-10" value="开始上传" />
							</div>
						</div>
						<div class="col-2"> </div>
					</div>

					<div class="row cl">
						<label class="form-label col-1">
							<span class="c-red">*</span>跳转地址：
						</label>
						<div class="formControls col-9">
							<input type="text" name="btn_link" value="{$dataInfo['btn_link']}" datatype="*" nullmsg="跳转地址不能为空" placeholder="跳转地址" class="input-text radius" />
						</div>
						<div class="col-2"> </div>
					</div>
                    
					<div class="row cl">
						<label class="form-label col-1">
							<span class="c-red">*</span>排序：
						</label>
						<div class="formControls col-9">
							<input type="text" name="sort" value="{$dataInfo['sort']}" datatype="n" nullmsg="排序值不能为空" placeholder="排序" class="input-text radius" />
						</div>
						<div class="col-2"> </div>
					</div>
					
					
				</div>

			</div>
			<div class="row cl">
				<div class="col-9 col-offset-9">
					<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
				</div>
			</div>
		</form>
	</div>
</block>