<?php
/* *
 * 配置文件
 * 会员升级规则：消费升级，直推升级，团推升级。只要满足其中一类的条件则自动升级
 * 升级规则存于数据库规则：push-team:直推-团推（upgrade_micro） 消费升级 ：消费（upgrade_consumer）
 * 当团推，直推，消费为0时，代表这类升级规则不生效
 * 会员提成功能：每级会员推荐提成层数是相同的。提成比例存于数据库。config（团推实现）
 * 会员提成功能：每级会员分享奖励提成比例存于数据库（团推时才实现）
 * 微分销
 * 日期：2016-06-02
 * 说明：'19259'
 * 微分销配置
 */
//当前会员级数
$config['mid'] = 19259 ;//需要传参

//会员初始等级

$config['star_level'] = 0 ;

//会员最高等级
$config['end_level'] = 6; 

//会员消费
$config['price'] = 2100;//需要传参

//直推，团推等级
$config['upgrade'] = array('build'=>0,'team'=>0);


//利润，根据各种算法得到最终参加提成的价格
$config['profit'] = 100;//需要传参

//会员支付订单的id
$config['order_id'] = 1;//需要传参
?>