//
//  TestViewController2.m
//  ATPageViewDemo
//
//  Created by abiaoyo on 2019/10/5.
//  Copyright © 2019 abiaoyo. All rights reserved.
//

#import "TestViewController2.h"





@interface TestViewController2 ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation TestViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (__kindof UIScrollView *)createScrollView{
    ATPageContainerTableView * v = [[ATPageContainerTableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    v.delegate = self;
    v.dataSource = self;
    v.estimatedRowHeight = 0;
    v.estimatedSectionFooterHeight = 0;
    v.estimatedSectionHeaderHeight = 0;
    //    v.separatorStyle = UITableViewCellSeparatorStyleNone;
    v.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    [v registerClass:UITableViewCell.class forCellReuseIdentifier:@"UITableViewCell"];
    return v;
}

#pragma mark - UITableViewDelegate/UITableVeiwDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    cell.textLabel.text = @"UITableViewCell";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
