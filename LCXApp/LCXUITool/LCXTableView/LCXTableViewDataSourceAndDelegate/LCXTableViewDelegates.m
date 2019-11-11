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
    NSString *cellID = _cellIDArr[model.celllReuseIDIndex];
    LCXSuperTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    cell.cellModel = _dataArr[indexPath.row];
    if (self.delegatesCellActionBlock&&!cell.cellActionBlock) {
        __weak typeof(self) weakSelf = self;
        __weak typeof(cell) weakCell = cell;
        cell.cellActionBlock = ^(NSUInteger cellActionIndex) {
            NSIndexPath *selectedIndexPath = [tableView indexPathForCell:weakCell];
            [weakSelf tableView:tableView selectedIndexPath:selectedIndexPath cellActionIndex:cellActionIndex];
            NSLog(@"cell == %ld ,action index == %ld",selectedIndexPath.row,cellActionIndex);
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
    
}

#pragma mark - cell Action

- (void)tableView:(UITableView *)tableView selectedIndexPath:(NSIndexPath *)selectedIndexPath cellActionIndex:(NSUInteger)cellActionIndex{
    if (self.delegatesCellActionBlock) {
        self.delegatesCellActionBlock(tableView, selectedIndexPath, cellActionIndex);
    }
}

#pragma mark - cell reuseID

- (void)setCellClassArr:(NSArray<Class> *)cellClassArr{
    if(cellClassArr.count==0) return;
    _cellIDArr = @[].mutableCopy;
    for (NSUInteger i = 0; i < cellClassArr.count; i++) {
        Class cellClass = cellClassArr[i];
        NSString * cellID = [NSStringFromClass(cellClass) stringByAppendingString:@"_CellID"];
        [_cellIDArr addObject:cellID];
    }
    _cellClassArr = cellClassArr;
}
@end
