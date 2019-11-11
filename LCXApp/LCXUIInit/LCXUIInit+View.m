//
//  LCXUIInit+View.m
//  LCXApp
//
//  Created by leichunxiang on 2019/11/8.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXUIInit+View.h"

@implementation LCXUIInit (View)

UIView *AddView(UIView *superView, CGRect frame, UIColor *backgroundColor){
    UIView *view = [[UIView alloc] initWithFrame:frame];
    if (superView)
        [superView addSubview:view];
    if (backgroundColor)
        view.backgroundColor = backgroundColor;
    return view;
}

@end
