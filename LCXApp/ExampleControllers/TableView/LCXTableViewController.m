//
//  LCXTableViewController.m
//  LCXApp
//
//  Created by leichunxiang on 2019/11/10.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXTableViewController.h"
#import "CustomTableViewCell.h"
#import "SecondCustomTableViewCell.h"
#import "LCXSuperListViewModel.h"

@interface LCXTableViewController ()

@end

@implementation LCXTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.lcxTableView = [self tableViewWithSuperView:self.view frame:self.view.bounds cellClasses:@[CustomTableViewCell.class,SecondCustomTableViewCell.class] delegatesCellActionBlock:nil delegatesDidSelectBlock:nil];
    
    self.tableViewDelegates.dataArr = @[].mutableCopy;
    for (NSUInteger i =0; i<50; i++) {
        LCXSuperListViewModel *viewModel = [LCXSuperListViewModel new];
        viewModel.cellHeight = i%2?100:150;
        viewModel.celllReuseIDIndex = i%2?1:0;
        [self.tableViewDelegates.dataArr addObject:viewModel];
    }
    
    [self.lcxTableView reloadData];
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
