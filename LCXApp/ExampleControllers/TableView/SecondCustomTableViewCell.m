//
//  SecondCustomTableViewCell.m
//  LCXApp
//
//  Created by leichunxiang on 2019/11/11.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "SecondCustomTableViewCell.h"
#import "LCXUIInit+ImageView.h"
@implementation SecondCustomTableViewCell

- (void)initCellView{
    AddImageView(self.contentView, CGRectMake(10, 10, 100, 50), [UIImage imageNamed:@"image"]);
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
