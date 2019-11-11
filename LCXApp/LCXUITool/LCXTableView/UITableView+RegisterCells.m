//
//  UITableView+LCXRegisterCells.m
//  TableView
//
//  Created by leichunxiang on 2019/10/28.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "UITableView+RegisterCells.h"
#import <objc/runtime.h>

static NSString *const LCXCellIDSuffix = @"_reuseID";

@implementation UITableView (LCXRegisterCells)

@dynamic cellReuseIdentifiers;

- (void)registerCellClasses:(NSArray <Class> *)classes{
    if (!classes || ![classes isKindOfClass:NSArray.class]) return;
    for (NSUInteger i = 0; i<classes.count ; i++) {
        NSString *cellReuseIdentifier = [NSStringFromClass(classes[i]) stringByAppendingString:LCXCellIDSuffix];
        [self registerClass:classes[i] forCellReuseIdentifier:cellReuseIdentifier];
        [self.cellReuseIdentifiers addObject:cellReuseIdentifier];
    }
}

- (NSMutableArray<NSString *> *)cellReuseIdentifiers{
    id mArr = objc_getAssociatedObject(self, @selector(cellReuseIdentifiers));
    if (!mArr) {
        mArr = @[].mutableCopy;
        objc_setAssociatedObject(self, _cmd, mArr, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return mArr;
}

@end
