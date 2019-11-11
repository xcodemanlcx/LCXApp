//
//  LCXTableViewDelegates.m
//  TableView
//
//  Created by leichunxiang on 2019/10/29.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXTableViewDelegates.h"


@implementation LCXTableViewDelegates

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LCXSuperListViewModel *model = _dataArr[indexPath.row];
    LCXSuperTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableView.cellReuseIdentifiers[model.celllReuseIDIndex]];
    cell.cellModel = _dataArr[indexPath.row];
    if (_delegatesCellActionBlock&&!cell.cellActionBlock) {
        __weak typeof(self) weakSelf = self;
        __weak typeof(cell) weakCell = cell;
        cell.cellActionBlock = ^(NSUInteger cellActionIndex) {
            __strong typeof (weakSelf) strongSelf = weakSelf;
            if (strongSelf.delegatesCellActionBlock) {
                strongSelf.delegatesCellActionBlock(tableView, weakCell, cellActionIndex);
            }
            NSLog(@"cell row == %ld ,cell action index == %ld",[tableView indexPathForCell:weakCell].row,cellActionIndex);
        };
    }
    return cell;
}

#pragma mark - UITableViewDataSource

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    LCXSuperListViewModel *model = _dataArr[indexPath.row];
    return model.cellHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (_delegatesDidSelectBlock) {
        _delegatesDidSelectBlock(tableView,indexPath);
    }
}

@end
