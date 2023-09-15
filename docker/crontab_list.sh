# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1

##############活动##############

# 京东资产变动
30 21 * * * node /scripts/jd_bean_change_pro.js >> /scripts/logs/jd_bean_change_pro.log 2>&1
# 京豆详情统计
20 22 * * * node /scripts/jd_bean_info.js >> /scripts/logs/jd_bean_info.log 2>&1
# 美丽研究院
20 7,12,19 * * * node /scripts/jd_beauty.js >> /scripts/logs/jd_beauty.log 2>&1
# 头文字J
30 4,16 * * * node /scripts/jd_car_play.js >> /scripts/logs/jd_car_play.log 2>&1
# 头文字J兑换
0 10 * * * node /scripts/jd_car_play_exchange.js >> /scripts/logs/jd_car_play_exchange.log 2>&1
# 签到提现
30 2,14 * * * node /scripts/jd_qdtx.js >> /scripts/logs/jd_qdtx.log 2>&1
# 清空购物车
53 22 * * * node /scripts/jd_cleancart_nolan.js >> /scripts/logs/jd_cleancart_nolan.log 2>&1
# 摇京豆
11 0,18 * * * node /scripts/jd_club_lottery.js >> /scripts/logs/jd_club_lottery.log 2>&1
# 东东乐园
30 7 * * * node /scripts/jd_ddnc_farmpark.js >> /scripts/logs/jd_ddnc_farmpark.log 2>&1
# 店铺签到
15 2,14 * * * node /scripts/jd_dpqd.js >> /scripts/logs/jd_dpqd.log 2>&1
# 临期京豆兑换
0 0 * * * node /scripts/jd_exchange.js >> /scripts/logs/jd_exchange.log 2>&1
# 签到
0 3 * * * node /scripts/jd_jdgj_sign.js >> /scripts/logs/jd_jdgj_sign.log 2>&1
# 摇钱树任务
25 4,14 * * * node /scripts/jd_yqs.js >> /scripts/logs/jd_yqs.log 2>&1
# 天天领红包
25 7 * * * node /scripts/jd_ttlhb.js >> /scripts/logs/jd_ttlhb.log 2>&1
# 积分换话费
33 7 * * * node /scripts/jd_dwapp.js >> /scripts/logs/jd_dwapp.log 2>&1
# 东东农场好友删减奖励
10 2 * * * node /scripts/jd_fruit_friend.js >> /scripts/logs/jd_fruit_friend.log 2>&1
# 东东农场内部水滴互助
20 4,16 * * * node /scripts/jd_fruit_help.js >> /scripts/logs/jd_fruit_help.log 2>&1
# 东东农场日常任务
5 6-18/6 * * * node /scripts/jd_fruit_task.js >> /scripts/logs/jd_fruit_task.log 2>&1
# 京洞察问卷通知
35 11 * * * node /scripts/jd_insight.js >> /scripts/logs/jd_insight.log 2>&1
# 特价版签到提现
20 1,17 * * * node /scripts/jd_tj_sign.js >> /scripts/logs/jd_tj_signn.log 2>&1
# 京东快递签到
10 0 * * * node /scripts/jd_kd.js >> /scripts/logs/jd_kd.log 2>&1
# 京东快递签到
10 3 * * * node /scripts/jd_kuaidi_leaf.js >> /scripts/logs/jd_kuaidi_leaf.log 2>&1
# 生鲜早起打卡
15 6,7 * * * node /scripts/jd_morningSc.js >> /scripts/logs/jd_morningSc.log 2>&1
# 种豆得豆
1 7-21/2 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1
# 种豆得豆内部互助
40 4,17 * * * node /scripts/jd_plantBean_help.js >> /scripts/logs/jd_plantBean_help.log 2>&1
# 京东保价
39 20 * * * node /scripts/jd_price.js >> /scripts/logs/jd_price.log 2>&1
# QQ星系牧场
22 4-22/3 * * * node /scripts/jd_qqxing.js >> /scripts/logs/jd_qqxing.log 2>&1
# 闪购签到有礼
10 10 * * * node /scripts/jd_shangou.js >> /scripts/logs/jd_shangou.log 2>&1
# 小豆签到
48 1,18 * * * node /scripts/jd_beanSign.js >> /scripts/logs/jd_beanSign.log 2>&1
# 京东签到翻牌
10 8 * * * node /scripts/jd_sign_graphics.js >> /scripts/logs/jd_sign_graphics.log 2>&1
# 京东极速版
21 3,8 * * * node /scripts/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1
# 特务Z-II
35 10,18,20 * * * node /scripts/jd_superBrand.js >> /scripts/logs/jd_superBrand.log 2>&1
# 特务集卡
2 10,18,20 * * * node /scripts/jd_superBrandJK.js >> /scripts/logs/jd_superBrandJK.log 2>&1
# 特务集勋章
8 10,18,20 * * * node /scripts/jd_superBrandJXZ.js >> /scripts/logs/jd_superBrandJXZ.log 2>&1
# 特务之明星送好礼
36 2,19 * * * node /scripts/jd_superBrandStar.js >> /scripts/logs/jd_superBrandStar.log 2>&1
# 京东试用
44 1-22/5 * * * node /scripts/jd_try.js >> /scripts/logs/jd_try.log 2>&1
# 京东试用待领取通知
22 15 * * * node /scripts/jd_try_notify.js >> /scripts/logs/jd_try_notify.log 2>&1
# 取关所有主播
55 22 * * * node /scripts/jd_unsubscriLive.js >> /scripts/logs/jd_unsubscriLive.log 2>&1
# 批量取关店铺和商品
22 22 * * * node /scripts/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1
# 众筹许愿池
40 0,2 * * * node /scripts/jd_wish.js >> /scripts/logs/jd_wish.log 2>&1
# 京享周周乐
2 6 * * 5 node /scripts/jd_xs_zzl.js >> /scripts/logs/jd_xs_zzl.log 2>&1
# plus专属礼
2 6 * * 5 node /scripts/jd_plus2bean.js >> /scripts/logs/jd_plus2bean.log 2>&1
# 红包团
40 1 * * * node /scripts/jd_wechat_openGroup.js >> /scripts/logs/jd_wechat_openGroup.log 2>&1