//
//  LCXTableViewDelegates.h
//  TableView
//
//  Created by leichunxiang on 2019/10/29.
//  Copyright © 2019 lcx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LCXSuperTableViewCell.h"
#import "UITableView+RegisterCells.h"
#import "LCXSuperListViewModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^DelegatesCellActionBlock)(UITableView *tableView, UITableViewCell * cell,NSUInteger cellActionIndex);
typedef void(^DelegatesDidSelectBlock)(UITableView *tableView, NSIndexPath * selectedIndexPath);

@interface LCXTableViewDelegates : NSObject<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *dataArr;
@property (nonatomic, copy) DelegatesCellActionBlock delegatesCellActionBlock;
@property (nonatomic, copy) DelegatesDidSelectBlock delegatesDidSelectBlock;

@end

NS_ASSUME_NONNULL_END
