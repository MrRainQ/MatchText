//
//  Data.m
//  Search
//
//  Created by qiupeng on 15/8/9.
//  Copyright (c) 2015年 Roc. All rights reserved.
//

#import "Data.h"

@implementation Data

+ (NSArray *)tagList
{
    NSArray *array = @[@"海贼王",
                       @"LoveLive",
                       @"银魂",
                       @"某科学的超电磁炮",
                       @"秦时明月",
                       @"Fate系列",
                       @"saber",
                       @"Fate/stay night",
                       @"罪恶王冠",
                       @"数码宝贝",
                       @"火影忍者",
                       @"黑子的篮球",
                       @"新番",
                       @"舰队Collection",
                       @"死亡笔记",
                       @"名侦探柯南",
                       @"夏目友人帐",
                       @"元气少女缘结神",
                       @"EVA",
                       @"全职猎人",
                       @"斩 赤红之瞳",
                       @"手绘",
                       @"游戏",
                       @"初音未来",
                       @"Cos",
                       @"漫展",
                       @"小野大辅",
                       @"动漫歌曲",
                       @"二次元",
                       @"东京食尸鬼",
                       @"寄生兽",
                       @"路人女主的养成方法",
                       @"进击的巨人",
                       @"日本声优",
                       @"秒速五厘米",
                       @"约会大作战",
                       @"漫画",
                       @"游戏王",
                       @"盗墓笔记",
                       @"蜡笔小新",
                       @"Coser",
                       @"古风",
                       @"古风音乐",
                       @"哆啦A梦",
                       @"阳炎",
                       @"刀剑神域",
                       @"绘画",
                       @"洛天依",
                       @"手办",
                       @"无头骑士异闻录",
                       @"未闻花名",
                       @"灌篮高手",
                       @"东方Project",
                       @"高达",
                       @"妖精的尾巴",
                       @"鬼畜",
                       @"吐槽",
                       @"暗杀教室",
                       @"食戟之灵",
                       @"同人",
                       @"可塑性记忆",
                       @"动漫",
                       @"噬神者",
                       @"动漫美图",
                       @"吾王",
                       @"水弹",
                       @"学园孤岛",
                       @"情报",
                       @"四月是你的谎言",
                       @"终结的炽天使",
                       @"干物妹！小埋",
                       @"英雄联盟",
                       @"宅舞",
                       @"科普",
                       @"俺物语",
                       @"我的青春恋爱物语果然有问题",
                       @"伪恋",
                       @"六花的勇者",
                       @"讨论",
                       @"第一弹官方活动",
                       @"多啦A梦",
                       @"推荐",
                       @"动画",
                       @"东京喰种",
                       @"音乐",
                       @"卫宫士郎",
                       @"初音",
                       @"中二",
                       @"水经验",
                       @"纯音乐",
                       @"七月新番",
                       @"Love Live",
                       @"龙珠",
                       @"图片",
                       @"水贴",
                       @"圣斗士星矢",
                       @"迷糊餐厅三期",
                       @"炉石传说",
                       @"每日一推",
                       @"美图",
                       @"视频",
                       @"周边",
                       @"俺妹",
                       @"cosplay",
                       @"Charlotte",
                       @"歌曲",
                       @"大圣归来",
                       @"水帖",
                       @"乱步奇谭",
                       @"没有黄段子的无聊世界",
                       @"夏洛特",
                       @"渣爪，手绘",
                       @"版主申请",
                       @"系统上报",
                       @"OverLord",
                       @"干物妹小埋",
                       @"music",
                       @"没有黄段子存在的无聊世界",
                       @"黑街gangsta",
                       @"苍月之城",
                       @"东方，图集",
                       @"灰体",
                       @"动漫原曲 音乐",
                       @"小缘",
                       @"原创绘画",
                       @"听歌向",
                       @"奇葩"] ;
    return array;
}


//- (void)syscLoadData:(NSString *)sourceText
//{
//    HanyuPinyinOutputFormat *outputFormat=[[HanyuPinyinOutputFormat alloc] init];
//    [outputFormat setToneType:ToneTypeWithoutTone];
//    [outputFormat setVCharType:VCharTypeWithV];
//    [outputFormat setCaseType:CaseTypeLowercase];
//    NSString *outputPinyin=[PinyinHelper toHanyuPinyinStringWithNSString:sourceText withHanyuPinyinOutputFormat:outputFormat withNSString:@" "];
//    _text = outputPinyin;
//    [self.tableView reloadData];
//    
//}
//
//- (void)asyscLoadData:(NSString *)sourceText
//{
//    HanyuPinyinOutputFormat *outputFormat=[[HanyuPinyinOutputFormat alloc] init];
//    [outputFormat setToneType:ToneTypeWithoutTone];
//    [outputFormat setVCharType:VCharTypeWithV];
//    [outputFormat setCaseType:CaseTypeLowercase];
//    [PinyinHelper toHanyuPinyinStringWithNSString:sourceText
//                      withHanyuPinyinOutputFormat:outputFormat
//                                     withNSString:@" "
//                                      outputBlock:^(NSString *pinYin) {
//                                          _text=pinYin;
//                                          //update ui
//                                          [self.tableView reloadData];
//                                      }];
//}
@end
