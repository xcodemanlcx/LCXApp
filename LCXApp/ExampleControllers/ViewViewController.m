//
//  ViewViewController.m
//  LCXApp
//
//  Created by leichunxiang on 2019/11/6.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "ViewViewController.h"
#import "LCXUIInit+View.h"
#import "LCXUIInit+ImageView.h"
#import "LCXUIInit+Label.h"
#import "LCXUIInit+Button.h"

@interface ViewViewController ()

@end

@implementation ViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    AddImageView(self.view, EXAMPLE_FRAME, [UIImage imageNamed:@"image"]);
    AddView(self.view, CGRectMake(10, 70*1, 100, 50), [UIColor blueColor]);
    AddImageButton(self.view, CGRectMake(10, 70*2, 100, 50), 0, self, @selector(btnAction), [UIImage imageNamed:@"image"], [UIImage imageNamed:@"image"]);
    AddLabel(self.view, CGRectMake(10, 70*3, 100, 50), @"label", [UIFont systemFontOfSize:14], [UIColor orangeColor], NSTextAlignmentLeft);
    AddTitleButtonWithImage(self.view, CGRectMake(10, 70*4, 100, 50), 1, self, @selector(btnAction2), @"title", [UIFont systemFontOfSize:14], [UIColor blackColor], [UIColor redColor], [UIImage imageNamed:@"image"], [UIImage imageNamed:@"Image-1"]);
}

- (void)btnAction{
    NSLog(@"btn click");
}

- (void)btnAction2{
    NSLog(@"btn click2");
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
