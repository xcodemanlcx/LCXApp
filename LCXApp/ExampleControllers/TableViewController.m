//
//  TableViewController.m
//  LCXUIInit
//
//  Created by leichunxiang on 2019/9/2.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "TableViewController.h"

static NSString * const kLCXUIInitCellReuseIdentifier = @"kLCXUIInitCellReuseIdentifier";

@interface TableViewController ()

@property (nonatomic, strong) NSArray *exampleControllerNames;

@end

@implementation TableViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.title = @"Examples";
        self.exampleControllerNames = @[@"ViewViewController",@"LCXTableViewController"];

    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:kLCXUIInitCellReuseIdentifier];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.exampleControllerNames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kLCXUIInitCellReuseIdentifier forIndexPath:indexPath];
    NSString *viewControllerName = self.exampleControllerNames[indexPath.row];
    cell.textLabel.text = viewControllerName;
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *viewControllerName = self.exampleControllerNames[indexPath.row];
    Class viewControllerClass = NSClassFromString(viewControllerName);
    [self.navigationController pushViewController:viewControllerClass.new  animated:YES];
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
