//
//  LCXUIInit+ImageView.m
//  LCXApp
//
//  Created by leichunxiang on 2019/11/8.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXUIInit+ImageView.h"

@implementation LCXUIInit (ImageView)

UIImageView *AddImageView(UIView *superView, CGRect frame, UIImage *_Nullable image)
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    [superView addSubview:imageView];
    if (image)
        imageView.image = image;
    
    //app base settings
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.layer.masksToBounds = YES;
    
    return imageView;
}

UIImageView *AddImageViewWithTap(UIView *superView, CGRect frame, UIImage *_Nullable image,id target,SEL sel){
    UIImageView *imageView = AddImageView(superView, frame, image);
    if (target && imageView) {
        imageView.userInteractionEnabled = YES;
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:target action:sel];
        [imageView addGestureRecognizer:tapGes];
    }
    return imageView;
}
@end
