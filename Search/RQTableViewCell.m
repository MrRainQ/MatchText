//
//  RQTableView.m
//  Search
//
//  Created by qiupeng on 15/8/8.
//  Copyright (c) 2015年 Roc. All rights reserved.
//

#import "RQTableViewCell.h"

@implementation RQTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *identifier = @"RQTableViewCell";
    // 1.缓存中取
    RQTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    // 2.创建
    if (cell == nil) {
        cell = [[RQTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    return cell;
}

@end
