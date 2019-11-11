//
//  UITableView+RegisterCells.h
//  TableView
//
//  Created by leichunxiang on 2019/10/28.
//  Copyright © 2019 lcx. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (RegisterCells)

@property (nonatomic, strong,readonly) NSMutableArray <NSString *> *cellReuseIdentifiers;

- (void)registerCellClasses:(NSArray <Class> *)classes forCellReuseIdentifiers:(NSArray <NSString *> *)cellReuseIdentifiers;

@end

NS_ASSUME_NONNULL_END
