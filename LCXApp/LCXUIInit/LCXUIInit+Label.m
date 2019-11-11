//
//  LCXUIInit+Label.m
//  LCXApp
//
//  Created by leichunxiang on 2019/11/8.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXUIInit+Label.h"

@implementation LCXUIInit (Label)

UILabel *AddLabel(UIView *superView,CGRect frame,NSString *text,UIFont *font,UIColor *textColor,NSTextAlignment textAlignment){
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    [superView addSubview:label];
    label.text = text;
    label.font = font;
    label.textColor = textColor;
    label.textAlignment = textAlignment;
    return label;
}
@end
