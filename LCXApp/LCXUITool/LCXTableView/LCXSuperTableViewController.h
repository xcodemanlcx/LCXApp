//
//  LCXSuperTableViewController.h
//  LCXApp
//
//  Created by leichunxiang on 2019/11/8.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "BaseViewController.h"
#import "LCXTableViewDelegates.h"

NS_ASSUME_NONNULL_BEGIN

@interface LCXSuperTableViewController : BaseViewController

@property (nonatomic, strong) UITableView *lcxTableView;
@property (nonatomic, strong) LCXTableViewDelegates *tableViewDelegates;

- (UITableView *)tableViewWithSuperView:(UIView *)superView frame:(CGRect)frame cellClasses:(NSArray <Class>*)classes delegatesCellActionBlock:(DelegatesCellActionBlock _Nullable)delegatesCellActionBlock delegatesDidSelectBlock:(DelegatesDidSelectBlock _Nullable)delegatesDidSelectBlock;

@end

NS_ASSUME_NONNULL_END
