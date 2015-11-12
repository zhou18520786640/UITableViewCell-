//
//  ViewController.m
//  TestDymanic
//
//  Created by mix on 15/11/12.
//  Copyright © 2015年 mix. All rights reserved.
//

#import "ViewController.h"
#import "ZZTableViewCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) NSArray *objects;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.objects = @[@"4234234234234234234234234234234234234234234234234234234234234234234234234234234234234234234234234234234234234234234",@"1231231",@"tttttttttttttttttttttttt"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.objects.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    ZZTableViewCell *tableViewCell = (ZZTableViewCell *)[self tableView:tableView cellForRowAtIndexPath:indexPath];
    CGFloat height = tableViewCell.frame.size.height;
    return height;
}




- (ZZTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* const tableViewCellIdentifer = @"tableViewCellIdentifer";
    ZZTableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:tableViewCellIdentifer];
    if (tableViewCell == nil) {
        tableViewCell = [[ZZTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableViewCellIdentifer];
    }
    tableViewCell.text = self.objects[indexPath.row];
    return tableViewCell;
}


@end
