//
//  LCXUIInit+Button.h
//  LCXApp
//
//  Created by leichunxiang on 2019/11/8.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXUIInit.h"

NS_ASSUME_NONNULL_BEGIN

@interface LCXUIInit (Button)

UIButton *AddButton(UIView *superView, CGRect frame, NSInteger tag, id target, SEL action, UIButtonType type);

UIButton *AddImageButton(UIView *superView, CGRect frame, NSInteger tag, id target, SEL action, UIImage *img, UIImage * _Nullable imgH);

UIButton *AddTitleButton(UIView *superView, CGRect frame, NSInteger tag, id target, SEL action, NSString *title, UIFont *font, UIColor *color,  UIColor * _Nullable colorH);

UIButton *AddTitleButtonWithImage(UIView *superView, CGRect frame, NSInteger tag, id target, SEL action, NSString *title, UIFont *font, UIColor *color,  UIColor * _Nullable colorH,UIImage *img, UIImage * _Nullable imgH);

@end

NS_ASSUME_NONNULL_END
