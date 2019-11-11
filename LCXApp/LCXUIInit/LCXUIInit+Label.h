//
//  LCXUIInit+Label.h
//  LCXApp
//
//  Created by leichunxiang on 2019/11/8.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXUIInit.h"

NS_ASSUME_NONNULL_BEGIN

@interface LCXUIInit (Label)

UILabel *AddLabel(UIView *superView,CGRect frame,NSString *text,UIFont *font,UIColor *textColor,NSTextAlignment textAlignment);

@end

NS_ASSUME_NONNULL_END
