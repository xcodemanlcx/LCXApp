//
//  CustomTableViewCell.m
//  TableView
//
//  Created by leichunxiang on 2019/10/28.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (void)initCellView{
    self.contentView.backgroundColor = [UIColor grayColor];
    self.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:btn];
    btn.frame = CGRectMake(10, 10 , 60, 30);
    btn.backgroundColor = [UIColor orangeColor];
    btn.titleLabel.font = [UIFont systemFontOfSize:20];
    [btn setTitle:@"添加" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.tag = 100;
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2 addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:btn2];
    btn2.frame = CGRectMake(100, 10 , 60, 30);
    btn2.backgroundColor = [UIColor orangeColor];
    btn2.titleLabel.font = [UIFont systemFontOfSize:20];
    [btn2 setTitle:@"删除" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn2.tag = 100 + 1;

}

- (void)btnAction:(UIButton *)sender{
    if (self.cellActionBlock) {
        self.cellActionBlock(sender.tag - 100);
    }
}

-(void)setFrame:(CGRect)frame{
    frame.size.height -=10;
//    frame.size.width -= 40;
//    frame.origin.x += 10;
    frame.origin.y += 10;

    [super setFrame:frame];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
