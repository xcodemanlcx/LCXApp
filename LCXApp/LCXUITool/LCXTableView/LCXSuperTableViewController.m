//
//  LCXSuperTableViewController.m
//  LCXApp
//
//  Created by leichunxiang on 2019/11/8.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXSuperTableViewController.h"
#import "LCXUIInit+TableView.h"

@implementation LCXSuperTableViewController

- (UITableView *)tableViewWithSuperView:(UIView *)superView frame:(CGRect)frame cellClasses:(NSArray <Class>*)classes delegatesCellActionBlock:(DelegatesCellActionBlock _Nullable)delegatesCellActionBlock delegatesDidSelectBlock:(DelegatesDidSelectBlock _Nullable)delegatesDidSelectBlock{

    //tableView
    _lcxTableView = AddTableView(superView,frame, [UIColor whiteColor]);
    [_lcxTableView registerCellClasses:classes];
    
    //tableView delegates
    _tableViewDelegates = [LCXTableViewDelegates new];
    if (delegatesCellActionBlock) {
        _tableViewDelegates.delegatesCellActionBlock = delegatesCellActionBlock;
    }
    if (delegatesDidSelectBlock) {
        _tableViewDelegates.delegatesDidSelectBlock = delegatesDidSelectBlock;
    }
    _lcxTableView.dataSource = _tableViewDelegates;
    _lcxTableView.delegate = _tableViewDelegates;
    
    return _lcxTableView;
}

@end
