//
//  LCXUIInit+TableView.m
//  LCXApp
//
//  Created by leichunxiang on 2019/11/8.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXUIInit+TableView.h"

@implementation LCXUIInit (TableView)

UITableView *AddTableView(UIView *superView, CGRect frame, UIColor *backgroundColor){
    UITableView *tableView = [[UITableView alloc] initWithFrame:frame style:UITableViewStylePlain];
    [superView addSubview:tableView];
    tableView.backgroundColor = backgroundColor;

    //base settting
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.showsVerticalScrollIndicator = NO;
    tableView.backgroundView = nil;
    return tableView;
}
@end
