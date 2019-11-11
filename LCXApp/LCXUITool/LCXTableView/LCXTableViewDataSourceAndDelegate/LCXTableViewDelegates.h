//
//  LCXTableViewDelegates.h
//  TableView
//
//  Created by leichunxiang on 2019/10/29.
//  Copyright © 2019 lcx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LCXSuperTableViewCell.h"
#import "LCXSuperListViewModel.h"

NS_ASSUME_NONNULL_BEGIN

//typedef void(^CellActionBlock)(UITableView *tableView, NSIndexPath * selectedIndexPath,NSUInteger cellActionIndex);
typedef void(^DelegatesCellActionBlock)(UITableView *tableView, NSIndexPath * selectedIndexPath,NSUInteger cellActionIndex);

@interface LCXTableViewDelegates : NSObject<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *dataArr;
@property (nonatomic, copy) NSArray <Class> *cellClassArr;
@property (nonatomic, strong,readonly) NSMutableArray <NSString *> *cellIDArr;
@property (nonatomic, copy) DelegatesCellActionBlock delegatesCellActionBlock;

@end

NS_ASSUME_NONNULL_END
