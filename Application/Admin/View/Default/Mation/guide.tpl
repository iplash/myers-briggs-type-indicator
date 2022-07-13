<extend name="Base/common" />

<block name="link">
    <style type="text/css">
        .input-text { margin-bottom:5px; }
        .relative,.select-box { position:relative; top:-3px; }
    </style>
</block>

<block name="jscript">
    <script type="text/javascript" src="__PLUGIN_H-ui__/lib/My97DatePicker/WdatePicker.js"></script> 
    <script type="text/javascript" src="__PLUGIN_H-ui__/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="__JS__/list-page.js"></script>
    <script type="text/javascript" src="__JS__/commodity.js"></script>
    <script type="text/javascript">
    $(function(){});
    </script>
</block>

<block name="main">
	
	<!-- 面包屑导航 -->
    <nav class="breadcrumb">
        <i class="Hui-iconfont">&#xe67f;</i>&nbsp;首页
        <volist name="crumb" id="crumb_v">
		<span class="c-gray en">&gt;</span>&nbsp;{$crumb_v}
		</volist>
        <a class="btn btn-success radius r mr-20" id="RefreshButton" href="javascript:void(0);" title="刷新">
            <i class="Hui-iconfont">&#xe68f;</i>
        </a>
    </nav>
    
    <div class="pd-20">
    	
    	<!-- 条件查询 -->
        <div class="text-c" style="display:none">
            <form action="" method="post">
                <!-- 用户名 -->
                <input type="text" name="title" value="{$search['title']}" placeholder="输入文章标题" class="input-text radius width-200" />
                <button type="submit" class="btn btn-success radius relative" id="" name="">
                    <i class="Hui-iconfont">&#xe665;</i>&nbsp;查询
                </button>
            </form>
        </div>
        
        <!-- 操作 -->
        <div class="cl pd-5 bg-1 bk-gray mt-20">
            <span class="l">
                <a href="javascript:void(0);" onclick="layer_full('添加数据','__URL__/add/pid/16','','');" class="btn btn-primary radius">
					<i class="Hui-iconfont">&#xe600;</i>&nbsp;添加数据
				</a>
                <!-- <a href="javascript:void(0);" id="BatchSequence" class="btn btn-secondary radius">
                    <i class="Hui-iconfont">&#xe675;</i>&nbsp;排序
                </a> -->
                <a href="javascript:void(0);" class="btn btn-danger radius BatchRemove">
                    <i class="Hui-iconfont">&#xe6e2;</i>&nbsp;批量删除
                </a>
            </span>
            <span class="r">共有数据：<strong>{$dataList|count}</strong> 条</span>
        </div>
        
        <!-- 列表 -->
        <div class="mt-20">
            <table class="table table-border table-bordered table-hover table-bg table-sort">
                <thead>
                    <tr class="text-c">
                        <th width="2%">
                            <input type="checkbox" name="" value="">
                        </th>
                        <th width="5%">编号</th>
                        <!-- <th width="5%">排序</th> -->
                        <th width="10%">所属分类</th>
                        <th width="15%">分值区间</th>
                        <th width="10%">创建时间</th>
                        <th width="10%">操作</th>
                    </tr>
                </thead>
                <tbody>
                    <volist name="dataList" id="volist">
                        <tr class="text-c">
                            <td>
                                <input type="checkbox" value="{$volist['id']}" name="dataId">
                            </td>
                            <td>{:( $page['pageNum'] - 1 ) * $page['numperpage'] + ( $key + 1 )}</td>
                            <!-- <td>
                                <input type="text" name="Sequence" value="{$volist['sort']}" class="input-text text-c">
                            </td> -->
                            <td>{$volist['category']}-<if condition="$volist['auth'] eq '请选择性别'">通用<else />{$volist.auth}</if></td>
                            <td>{$volist['title']}分</td>
                            <td>{$volist['create_time']}</td>
                            <td class="td-manage">
                                <if condition="$volist['status'] eq 0">
                                    <a href="javascript:void(0);" data-id="{$volist['id']}" data-status="1" data-field="status" title="禁用" class="ml-5 updateStatus">
                                        <i class="Hui-iconfont">&#xe631;</i>
                                    </a>
                                <else />
                                    <a href="javascript:void(0);" data-id="{$volist['id']}" data-status="0" data-field="status" title="启用" class="ml-5 updateStatus">
                                        <i class="Hui-iconfont">&#xe6e1;</i>
                                    </a>
                                </if>
                                <a href="javascript:void(0);" onclick="layer_full('编辑文章','__URL__/edit/id/{$volist['id']}','','');" title="编辑文章" class="ml-5">
                                    <i class="Hui-iconfont">&#xe6df;</i>
                                </a>
                                <a href="javascript:void(0);" data-id="{$volist['id']}" title="删除" class="ml-5 singleRemove">
                                    <i class="Hui-iconfont">&#xe6e2;</i>
                                </a>
                            </td>
                        </tr>
                    </volist>
                </tbody>
            </table>
        </div>
    </div>
</block>
