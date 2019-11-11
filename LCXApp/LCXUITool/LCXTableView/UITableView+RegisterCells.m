//
//  UITableView+RegisterCells.m
//  TableView
//
//  Created by leichunxiang on 2019/10/28.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "UITableView+RegisterCells.h"

static void *LCXUITableViewCellReuseIdentifiersKey = &LCXUITableViewCellReuseIdentifiersKey;

@implementation UITableView (RegisterCells)

- (void)registerCellClasses:(NSArray <Class> *)classes forCellReuseIdentifiers:(NSArray <NSString *> *)cellReuseIdentifiers{
    for (NSUInteger i = 0; i<classes.count ; i++) {
        [self registerClass:classes.copy[i] forCellReuseIdentifier:[cellReuseIdentifiers[i] stringByAppendingString:@"_cellID"]];
    }
}


@end
