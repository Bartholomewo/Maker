//
//  MakerConfirmViewController.m
//  Maker
//
//  Created by ZhaoHeng on 2017/9/4.
//  Copyright © 2017年 forkingghost. All rights reserved.
//

#import "MakerConfirmViewController.h"
#import <Maker/Maker.h>

static NSString *identifier = @"identifier";

@interface MakerConfirmViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation MakerConfirmViewController {
    UITableView *_tableView;
    NSArray *_datas;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _datas = @[@"UIView", @"UILabel", @"UIButton"];
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    _tableView = [UITableView maker:mk_Plain]
    .com_setup(self.view)
    .com_frame(0, 0, screenWidth, screenHeight)
    .tab_delegateAndDataSource(self)
    .tab_tHeaderView(UIView.maker)
    .tab_tFooterView(UIView.maker)
    .tab_registerCell([UITableViewCell class], nil, identifier);
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _datas.count;
}
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    cell.textLabel.text = _datas[indexPath.row];
    return cell;
}

- (void)dealloc {
    NSLog(@"dealloc");
}


@end
