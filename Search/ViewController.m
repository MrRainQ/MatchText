//
//  ViewController.m
//  Search
//
//  Created by qiupeng on 15/8/8.
//  Copyright (c) 2015年 Roc. All rights reserved.
//

#import "ViewController.h"
#import "RQTableViewCell.h"
#import "PinYin4Objc.h"
#import "Data.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, strong) NSArray *tagList;
@property (nonatomic, strong) NSMutableArray *searchResults;
@property (nonatomic, strong) HanyuPinyinOutputFormat *fmt;

@end

@implementation ViewController

- (HanyuPinyinOutputFormat *)fmt
{
    if (_fmt == nil) {
        _fmt = [[HanyuPinyinOutputFormat alloc]init];
        _fmt.caseType = CaseTypeUppercase;
        _fmt.toneType = ToneTypeWithoutTone;
        _fmt.vCharType = VCharTypeWithUUnicode;
    }
    return _fmt;
}

- (NSMutableArray *)searchResults
{
    if (_searchResults == nil) {
        _searchResults = [NSMutableArray array];
    }
    return _searchResults;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tagList = [Data tagList];
	
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange) name:UITextFieldTextDidChangeNotification object:nil];

    self.tableView.tableFooterView = [[UIView alloc]init];
}

// 文字变化监听
- (void)textDidChange
{
    if (self.searchTextField.text.length) {
        
        [self.searchResults removeAllObjects];

        NSString *text = self.searchTextField.text;
        
        [self.tagList enumerateObjectsUsingBlock:^(NSString *keyword, NSUInteger idx, BOOL *stop) {

            NSString *pinyin = [PinyinHelper toHanyuPinyinStringWithNSString:keyword withHanyuPinyinOutputFormat:self.fmt withNSString:@"#"];
            
            // 2.拼音首字母
            NSArray *words = [pinyin componentsSeparatedByString:@"#"];
            NSMutableString *pinyinHeader = [NSMutableString string];
            for (NSString *word in words) {
                [pinyinHeader appendString:[word substringToIndex:1]];
            }
            
            // 去掉所有的#
            pinyin = [pinyin stringByReplacingOccurrencesOfString:@"#" withString:@""];
            
            // 3.名中包含了搜索条件
            // 拼音中包含了搜索条件
            // 拼音首字母中包含了搜索条件
            if (([keyword rangeOfString:text].length != 0) ||
                ([pinyin rangeOfString:text].length != 0)||
                ([pinyinHeader rangeOfString:text.uppercaseString].length != 0))
            {
                // 说明名中包含了搜索条件
                [self.searchResults addObject:keyword];
            }
        }];
        
        [self.tableView reloadData];
    }else {
        [self.tableView reloadData];
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.searchTextField.text.length) {
        return self.searchResults.count;
    }else{
        return self.tagList.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RQTableViewCell *cell = [RQTableViewCell cellWithTableView:tableView];
    if (self.searchTextField.text.length) {
        cell.textLabel.text = self.searchResults[indexPath.row];
    }else{
        cell.textLabel.text = self.tagList[indexPath.row];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.searchTextField.text.length) {
        NSLog(@"%@",self.searchResults[indexPath.row]);
    }else{
        NSLog(@"%@",self.tagList[indexPath.row]);
    }
}
@end
